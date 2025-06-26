# Trabalho Extensionista | CPA

#### Gustavo Losch, Henrique Mayer e Rian Cordoni
Trabalho extensionista para a disciplina de Coleta, Preparação e Análise de Dados utilizando os dados abertos do MEC, INEP e FNDE


## Questão de Pesquisa 
Existe associação entre a presença de equipamentos tecnológicos nas escolas e o desempenho dos alunos no 2º, 5º e 9º ano do Ensino Fundamental nos estados do Brasil em 2023?


#### Quando: 
Serão realizadas duas apresentações parciais e uma apresentação final do trabalho.
- Fase 1 (20% da nota): Entendimento dos Dados – Apresentação da questão de pesquisa
e etapa de seleção dos dados.
- Fase 2 (30% da nota): Entendimento dos Dados e Preparação – Apresentação de uma
análise estatística e do planejamento da integração e limpeza dos dados. Entrega do
relatório parcial e apresentação descrevendo a fase de compreensão dos dados CRISP.
- Fase 3 (50% da nota): Preparação dos Dados e Apresentação dos dashboards. Entrega
do relatório final e apresentação descrevendo a preparação dos dados e as análise explo-
ratórias.

---

#### Instruções para a visualização do dashboard:

- Crie um ambiente virtual com o Python na versão `3.10`:
```shell
conda create --name dashboard python=3.10
conda activate dashboard
```

- Instale as bibliotecas necessárias para execução do dashboard:
```shell
pip install pandas plotly dash statsmodels
```

- Execute o script `archive/dashboard.py`
```shell
python archive/dashboard.py
```

- Acesse a página [localhost:8050](http://localhost:8050) em seu navegador.

---


Links dos datasets: [Microdados do INEP](https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados), [Dados Abertos MEC](https://dados.gov.br/dados/organizacoes/visualizar/ministerio-da-educacao), [Dados Abetos FNDE](https://dados.gov.br/dados/organizacoes/visualizar/fundo-nacional-de-desenvolvimento-da-educacao)
