from dash import Dash, html, dcc, callback, Output, Input
import plotly.express as px
import pandas as pd
import json

df = pd.read_csv("datasets/merged/2ef_merged.csv")
indicadores = ["PROFICIENCIA_MT", "PROFICIENCIA_LP",
               "IN_INTERNET", "IN_BIBLIOTECA", "QT_DESKTOP_ALUNO"]
geojson = json.load(open('geojson/brasil_estados.json'))

app = Dash()

app.layout = html.Div([
    html.H1("Impacto da Infraestrutura no Desempenho Escolar",
            style={"textAlign": "center"}),

    html.Div([
        html.Label("Indicador no Mapa:"),
        dcc.Dropdown(
            indicadores,
            value='PROFICIENCIA_MT',
            id='indicador-dropdown'
        ),
    ], style={"width": "40%", "margin": "auto"}),

    html.Div([
        html.Div([
            html.H3("Mapa Interativo:", style={"textAlign": "center"}),
            dcc.Graph(id='choropleth-map', style={'height': '650px'})], style={'width': '57%', 'display': 'inline-block', 'verticalAlign': 'top'}),

        html.Div(id='kpi-cards', style={'width': '28%',
                 'display': 'inline-block', 'paddingLeft': '2%'})
    ], style={'padding': '20px'})
])


@callback(
    Output('choropleth-map', 'figure'),
    Input('indicador-dropdown', 'value')
)
def update_map(indicador):
    fig = px.choropleth(df, geojson=geojson,
                        locations='UF_NOME',
                        color=indicador,
                        color_continuous_scale="matter",
                        hover_data="UF_NOME",
                        scope='south america'
                        )
    fig.update_geos(
        center={"lat": -19.2350, "lon": -52.9253},
        projection_scale=1.7,
        visible=False
    )
    fig.update_layout(margin={"r": 0, "t": 0, "l": 0, "b": 0})
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
    Input('indicador-dropdown', 'value'),
    Input('choropleth-map', 'clickData')
)
def update_kpis(indicador, clickData):
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
            html.H4(title, style={'marginBottom': '5px'}),
            html.Div(f"{value:.2f}{suffix}", style={
                     'fontSize': '22px', 'fontWeight': 'bold'})
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


if __name__ == '__main__':
    app.run(debug=True)
