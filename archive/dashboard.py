from dash import Dash, html, dcc, callback, Output, Input
import plotly.express as px
import pandas as pd
import json

# Load geojson
geojson = json.load(open('geojson/brasil_estados.json'))

# Function to load dataset by grade
def load_data(ano):
    return pd.read_csv(f"datasets/merged/{ano}_merged.csv")

app = Dash()
# Indicators and grade levels
indicadores = ["PROFICIENCIA_MT", "PROFICIENCIA_LP", "IN_LABORATORIO_INFORMATICA", "QT_DESKTOP_ALUNO",  "QT_EQUIP_TV", "IN_EQUIP_LOUSA_DIGITAL", "QT_EQUIP_MULTIMIDIA", "QT_DESKTOP_ALUNO","QT_COMP_PORTATIL_ALUNO"]
anos = {"2º Ano": "2ef", "5º Ano": "5ef", "9º Ano": "9ef"}

app.layout = html.Div([
    html.H1("Impacto da Infraestrutura no Desempenho Escolar", style={"textAlign": "center"}),

    html.Div([
        html.Label("Ano Escolar:"),
        dcc.Dropdown(
            options=[{"label": k, "value": v} for k, v in anos.items()],
            value="2ef",
            id='ano-dropdown'
        )
    ], style={"width": "40%", "margin": "auto"}),

    html.Div([
        html.Label("Indicador no Mapa:"),
        dcc.Dropdown(
            indicadores,
            value='PROFICIENCIA_MT',
            id='indicador-dropdown'
        ),
    ], style={"width": "40%", "margin": "auto", "marginTop": "20px"}),

    html.Div([
        html.Div([
            html.H3("Mapa Interativo:", style={"textAlign": "center"}),
            dcc.Graph(id='choropleth-map', style={'height': '600px'})
        ], style={
            'width': '60%',
            'display': 'inline-block',
            'verticalAlign': 'top',
            'paddingRight': '1%'
        }),

        html.Div(id='kpi-cards', style={
            'width': '38%',
            'display': 'inline-block',
            'verticalAlign': 'top'
        })
    ], style={
        'padding': '20px',
        'display': 'flex',
        'flexWrap': 'nowrap',
        'justifyContent': 'space-between'
    }),

    html.H3("Correlação entre Equipamentos e Proficiência", style={"textAlign": "center", "marginTop": "40px"}),
    dcc.Dropdown(
        id='equipamento-dropdown',
        options=[
            {"label": "Escolas com Internet", "value": "IN_INTERNET"},
            {"label": "Escolas com Biblioteca", "value": "IN_BIBLIOTECA"},
            {"label": "Escolas com Computador", "value": "IN_COMPUTADOR"},
            {"label": "Escolas com Laboratório de Ciências", "value": "IN_LABORATORIO_CIENCIAS"},
            {"label": "Escolas com Laboratório de Informática", "value": "IN_LABORATORIO_INFORMATICA"},
            {"label": "Escolas com Lousa Digital", "value": "IN_EQUIP_LOUSA_DIGITAL"},
            {"label": "Escolas com Desktop", "value": "IN_DESKTOP_ALUNO"},
            {"label": "Escolas com Notebook", "value": "IN_COMP_PORTATIL_ALUNO"}
        ],
        value="IN_INTERNET",
        style={"width": "40%", "margin": "auto"}
    ),
    dcc.Graph(id='scatter-plot'),

    html.H3("Comparativo entre Estados Selecionados", style={"textAlign": "center", "marginTop": "40px"}),

    html.Div([
        dcc.Dropdown(
            id='estados-dropdown',
            multi=True,
            placeholder="Selecione os estados...",
            style={"width": "60%", "margin": "auto"}
        )
    ]),
    dcc.Graph(id='bar-estados'),

    html.H3("Correlação entre Indicadores (Heatmap)", style={"textAlign": "center", "marginTop": "40px"}),
    dcc.Graph(id='heatmap-corr')
])

# Choropleth Map
@callback(
    Output('choropleth-map', 'figure'),
    Input('ano-dropdown', 'value'),
    Input('indicador-dropdown', 'value')
)
def update_map(ano, indicador):
    df = load_data(ano)
    fig = px.choropleth(
        df,
        geojson=geojson,
        locations='UF_NOME',
        color=indicador,
        color_continuous_scale="matter",
        hover_data=["UF_NOME"],
        scope='south america'
    )
    fig.update_geos(
        center={"lat": -27.5, "lon": -51.5},
        projection_scale=4,
        visible=False
    )
    fig.update_layout(
        coloraxis_colorbar=dict(
            title=indicador,
            len=0.5,
            thickness=10,
            xanchor='left',
            x=0.85
        ),
        margin={"r": 0, "t": 0, "l": 0, "b": 0}
    )
    return fig

