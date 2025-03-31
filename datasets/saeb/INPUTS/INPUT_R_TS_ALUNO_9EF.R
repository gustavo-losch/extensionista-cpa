# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_ALUNO_9EF                                                  */
# /*-------------------------------------------------------------------------------------*/
# /* DESCRICAO:     PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                   */
# /*                     9º ANO DO ENSINO FUNDAMENTAL DO SAEB 2021                       */
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
#setwd('C:/')

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_ALUNO_9EF <- data.table::fread(input='TS_ALUNO_9EF.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------

# TS_ALUNO_9EF$ID_REGIAO <-
#   factor (
#     TS_ALUNO_9EF$ID_REGIAO,
#     levels = c (1, 2, 3, 4, 5),
#     labels = c('Norte', 'Nordeste', 'Sudeste', 'Sul', 'Centro-Oeste')
#   )
# 
# TS_ALUNO_9EF$ID_UF <-
#   factor (
#     TS_ALUNO_9EF$ID_UF,
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
# TS_ALUNO_9EF$ID_AREA <-
#   factor (
#     TS_ALUNO_9EF$ID_AREA,
#     levels = c (1, 2),
#     labels = c('Capital', 'Interior')
#   )
# 
# TS_ALUNO_9EF$IN_PUBLICA <-
#   factor (
#     TS_ALUNO_9EF$IN_PUBLICA,
#     levels = c (0, 1),
#     labels = c('Privada', 'Pública')
#   )
# 
# TS_ALUNO_9EF$ID_LOCALIZACAO <-
#   factor (
#     TS_ALUNO_9EF$ID_LOCALIZACAO,
#     levels = c (1, 2),
#     labels = c('Urbana', 'Rural')
#   )
# 
# TS_ALUNO_9EF$ID_SERIE <-
#   factor (
#     TS_ALUNO_9EF$ID_SERIE,
#     levels = c (9),
#     labels = c('9º ano Ensino Fundamental')
#   )
# 
# TS_ALUNO_9EF$IN_SITUACAO_CENSO <-
#   factor (
#     TS_ALUNO_9EF$IN_SITUACAO_CENSO,
#     levels = c (0, 1),
#     labels = c('Não consistente', 'Consistente')
#   )
# 
# TS_ALUNO_9EF$IN_PREENCHIMENTO_LP <-
#   factor (
#     TS_ALUNO_9EF$IN_PREENCHIMENTO_LP,
#     levels = c (0, 1),
#     labels = c('Prova não preenchida', 'Prova preenchida')
#   )
# 
# TS_ALUNO_9EF$IN_PREENCHIMENTO_MT <-
#   factor (
#     TS_ALUNO_9EF$IN_PREENCHIMENTO_MT,
#     levels = c (0, 1),
#     labels = c('Prova não preenchida', 'Prova preenchida')
#   )
# 
# TS_ALUNO_9EF$IN_PREENCHIMENTO_CH <-
#   factor (
#     TS_ALUNO_9EF$IN_PREENCHIMENTO_CH,
#     levels = c (0, 1),
#     labels = c('Prova não preenchida', 'Prova preenchida')
#   )
# 
# TS_ALUNO_9EF$IN_PREENCHIMENTO_CN <-
#   factor (
#     TS_ALUNO_9EF$IN_PREENCHIMENTO_CN,
#     levels = c (0, 1),
#     labels = c('Prova não preenchida', 'Prova preenchida')
#   )
# 
# TS_ALUNO_9EF$IN_PRESENCA_LP <-
#   factor (
#     TS_ALUNO_9EF$IN_PRESENCA_LP,
#     levels = c (0, 1),
#     labels = c('Ausente', 'Presente')
#   )
# 
# TS_ALUNO_9EF$IN_PRESENCA_MT <-
#   factor (
#     TS_ALUNO_9EF$IN_PRESENCA_MT,
#     levels = c (0, 1),
#     labels = c('Ausente', 'Presente')
#   )
# 
# TS_ALUNO_9EF$IN_PRESENCA_CH <-
#   factor (
#     TS_ALUNO_9EF$IN_PRESENCA_CH,
#     levels = c (0, 1),
#     labels = c('Ausente', 'Presente')
#   )
# 
# TS_ALUNO_9EF$IN_PRESENCA_CN <-
#   factor (
#     TS_ALUNO_9EF$IN_PRESENCA_CN,
#     levels = c (0, 1),
#     labels = c('Ausente', 'Presente')
#   )
# 
# TS_ALUNO_9EF$CO_CONCEITO_Q1_CH <-
#   factor (
#     TS_ALUNO_9EF$CO_CONCEITO_Q1_CH,
#     levels = c ('0', '1', '2', '7', '.'),
#     labels = c(
#       'Nenhum crédito',
#       'Crédito parcial',
#       'Crédito total',
#       'Erros de impressão ou digitalização',
#       'Branco'
#     )
#   )
# 
# TS_ALUNO_9EF$CO_CONCEITO_Q2_CH <-
#   factor (
#     TS_ALUNO_9EF$CO_CONCEITO_Q2_CH,
#     levels = c ('0', '1', '2', '7', '.'),
#     labels = c(
#       'Nenhum crédito',
#       'Crédito parcial',
#       'Crédito total',
#       'Erros de impressão ou digitalização',
#       'Branco'
#     )
#   )
# 
# 
# TS_ALUNO_9EF$CO_CONCEITO_Q1_CN <-
#   factor (
#     TS_ALUNO_9EF$CO_CONCEITO_Q1_CN,
#     levels = c ('0', '1', '2', '7', '.'),
#     labels = c(
#       'Nenhum crédito',
#       'Crédito parcial',
#       'Crédito total',
#       'Erros de impressão ou digitalização',
#       'Branco'
#     )
#   )
# 
# TS_ALUNO_9EF$CO_CONCEITO_Q2_CN <-
#   factor (
#     TS_ALUNO_9EF$CO_CONCEITO_Q2_CN,
#     levels = c ('0', '1', '2', '7', '.'),
#     labels = c(
#       'Nenhum crédito',
#       'Crédito parcial',
#       'Crédito total',
#       'Erros de impressão ou digitalização',
#       'Branco'
#     )
#   )
# 
# 
# TS_ALUNO_9EF$IN_PROFICIENCIA_LP <-
#   factor (
#     TS_ALUNO_9EF$IN_PROFICIENCIA_LP,
#     levels = c (0, 1),
#     labels = c('Não', 'Sim')
#   )
# 
# TS_ALUNO_9EF$IN_PROFICIENCIA_MT <-
#   factor (
#     TS_ALUNO_9EF$IN_PROFICIENCIA_MT,
#     levels = c (0, 1),
#     labels = c('Não', 'Sim')
#   )
# 
# TS_ALUNO_9EF$IN_PROFICIENCIA_CH <-
#   factor (
#     TS_ALUNO_9EF$IN_PROFICIENCIA_CH,
#     levels = c (0, 1),
#     labels = c('Não', 'Sim')
#   )
# 
# TS_ALUNO_9EF$IN_PROFICIENCIA_CN <-
#   factor (
#     TS_ALUNO_9EF$IN_PROFICIENCIA_CN,
#     levels = c (0, 1),
#     labels = c('Não', 'Sim')
#   )
# 
# TS_ALUNO_9EF$IN_AMOSTRA <-
#   factor (TS_ALUNO_9EF$IN_AMOSTRA,
#           levels = c (0, 1),
#           labels = c('Não' , 'Sim'))
# 
# TS_ALUNO_9EF$IN_INSE <-
#   factor (
#     TS_ALUNO_9EF$IN_PREENCHIMENTO_QUESTIONARIO,
#     levels = c (0, 1),
#     labels = c('Não', 'Sim')
#   )
# 
# TS_ALUNO_9EF$NU_TIPO_NIVEL_INSE <-
#   factor (
#     TS_ALUNO_9EF$NU_TIPO_NIVEL_INSE,
#     levels = c (1, 2, 3, 4, 5, 6, 7, 8),
#     labels = c(
#       'Nível I',
#       'Nível II',
#       'Nível III',
#       'Nível IV',
#       'Nível V',
#       'Nível VI',
#       'Nível VII',
#       'Nível VIII'
#     )
#   )
# 
# TS_ALUNO_9EF$IN_PREENCHIMENTO_QUESTIONARIO <-
#   factor (
#     TS_ALUNO_9EF$IN_PREENCHIMENTO_QUESTIONARIO,
#     levels = c (0, 1),
#     labels = c('Não preenchido', 'Preenchido parcial ou totalmente')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q01 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q01,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Masculino.', 'Feminino.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q02 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q02,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       '13 anos ou menos.',
#       '14 anos.',
#       '15 anos.',
#       '16 anos.',
#       '17 anos.',
#       '18 anos ou mais.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q03 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q03,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Português.', 'Espanhol.', 'Outra língua.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q04 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q04,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Branca.',
#       'Preta.',
#       'Parda.',
#       'Amarela.',
#       'Indígena.',
#       'Não quero declarar.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q05 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q05,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Sim.', 'Não.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q06a <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q06a,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q06b <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q06b,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q06c <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q06c,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q06d <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q06d,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q06e <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q06e,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q07 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q07,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não completou o 5º ano do Ensino Fundamental.',
#       'Ensino Fundamental, até o 5º ano.',
#       'Ensino Fundamental completo.',
#       'Ensino Médio completo.',
#       'Ensino Superior completo (faculdade ou graduação).',
#       'Não sei.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q08 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q08,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não completou o 5º ano do Ensino Fundamental.',
#       'Ensino Fundamental, até o 5º ano.',
#       'Ensino Fundamental completo.',
#       'Ensino Médio completo.',
#       'Ensino Superior completo (faculdade ou graduação).',
#       'Não sei.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q09a <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q09a,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q09b <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q09b,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q09c <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q09c,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q09d <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q09d,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q09e <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q09e,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q09f <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q09f,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q10a <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q10a,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q10b <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q10b,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q10c <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q10c,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11a <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11a,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11b <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11b,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11c <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11c,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11d <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11d,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11e <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11e,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11f <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11f,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11g <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11g,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q11h <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q11h,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhum.', '1.', '2.', '3 ou mais.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12a <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12a,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12b <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12b,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12c <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12c,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12d <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12d,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12e <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12e,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12f <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12f,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12g <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12g,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12h <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12h,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q12i <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q12i,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q13 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q13,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Menos de 30 minutos.',
#       'Entre 30 minutos e uma hora.',
#       'Mais de uma hora.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q14 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q14,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F', 'G'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'À pé.',
#       'De bicicleta.',
#       'De Van (ou Kombi).',
#       'De ônibus.',
#       'De metrô (ou trem urbano).',
#       'De carro.',
#       'Outros meios de transporte (barco, motocicleta, etc.)'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q15 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q15,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q16 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q16,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       '3 anos ou menos.',
#       '4 ou 5 anos.',
#       '6 ou 7 anos.',
#       '8 anos ou mais.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q17 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q17,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Somente em escola pública.',
#       'Somente em escola particular.',
#       'Em escola pública e em escola particular.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q18 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q18,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não.',
#       'Sim, uma vez.',
#       'Sim, duas vezes ou mais.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q19 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q19,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Sim, uma vez.',
#       'Sim, duas vezes ou mais.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q20a <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q20a,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não uso meu tempo para isso.',
#       'Menos de 1 hora.',
#       'Entre 1 e 2 horas.',
#       'Mais de 2 horas.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q20b <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q20b,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não uso meu tempo para isso.',
#       'Menos de 1 hora.',
#       'Entre 1 e 2 horas.',
#       'Mais de 2 horas.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q20c <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q20c,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não uso meu tempo para isso.',
#       'Menos de 1 hora.',
#       'Entre 1 e 2 horas.',
#       'Mais de 2 horas.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q20d <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q20d,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não uso meu tempo para isso.',
#       'Menos de 1 hora.',
#       'Entre 1 e 2 horas.',
#       'Mais de 2 horas.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q20e <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q20e,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não uso meu tempo para isso.',
#       'Menos de 1 hora.',
#       'Entre 1 e 2 horas.',
#       'Mais de 2 horas.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q21 <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q21,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Somente continuar estudando.',
#       'Somente trabalhar.',
#       'Continuar estudando e trabalhar.',
#       'Ainda não sei.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22a <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22a,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22b <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22b,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22c <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22c,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22d <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22d,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22e <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22e,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22f <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22f,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22g <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22g,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22h <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22h,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
# 
# TS_ALUNO_9EF$TX_RESP_Q22i <-
#   factor (
#     TS_ALUNO_9EF$TX_RESP_Q22i,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'De vez em quando.',
#       'Várias vezes',
#       'Sempre.'
#     )
#   )
