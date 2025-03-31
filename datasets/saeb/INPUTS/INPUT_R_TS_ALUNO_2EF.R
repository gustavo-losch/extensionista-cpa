# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_ALUNO_2EF                                                  */
# /*-------------------------------------------------------------------------------------*/
# /* DESCRICAO:     PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                   */
# /*                     2º ANO DO ENSINO FUNDAMENTAL DO SAEB 2021                       */
# /***************************************************************************************/
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_ALUNO_9EF.CSV no diretório C:\ do computador.	                                   */
# /*							                                                                       */ 
# /* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
# /* as variáveis de interesse.                                                          */
# /***************************************************************************************/
# /*                                  ATENÇÃO                                            */ 
# /***************************************************************************************/
# /* Este programa abre a base de dados com os rótulos das variáveis de	                 */
# /* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
# /* os dados sem os rótulos, basta importar diretamente no R, executando                */
# /* o programa apenas até a carga dos microdados.                                       */
# /* 							                                                                       */                                                         
# /***************************************************************************************/;
# 
# --------------------
# Intalação do pacote Data.Table
# (Se não estiver instalado 
# --------------------
 if(!require(data.table)){install.packages('data.table')}

#--------------------
# Caso deseje trocar o local do arquivo, edite a função setwd() a seguir
# informando o local do arquivo.
# Ex. Windows setwd("C:/temp")
#     Linux   setwd("/home")
#--------------------
setwd('C:/')

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_ALUNO_2EF <- data.table::fread(input='TS_ALUNO_2EF.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------

# TS_ALUNO_2EF$ID_REGIAO <-
#   factor (
#     TS_ALUNO_2EF$ID_REGIAO,
#     levels = c (1, 2, 3, 4, 5),
#     labels = c('Norte', 'Nordeste', 'Sudeste', 'Sul', 'Centro-Oeste')
#   )
# 
# TS_ALUNO_2EF$ID_UF <-
#   factor (
#     TS_ALUNO_2EF$ID_UF,
#     levels = c (
#       11,
#       12,
#       13,
#       14,
#       15,
#       16,
#       17,
#       21,
#       22,
#       23,
#       24,
#       25,
#       26,
#       27,
#       28,
#       29,
#       31,
#       32,
#       33,
#       35,
#       41,
#       42,
#       43,
#       50,
#       51,
#       52,
#       53
#     ),
#     labels = c(
#       'RO',
#       'AC',
#       'AM',
#       'RR',
#       'PA',
#       'AP',
#       'TO',
#       'MA',
#       'PI',
#       'CE',
#       'RN',
#       'PB',
#       'PE',
#       'AL',
#       'SE',
#       'BA',
#       'MG',
#       'ES',
#       'RJ',
#       'SP',
#       'PR',
#       'SC',
#       'RS',
#       'MS',
#       'MT',
#       'GO',
#       'DF'
#     )
#   )
# 
# TS_ALUNO_2EF$ID_AREA <-
#   factor (
#     TS_ALUNO_2EF$ID_AREA,
#     levels = c (1, 2),
#     labels = c('Capital', 'Interior')
#   )
# 
# TS_ALUNO_2EF$IN_PUBLICA <-
#   factor (
#     TS_ALUNO_2EF$IN_PUBLICA,
#     levels = c (0, 1),
#     labels = c('Privada', 'Pública')
#   )
# 
# TS_ALUNO_2EF$ID_LOCALIZACAO <-
#   factor (
#     TS_ALUNO_2EF$ID_LOCALIZACAO,
#     levels = c (1, 2),
#     labels = c('Urbana', 'Rural')
#   )
# 
# TS_ALUNO_2EF$ID_SERIE <-
#   factor (
#     TS_ALUNO_2EF$ID_SERIE,
#     levels = c (2),
#     labels = c('2º Ano do Ensino Fundamental')
#   )
# 
# TS_ALUNO_2EF$IN_SITUACAO_CENSO <-
#   factor (
#     TS_ALUNO_2EF$IN_SITUACAO_CENSO,
#     levels = c (0, 1),
#     labels = c('Não consistente', 'Consistente')
#   )
# 
# TS_ALUNO_2EF$IN_PREENCHIMENTO_LP <-
#   factor (
#     TS_ALUNO_2EF$IN_PREENCHIMENTO_LP,
#     levels = c (0, 1),
#     labels = c('Prova não preenchida', 'Prova preenchida')
#   )
# 
# TS_ALUNO_2EF$IN_PREENCHIMENTO_MT <-
#   factor (
#     TS_ALUNO_2EF$IN_PREENCHIMENTO_MT,
#     levels = c (0, 1),
#     labels = c('Prova não preenchida', 'Prova preenchida')
#   )
# 
# TS_ALUNO_2EF$IN_PRESENCA_LP <-
#   factor (
#     TS_ALUNO_2EF$IN_PRESENCA_LP,
#     levels = c (0, 1),
#     labels = c('Ausente', 'Presente')
#   )
# 
# TS_ALUNO_2EF$IN_PRESENCA_MT <-
#   factor (
#     TS_ALUNO_2EF$IN_PRESENCA_MT,
#     levels = c (0, 1),
#     labels = c('Ausente', 'Presente')
#   )
# 
# TS_ALUNO_2EF$CO_CONCEITO_Q1_LP <-
#   factor (
#     TS_ALUNO_2EF$CO_CONCEITO_Q1_LP,
#     levels = c ('A', 'B', 'C', 'D', 'IP'),
#     labels = c(
#       'Escrita ortográfica',
#       'Escrita alfabética',
#       'Escrita silábico-alfabética ou silábica com valor sonoro',
#       'Branco e nulo',
#       'Imagem com problema'
#     )
#   )
# 
# TS_ALUNO_2EF$CO_CONCEITO_Q2_LP <-
#   factor (
#     TS_ALUNO_2EF$CO_CONCEITO_Q2_LP,
#     levels = c ('A', 'B', 'C', 'D', 'IP'),
#     labels = c(
#       'Escrita ortográfica',
#       'Escrita alfabética',
#       'Escrita silábico-alfabética ou silábica com valor sonoro',
#       'Branco e nulo',
#       'Imagem com problema'
#     )
#   )
# 
# TS_ALUNO_2EF$CO_RESPOSTA_TEXTO <-
#   factor (
#     TS_ALUNO_2EF$CO_RESPOSTA_TEXTO,
#     levels = c ('BR', 'NL', 'TX'),
#     labels = c('Branco', 'Nulo', 'Texto')
#   )
# 
# TS_ALUNO_2EF$CO_CONCEITO_PROPOSITO <-
#   factor (
#     TS_ALUNO_2EF$CO_CONCEITO_PROPOSITO,
#     levels = c ('A', 'B', '.', '*'),
#     labels = c('A', 'B', 'Branco', 'Nulo')
#   )
# 
# TS_ALUNO_2EF$CO_CONCEITO_ELEMENTO <-
#   factor (
#     TS_ALUNO_2EF$CO_CONCEITO_ELEMENTO,
#     levels = c ('A1', 'A2', 'B', 'C', '.', '*'),
#     labels = c('A1', 'A2', 'B', 'C', 'Branco', 'Nulo')
#   )
# 
# TS_ALUNO_2EF$CO_CONCEITO_SEGMENTACAO <-
#   factor (
#     TS_ALUNO_2EF$CO_CONCEITO_SEGMENTACAO,
#     levels = c ('A', 'B', 'C', '.', '*'),
#     labels = c('A', 'B', 'C', 'Branco', 'Nulo')
#   )
# 
# TS_ALUNO_2EF$CO_TEXTO_GRAFIA <-
#   factor (
#     TS_ALUNO_2EF$CO_TEXTO_GRAFIA,
#     levels = c ('A', 'B', '.', '*'),
#     labels = c('A', 'B', 'Branco', 'Nulo')
#   )
# 
# TS_ALUNO_2EF$CO_CONCEITO_Q1_MT <-
#   factor (
#     TS_ALUNO_2EF$CO_CONCEITO_Q1_MT,
#     levels = c ('2', '20', '21', '22', '23', '24', '11', '12', '13', '0', '7', '.'),
#     labels = c(
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito parcial',
#       'Crédito parcial',
#       'Crédito parcial',
#       'Nenhum crédito',
#       'Erros de impressão ou digitalização',
#       'Em branco'
#     )
#   )
# 
# TS_ALUNO_2EF$CO_CONCEITO_Q2_MT <-
#   factor (
#     TS_ALUNO_2EF$CO_CONCEITO_Q2_MT,
#     levels = c ('2', '20', '21', '22', '23', '24', '11', '12', '13', '0', '7', '.'),
#     labels = c(
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito completo',
#       'Crédito parcial',
#       'Crédito parcial',
#       'Crédito parcial',
#       'Nenhum crédito',
#       'Erros de impressão ou digitalização',
#       'Em branco'
#     )
#   )
# 
# TS_ALUNO_2EF$IN_PROFICIENCIA_LP <-
#   factor (
#     TS_ALUNO_2EF$IN_PROFICIENCIA_LP,
#     levels = c (0, 1),
#     labels = c('Não' , 'Sim')
#   )
# 
# TS_ALUNO_2EF$IN_PROFICIENCIA_MT <-
#   factor (
#     TS_ALUNO_2EF$IN_PROFICIENCIA_MT,
#     levels = c (0, 1),
#     labels = c('Não' , 'Sim')
#   )
# 
# TS_ALUNO_2EF$IN_AMOSTRA <-
#   factor (TS_ALUNO_2EF$IN_AMOSTRA,
#           levels = c (0, 1),
#           labels = c('Não' , 'Sim'))