# KPI Cards
@callback(
    Output('kpi-cards', 'children'),
    Input('ano-dropdown', 'value'),
    Input('choropleth-map', 'clickData')
)
def update_kpis(ano, clickData):
    df = load_data(ano)
    if clickData:
        estado = clickData['points'][0]['location']
        df_filtrado = df[df['UF_NOME'] == estado]
        titulo = f"Indicadores de {estado}"
    else:
        df_filtrado = df
        titulo = "Indicadores Nacionais"

    prof_mt = df_filtrado["PROFICIENCIA_MT"].median()
    prof_lp = df_filtrado["PROFICIENCIA_LP"].median()
    perc_internet = df_filtrado["IN_INTERNET"].mean() * 100
    perc_biblioteca = df_filtrado["IN_BIBLIOTECA"].mean() * 100

    def kpi_block(title, value, suffix=""):
        return html.Div([
            html.H4(title),
            html.Div(f"{value:.2f}{suffix}", style={'fontSize': '22px', 'fontWeight': 'bold'})
        ], style={
            'border': '1px solid lightgray',
            'borderRadius': '10px',
            'padding': '15px',
            'marginBottom': '15px',
            'backgroundColor': '#f9f9f9'
        })

    return [
        html.H3(titulo, style={"textAlign": "center"}),
        kpi_block("Proficiência em Matemática", prof_mt),
        kpi_block("Proficiência em Língua Portuguesa", prof_lp),
        kpi_block("Escolas com Internet", perc_internet, "%"),
        kpi_block("Escolas com Biblioteca", perc_biblioteca, "%"),
    ]

# Scatter plot com linha de tendência
@callback(
    Output('scatter-plot', 'figure'),
    Input('ano-dropdown', 'value'),
    Input('equipamento-dropdown', 'value')
)
def update_scatter(ano, equipamento):
    df = load_data(ano)
    grouped = df.groupby("UF_NOME").agg({
        equipamento: "mean",
        "PROFICIENCIA_MT": "mean"
    }).reset_index()
    fig = px.scatter(
        grouped,
        x=equipamento,
        y="PROFICIENCIA_MT",
        text="UF_NOME",
        trendline="ols",
        labels={equipamento: equipamento, "PROFICIENCIA_MT": "Proficiência em Matemática"}
    )
    fig.update_traces(textposition="top center")
    fig.update_layout(height=500)
    return fig

# Gráfico de barras para estados selecionados
@callback(
    Output('bar-estados', 'figure'),
    Output('estados-dropdown', 'options'),
    Input('ano-dropdown', 'value'),
    Input('estados-dropdown', 'value')
)
def update_bar_estados(ano, estados_selecionados):
    df = load_data(ano)
    estados_disponiveis = sorted(df["UF_NOME"].unique())
    opcoes = [{"label": estado, "value": estado} for estado in estados_disponiveis]

    if not estados_selecionados:
        return px.bar(title="Selecione estados para comparar"), opcoes

    df_filtrado = df[df["UF_NOME"].isin(estados_selecionados)]
    grouped = df_filtrado.groupby("UF_NOME")[["PROFICIENCIA_MT", "IN_INTERNET", "PROFICIENCIA_LP", "QT_DESKTOP_ALUNO"]].mean().reset_index()

    fig = px.bar(
        grouped.melt(id_vars="UF_NOME", var_name="Indicador", value_name="Valor"),
        x="UF_NOME",
        y="Valor",
        color="Indicador",
        barmode="group"
    )
    fig.update_layout(height=500)
    return fig, opcoes

# Heatmap de correlação
indicadores_heat = ["PROFICIENCIA_MT", "PROFICIENCIA_LP", "IN_INTERNET", "IN_LABORATORIO_INFORMATICA","IN_COMPUTADOR", "IN_EQUIP_IMPRESSORA"]
@callback(
    Output('heatmap-corr', 'figure'),
    Input('ano-dropdown', 'value')
)
def update_heatmap(ano):
    df = load_data(ano)
    corr = df[indicadores_heat].corr()
    fig = px.imshow(corr, text_auto=True, color_continuous_scale="RdBu", zmin=-1, zmax=1)
    fig.update_layout(height=500)
    return fig

if __name__ == '__main__':
    app.run(debug=True)
