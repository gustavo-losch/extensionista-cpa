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
indicadores = ["PROFICIENCIA_MT", "PROFICIENCIA_LP", "IN_LABORATORIO_INFORMATICA", "IN_COMPUTADOR", "QT_DESKTOP_ALUNO",  "QT_EQUIP_TV", "IN_EQUIP_LOUSA_DIGITAL", "QT_EQUIP_MULTIMIDIA", "QT_DESKTOP_ALUNO","QT_COMP_PORTATIL_ALUNO"]
anos = {"2º Ano": "2ef", "5º Ano": "5ef", "9º Ano": "9ef"}

app.layout = html.Div([
    html.H1("Impacto da Infraestrutura no Desempenho Escolar", style={"textAlign": "center"}),

    # Dropdowns
    html.Div([
        html.Div([
            html.Label("Ano Escolar:"),
            dcc.Dropdown(
                options=[{"label": k, "value": v} for k, v in anos.items()],
                value="9ef",
                id='ano-dropdown'
            )
        ], style={"width": "30%", "marginRight": "2%"}),

        html.Div([
            html.Label("Indicador no Mapa:"),
            dcc.Dropdown(
                indicadores,
                value='PROFICIENCIA_MT',
                id='indicador-dropdown'
            ),
        ], style={"width": "30%", "marginRight": "2%"}),

        html.Div([
            html.Label("Dependência Administrativa:"),
            dcc.Dropdown(
                options=[
                    {"label": "Todas", "value": "Todas"},
                    {"label": "Pública", "value": "Publica"},
                    {"label": "Privada", "value": "Privada"}
                ],
                value="Todas",
                id='dependencia-dropdown',
                placeholder="Filtrar por dependência..."
            )
        ], style={"width": "30%"})
    ], style={
        "display": "flex",
        "justifyContent": "center",
        "alignItems": "flex-end",
        "width": "90%",
        "margin": "0 auto 20px auto"
    }),

    # Mapa e KPIs
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

    html.H4("Atributo a ser comparado", style={"textAlign": "center", "marginTop": "40px"}),

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

    html.Div([
        html.Div([
            html.H4("Infraestrutura vs Proficiência", style={"textAlign": "center"}),
            dcc.Graph(id='scatter-plot')
        ], style={'width': '49%', 'display': 'inline-block', 'paddingRight': '1%'}),

        html.Div([
            html.H4("Correlação entre Indicadores", style={"textAlign": "center"}),
            dcc.Graph(id='heatmap-corr')
        ], style={'width': '49%', 'display': 'inline-block'})
    ], style={
        'padding': '20px',
        'display': 'flex',
        'flexWrap': 'nowrap',
        'justifyContent': 'space-between',
        'marginTop': '40px'
    }),

    html.H3("Comparativo entre Estados Selecionados", style={"textAlign": "center", "marginTop": "40px"}),

    html.Div([
        dcc.Dropdown(
            id='estados-dropdown',
            multi=True,
            placeholder="Selecione os estados...",
            value=["RS", "SP"],
            style={"width": "60%", "margin": "auto"}
        )
    ]),
    
    dcc.Graph(id='bar-estados')
])

# ==== CALLBACKS ====

@callback(
    Output('choropleth-map', 'figure'),
    Input('ano-dropdown', 'value'),
    Input('indicador-dropdown', 'value'),
    Input('dependencia-dropdown', 'value')
)
def update_map(ano, indicador, dependencia):
    df = load_data(ano)
    if dependencia != "Todas":
        df = df[df['DEPENDENCIA_NOME'] == dependencia]

    fig = px.choropleth(
        df,
        geojson=geojson,
        locations='UF_NOME',
        color=indicador,
        color_continuous_scale="matter",
        hover_data=["UF_NOME"],
        scope='south america'
    )
    fig.update_geos(center={"lat": -19.2350, "lon": -52.9253}, projection_scale=1.7, visible=False)
    fig.update_layout(margin={"r":0,"t":0,"l":0,"b":0}, coloraxis_colorbar=dict(title=indicador, len=0.5, thickness=10, x=0.85))
    return fig

