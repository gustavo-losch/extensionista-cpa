from dash import Dash, html, dcc, callback, Output, Input
import plotly.express as px
import pandas as pd
import json

# --- Load geojson
geojson = json.load(open('geojson/brasil_estados.json'))

# --- Função para carregar dataset por ano
def load_data(ano):
    return pd.read_csv(f"datasets/merged/{ano}_merged.csv")

# --- Iniciar app
app = Dash()

# --- Lista de indicadores e anos
indicadores = ["PROFICIENCIA_MT", "PROFICIENCIA_LP", "IN_INTERNET", "IN_BIBLIOTECA", "QT_DESKTOP_ALUNO"]
anos = {"2º Ano": "2ef", "5º Ano": "5ef", "9º Ano": "9ef"}

# --- Layout
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
        'boxSizing': 'border-box',
        'paddingRight': '1%'
    }),

    html.Div(id='kpi-cards', style={
        'width': '38%',
        'display': 'inline-block',
        'verticalAlign': 'top',
        'boxSizing': 'border-box'
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
            {"label": "Desktops por aluno", "value": "QT_DESKTOP_ALUNO"}
        ],
        value="IN_INTERNET",
        style={"width": "40%", "margin": "auto"}
    ),
    dcc.Graph(id='scatter-plot')
])

# --- Callbacks
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

@callback(
    Output('scatter-plot', 'figure'),
    Input('ano-dropdown', 'value'),
    Input('equipamento-dropdown', 'value')
)
def update_scatter(ano, equipamento):
    df = load_data(ano)
    fig = px.scatter(
        df,
        x=equipamento,
        y="PROFICIENCIA_MT",
        trendline="ols",
        hover_name="UF_NOME",
        labels={equipamento: equipamento, "PROFICIENCIA_MT": "Proficiência em Matemática"}
    )
    fig.update_layout(height=500)
    return fig

# --- Run
if __name__ == '__main__':
    app.run(debug=True)
