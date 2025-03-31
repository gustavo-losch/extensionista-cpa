# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*              INPUT_R_TS_PROFESSOR                                                   */
# /*-------------------------------------------------------------------------------------*/
# /*  DESCRICAO:  PROGRAMA PARA LEITURA DOS QUESTIONÁRIOS DOS PROFESSORES DO SAEB 2021   */
# /*                                                                                     */
# /***************************************************************************************/
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_PROFESSOR.CSV no diretório C:\ do computador.	                                   */
# /*							                                                                       */ 
# /* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
# /* as variáveis de interesse.                                                          */
# /***************************************************************************************/
# /*                                  ATENÇÃO                                            */ 
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
setwd('W:\\DADOS\\SAEB\\2021\\Microdados\\Ensino Fundamental e médio\\DADOS\\')

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_PROFESSOR <- data.table::fread(input='TS_PROFESSOR.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------


# TS_PROFESSOR$ID_REGIAO <- factor (TS_PROFESSOR$ID_REGIAO, levels = c (1,2,3,4,5),
#                                   labels = c( 'Norte', 'Nordeste', 'Sudeste', 'Sul', 'Centro-Oeste'))
# 
# TS_PROFESSOR$ID_UF <- factor (TS_PROFESSOR$ID_UF, levels = c (11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53),
#                               labels = c( 'RO', 'AC', 'AM', 'RR', 'PA', 'AP', 'TO', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'MG', 'ES', 'RJ', 'SP', 'PR', 'SC', 'RS', 'MS', 'MT', 'GO', 'DF'))
# 
# TS_PROFESSOR$ID_AREA <- factor (TS_PROFESSOR$ID_AREA, levels = c (0,1),
#                                 labels = c( 'Interior', 'Capital'))
# 
# TS_PROFESSOR$IN_PUBLICA <- factor (TS_PROFESSOR$IN_PUBLICA, levels = c (0,1),
#                                            labels = c('Privada', 'Pública'))
# 
# TS_PROFESSOR$ID_LOCALIZACAO <- factor (TS_PROFESSOR$ID_LOCALIZACAO, levels = c (1,2),
#                                        labels = c('Urbana','Rural'))
# 
# TS_PROFESSOR$ID_SERIE <- factor (TS_PROFESSOR$ID_SERIE, levels = c (5,9,12,13),
#                                  labels = c('5º ano do Ensino Fundamental','9º ano do Ensino Fundamental','3ª/4ª séries do Ensino Médio Tradicional','3ª/4ª séries do Ensino Médio Integrado'))
# 
# TS_PROFESSOR$IN_PREENCHIMENTO_QUESTIONARIO <- factor (TS_PROFESSOR$IN_PREENCHIMENTO_QUESTIONARIO, levels = c (0,1),
#                                                       labels = c('Não preenchido','Preenchido parcial ou totalmente'))
# 
# TS_PROFESSOR$SQ_QUESTIONARIO <- factor (TS_PROFESSOR$SQ_QUESTIONARIO, levels = c (1,2,3),
#                                                       labels = c('Língua Portuguesa','Matemática', 'Reserva'))
# 
# TS_PROFESSOR$IN_PREENCHIMENTO_OUTRA_TURMA <- factor (TS_PROFESSOR$IN_PREENCHIMENTO_OUTRA_TURMA, levels = c (0, 1),
#                                         labels = c('Não', 'Sim'))
# 
# TS_PROFESSOR$TX_RESP_Q001 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q001,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Masculino.', 'Feminino.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q002 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q002,
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
# TS_PROFESSOR$TX_RESP_Q003 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q003,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Até 24 anos.',
#       'De 25 a 29 anos.',
#       'De 30 a 39 anos.',
#       'De 40 a 49 anos.',
#       'De 50 a 54 anos.',
#       '55 anos ou mais.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q004 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q004,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q005 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q005,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Menos de 1 ano.',
#       'De 1 a 2 anos.',
#       'De 3 a 5 anos.',
#       'De 6 a 10 anos.',
#       'De 11 a 15 anos.',
#       'De 16 a 20 anos.',
#       'De 21 a 25 anos.',
#       'Mais de 25 anos.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q006 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q006,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F', 'G'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Menos de 1 ano.',
#       'De 1 a 2 anos.',
#       'De 3 a 5 anos.',
#       'De 6 a 10 anos.',
#       'De 11 a 15 anos.',
#       'De 16 a 20 anos.',
#       'Mais de 20 anos.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q007 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q007,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Apenas nesta.', 'Em 2.', 'Em 3.', 'Em 4 ou mais.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q008 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q008,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Concursado/efetivo/estável.',
#       'Contrato temporário.',
#       'Contrato CLT.',
#       'Outra situação trabalhista.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q009 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q009,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Até 10 horas.',
#       'De 11 a 20 horas.',
#       'De 21 a 30 horas.',
#       'De 31 a 40 horas.',
#       'Mais de 40 horas.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q010 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q010,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Até R$ 1.100,00.',
#       'De R$ 1.100,01 até R$ 2.200,00.',
#       'De R$ 2.200,01 até R$ 3.300,00.',
#       'De R$ 3.300,01 até R$ 4.400,00.',
#       'De R$ 4.400,01 até R$ 5.500,00.',
#       'De R$ 5.500,01 até R$ 6.600,00.',
#       'De R$ 6.600,01 até R$ 7.700,00.',
#       'De R$ 7.700,01 a R$ 8.800,00.',
#       'Acima de R$ 8.800,01.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q011 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q011,
#     levels = c ('*', '.', 'A', 'B'),
#     labels = c('Nulo', 'Branco', 'Não.', 'Sim.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q012 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q012,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q013 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q013,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q014 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q014,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q015 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q015,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q016 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q016,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q017 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q017,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q018 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q018,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q019 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q019,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q020 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q020,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q021 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q021,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q022 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q022,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q023 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q023,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q024 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q024,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q025 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q025,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q026 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q026,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q027 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q027,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q028 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q028,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q029 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q029,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q030 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q030,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q031 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q031,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q032 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q032,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q033 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q033,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q034 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q034,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Inadequado.',
#       'Pouco adequado.',
#       'Razoavelmente adequado.',
#       'Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q035 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q035,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'NÃO USO / Não tem.',
#       'USO E É Inadequado.',
#       'USO E É Pouco adequado.',
#       'USO E É Razoavelmente adequado.',
#       'USO E É Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q036 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q036,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'NÃO USO / Não tem.',
#       'USO E É Inadequado.',
#       'USO E É Pouco adequado.',
#       'USO E É Razoavelmente adequado.',
#       'USO E É Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q037 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q037,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'NÃO USO / Não tem.',
#       'USO E É Inadequado.',
#       'USO E É Pouco adequado.',
#       'USO E É Razoavelmente adequado.',
#       'USO E É Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q038 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q038,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'NÃO USO / Não tem.',
#       'USO E É Inadequado.',
#       'USO E É Pouco adequado.',
#       'USO E É Razoavelmente adequado.',
#       'USO E É Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q039 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q039,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'NÃO USO / Não tem.',
#       'USO E É Inadequado.',
#       'USO E É Pouco adequado.',
#       'USO E É Razoavelmente adequado.',
#       'USO E É Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q040 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q040,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'NÃO USO / Não tem.',
#       'USO E É Inadequado.',
#       'USO E É Pouco adequado.',
#       'USO E É Razoavelmente adequado.',
#       'USO E É Adequado.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q041 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q041,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q042 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q042,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q043 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q043,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q044 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q044,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q045 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q045,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q046 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q046,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q047 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q047,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q048 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q048,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q049 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q049,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q050 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q050,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q051 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q051,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nenhuma necessidade.',
#       'Pouca necessidade.',
#       'Moderada necessidade.',
#       'Grande necessidade.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q052 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q052,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhuma.', 'Uma.', 'Duas.', 'Três ou mais.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q053 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q053,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhuma.', 'Uma.', 'Duas.', 'Três ou mais.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q054 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q054,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c('Nulo', 'Branco', 'Nenhuma.', 'Uma.', 'Duas.', 'Três ou mais.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q055 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q055,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Fiz curso ou atividade. Nunca.',
#       'Fiz curso ou atividade. Poucas vezes.',
#       'Fiz curso ou atividade. Muitas vezes.',
#       'Fiz curso ou atividade. Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q056 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q056,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Fiz curso ou atividade. Nunca.',
#       'Fiz curso ou atividade. Poucas vezes.',
#       'Fiz curso ou atividade. Muitas vezes.',
#       'Fiz curso ou atividade. Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q057 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q057,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Fiz curso ou atividade. Nunca.',
#       'Fiz curso ou atividade. Poucas vezes.',
#       'Fiz curso ou atividade. Muitas vezes.',
#       'Fiz curso ou atividade. Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q058 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q058,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz este curso.',
#       'Sim, sem apoio.',
#       'Sim, com apoio parcial.',
#       'Sim, com apoio total.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q059 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q059,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz este curso.',
#       'Sim, sem apoio.',
#       'Sim, com apoio parcial.',
#       'Sim, com apoio total.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q060 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q060,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz este curso.',
#       'Sim, sem apoio.',
#       'Sim, com apoio parcial.',
#       'Sim, com apoio total.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q061 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q061,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Não contribuiu.',
#       'Contribuiu pouco.',
#       'Contribuiu razoavelmente.',
#       'Contribuiu muito.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q062 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q062,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Não contribuiu.',
#       'Contribuiu pouco.',
#       'Contribuiu razoavelmente.',
#       'Contribuiu muito.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q063 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q063,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Não contribuiu.',
#       'Contribuiu pouco.',
#       'Contribuiu razoavelmente.',
#       'Contribuiu muito.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q064 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q064,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Não contribuiu.',
#       'Contribuiu pouco.',
#       'Contribuiu razoavelmente.',
#       'Contribuiu muito.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q065 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q065,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Não contribuiu.',
#       'Contribuiu pouco.',
#       'Contribuiu razoavelmente.',
#       'Contribuiu muito.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q066 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q066,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Não contribuiu.',
#       'Contribuiu pouco.',
#       'Contribuiu razoavelmente.',
#       'Contribuiu muito.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q067 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q067,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não fiz curso ou atividade.',
#       'Não contribuiu.',
#       'Contribuiu pouco.',
#       'Contribuiu razoavelmente.',
#       'Contribuiu muito.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q068 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q068,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Docente da turma.',
#       'Todo o corpo docente da escola.',
#       'Equipe gestora.',
#       'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q069 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q069,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Docente da turma.',
#       'Todo o corpo docente da escola.',
#       'Equipe gestora.',
#       'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q070 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q070,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Docente da turma.',
#       'Todo o corpo docente da escola.',
#       'Equipe gestora.',
#       'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q071 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q071,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Docente da turma.',
#       'Todo o corpo docente da escola.',
#       'Equipe gestora.',
#       'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q072 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q072,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Docente da turma.',
#       'Todo o corpo docente da escola.',
#       'Equipe gestora.',
#       'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q073 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q073,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Docente da turma.',
#       'Todo o corpo docente da escola.',
#       'Equipe gestora.',
#       'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q074 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q074,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D', 'E', 'F'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não existe Conselho de Classe nesta escola.',
#       'Nenhuma vez.',
#       'Uma ou duas vezes.',
#       'Três ou quatro vezes.',
#       'Mais de quatro vezes.',
#       'Não sei.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q075 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q075,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Não sei.', 'Não.', 'Sim.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q076 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q076,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Não sei.', 'Não.', 'Sim.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q077 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q077,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Não sei.', 'Não.', 'Sim.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q078 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q078,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q079 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q079,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q080 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q080,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q081 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q081,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q082 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q082,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q083 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q083,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q084 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q084,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q085 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q085,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q086 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q086,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q087 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q087,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q088 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q088,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q089 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q089,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca.',
#       'Poucas vezes.',
#       'Muitas vezes.',
#       'Sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q090 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q090,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q091 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q091,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q092 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q092,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q093 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q093,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q094 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q094,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q095 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q095,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q096 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q096,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q097 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q097,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q098 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q098,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q099 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q099,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q100 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q100,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q101 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q101,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q102 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q102,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q103 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q103,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q104 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q104,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q105 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q105,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q106 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q106,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q107 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q107,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q108 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q108,
#     levels = c ('*', '.', 'A', 'B', 'C'),
#     labels = c('Nulo', 'Branco', 'Nunca.', 'Poucas vezes.', 'Várias vezes.')
#   )
# 
# TS_PROFESSOR$TX_RESP_Q109 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q109,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q110 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q110,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q111 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q111,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q112 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q112,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q113 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q113,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Discordo fortemente.',
#       'Discordo.',
#       'Concordo.',
#       'Concordo fortemente.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q114 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q114,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'Poucas vezes.',
#       'Várias vezes.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q115 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q115,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'Poucas vezes.',
#       'Várias vezes.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q116 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q116,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'Poucas vezes.',
#       'Várias vezes.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q117 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q117,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'Poucas vezes.',
#       'Várias vezes.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q118 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q118,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'Poucas vezes.',
#       'Várias vezes.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q119 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q119,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'Poucas vezes.',
#       'Várias vezes.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q120 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q120,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Nunca ou quase nunca.',
#       'Poucas vezes.',
#       'Várias vezes.',
#       'Sempre ou quase sempre.'
#     )
#   )
# 
# TS_PROFESSOR$TX_RESP_Q121 <-
#   factor (
#     TS_PROFESSOR$TX_RESP_Q121,
#     levels = c ('*', '.', 'A', 'B', 'C', 'D'),
#     labels = c(
#       'Nulo',
#       'Branco',
#       'Não há estudantes público alvo da educação especial na(s) minha(s) turma(s).',
#       'A escola oferece o apoio para os estudantes público alvo da educação especial sempre que necessário.',
#       'Em alguns casos, a escola oferece o apoio para os estudantes público alvo da educação especial.',
#       'A escola não oferece o apoio para os estudantes público alvo da educação especial.'
#     )
#   )
# 