@callback(
    Output('kpi-cards', 'children'),
    Input('ano-dropdown', 'value'),
    Input('choropleth-map', 'clickData'),
    Input('dependencia-dropdown', 'value')
)
def update_kpis(ano, clickData, dependencia):
    df = load_data(ano)
    if dependencia != "Todas":
        df = df[df['DEPENDENCIA_NOME'] == dependencia]

    if clickData:
        estado = clickData['points'][0]['location']
        df_filtrado = df[df['UF_NOME'] == estado]
        titulo = f"Indicadores de {estado}"
    else:
        df_filtrado = df
        titulo = "Indicadores Nacionais"

    def kpi_block(title, value, suffix=""):
        return html.Div([
            html.H4(title),
            html.Div(f"{value:.2f}{suffix}", style={'fontSize': '22px', 'fontWeight': 'bold'})
        ], style={'border': '1px solid lightgray', 'borderRadius': '10px', 'padding': '15px', 'marginBottom': '15px', 'backgroundColor': '#f9f9f9'})

    return [
        html.H3(titulo, style={"textAlign": "center"}),
        kpi_block("Proficiência em Matemática", df_filtrado["PROFICIENCIA_MT"].mean()),
        kpi_block("Proficiência em Língua Portuguesa", df_filtrado["PROFICIENCIA_LP"].mean()),
        kpi_block("Escolas com Internet", df_filtrado["IN_INTERNET"].mean() * 100, "%"),
        kpi_block("Escolas com Computador", df_filtrado["IN_COMPUTADOR"].mean() * 100, "%")
    ]

@callback(
    Output('scatter-plot', 'figure'),
    Input('ano-dropdown', 'value'),
    Input('equipamento-dropdown', 'value'),
    Input('dependencia-dropdown', 'value')
)
def update_scatter(ano, equipamento, dependencia):
    df = load_data(ano)
    if dependencia != "Todas":
        df = df[df['DEPENDENCIA_NOME'] == dependencia]

    grouped = df.groupby("UF_NOME").agg({equipamento: "mean", "PROFICIENCIA_MT": "mean"}).reset_index()
    grouped = grouped.dropna(subset=[equipamento, "PROFICIENCIA_MT"])
    return px.scatter(
        grouped, x=equipamento, y="PROFICIENCIA_MT", color="PROFICIENCIA_MT",
        color_continuous_scale="matter", text="UF_NOME", trendline="ols"
    ).update_traces(textposition="top center").update_layout(height=500).update_coloraxes(showscale=False)

@callback(
    Output('bar-estados', 'figure'),
    Output('estados-dropdown', 'options'),
    Input('ano-dropdown', 'value'),
    Input('estados-dropdown', 'value'),
    Input('dependencia-dropdown', 'value')
)
def update_bar_estados(ano, estados_selecionados, dependencia):
    df = load_data(ano)
    if dependencia != "Todas":
        df = df[df['DEPENDENCIA_NOME'] == dependencia]

    estados_disponiveis = sorted(df["UF_NOME"].unique())
    opcoes = [{"label": estado, "value": estado} for estado in estados_disponiveis]
    if not estados_selecionados:
        return px.bar(), opcoes
    df_filtrado = df[df["UF_NOME"].isin(estados_selecionados)]
    grouped = df_filtrado.groupby("UF_NOME")[["PROFICIENCIA_MT", "IN_INTERNET", "PROFICIENCIA_LP", "IN_DESKTOP_ALUNO", "IN_COMPUTADOR"]].mean().reset_index()
    fig = px.bar(grouped.melt(id_vars="UF_NOME", var_name="Indicador", value_name="Valor"),
                 x="UF_NOME", y="Valor", color="Indicador", barmode="group")
    fig.update_layout(height=500)
    return fig, opcoes

@callback(
    Output('heatmap-corr', 'figure'),
    Input('ano-dropdown', 'value'),
    Input('dependencia-dropdown', 'value')
)
def update_heatmap(ano, dependencia):
    indicadores_heat = ["PROFICIENCIA_MT", "PROFICIENCIA_LP", "IN_INTERNET", "IN_LABORATORIO_INFORMATICA","IN_COMPUTADOR", "IN_EQUIP_IMPRESSORA"]
    df = load_data(ano)
    if dependencia != "Todas":
        df = df[df['DEPENDENCIA_NOME'] == dependencia]

    corr = df[indicadores_heat].corr()
    return px.imshow(corr, text_auto=True, color_continuous_scale="RdBu", zmin=-1, zmax=1).update_layout(height=500)

if __name__ == '__main__':
    app.run(debug=True)
