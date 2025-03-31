# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_SECRETARIO_MUNICIPAL                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECRETARIO                   */
# /*               MUNICIPAL DE EDUCAÇÃO DO SAEB 2021                                    */
# /*                                                                                     */
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                       */
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
setwd('c:/') 

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_SECRETARIO_MUNICIPAL <- data.table::fread(input='TS_SECRETARIO_MUNICIPAL.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------


# TS_SECRETARIO_MUNICIPAL$CO_UF <- factor (TS_SECRETARIO_MUNICIPAL$CO_UF, levels = c (11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53),
#                               labels = c( 'RO', 'AC', 'AM', 'RR', 'PA', 'AP', 'TO', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'MG', 'ES', 'RJ', 'SP', 'PR', 'SC', 'RS', 'MS', 'MT', 'GO', 'DF'))
# 
# TS_SECRETARIO_MUNICIPAL$IN_CAPITAL <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$IN_CAPITAL,
#     levels = c ('1', '0'),
#     labels = c('Capital', 'Interior')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$IN_PREENCHIMENTO <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$IN_PREENCHIMENTO,
#     levels = c ('0', '1'),
#     labels = c('Não preenchido', 'Preenchido parcial ou totalmente')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$CO_TRATAMENTO <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$CO_TRATAMENTO,
#     levels = c ('0', '1', '2'),
#     labels = c(
#       'Sem tratamento',
#       'Tratamento de duplicidade de resposta',
#       'Imputação do  CO_MUNICIPIO.'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q01 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q01,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q02 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q02,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q03 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q03,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q04 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q04,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q05 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q05,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q07 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q07,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q08 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q08,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q09 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q09,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q10 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q10,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q11 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q11,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q12 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q12,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q13 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q13,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q15 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q15,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q16 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q16,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q17 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q17,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q18 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q18,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q19 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q19,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q20 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q20,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q21 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q21,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q23 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q23,
#     levels = c ('A', 'B', 'C'),
#     labels = c(
#       'Sim, a legislação contempla todos os critérios utilizados.',
#       'Sim, a legislação contempla uma parte dos critérios utilizados.',
#       'Não, não há legislação municipal para escolha dos diretores.'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q24 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q24,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q25 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q25,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q26 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q26,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q27 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q27,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q28 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q28,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q29 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q29,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q30 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q30,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q31 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q31,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q32 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q32,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q33 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q33,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_A <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_A,
#     levels = c ('A'),
#     labels = c('Construção de escolas.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_B <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_B,
#     levels = c ('B'),
#     labels = c(
#       'Reforma de escolas (melhoria e/ou adequação do espaço físico etc.).'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_C <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_C,
#     levels = c ('C'),
#     labels = c(
#       'Aquisição de mobiliário para as escolas (carteiras, armários etc.).'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_D <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_D,
#     levels = c ('D'),
#     labels = c(
#       'Aquisição de material de higiene, limpeza e equipamento de proteção individual (álcool, sabonete, máscara etc).'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_E <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_E,
#     levels = c ('E'),
#     labels = c(
#       'Aquisição de material pedagógico (livros, software, material audiovisual etc.).'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_F <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_F,
#     levels = c ('F'),
#     labels = c(
#       'Aquisição de equipamentos para alunos e ou professores (computador, tablet, celular, chip para internet etc.).'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_G <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_G,
#     levels = c ('G'),
#     labels = c(
#       'Produção de material didático audiovisual ou impresso para aulas remotas.'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_H <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_H,
#     levels = c ('H'),
#     labels = c('Contratação de profissionais para a educação.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_I <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_I,
#     levels = c ('I'),
#     labels = c('Distribuição da alimentação para os estudantes.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q35_J <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q35_J,
#     levels = c ('J'),
#     labels = c('Outra prioridade.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q37 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q37,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q38 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q38,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q39 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q39,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q40 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q40,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q41 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q41,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG2Q42 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG2Q42,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q01 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q01,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q03 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q03,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q04 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q04,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q05 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q05,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q06 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q06,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q07 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q07,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q08 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q08,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q09 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q09,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q10 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q10,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q11 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q11,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q12 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q12,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q13 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q13,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q14 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q14,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q15 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q15,
#     levels = c ('A', 'B'),
#     labels = c('Município', 'Instituições')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q16 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q16,
#     levels = c ('A', 'B'),
#     labels = c('Município', 'Instituições')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q17 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q17,
#     levels = c ('A', 'B'),
#     labels = c('Município', 'Instituições')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q18 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q18,
#     levels = c ('A', 'B'),
#     labels = c('Município', 'Instituições')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q19 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q19,
#     levels = c ('A', 'B'),
#     labels = c('Município', 'Instituições')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q20 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q20,
#     levels = c ('A', 'B'),
#     labels = c('Município', 'Instituições')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG3Q21 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG3Q21,
#     levels = c ('A', 'B'),
#     labels = c('Município', 'Instituições')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q01 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q01,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q02 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q02,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q03 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q03,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q05 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q05,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q06 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q06,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q07 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q07,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q08 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q08,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q09 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q09,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG4Q10 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG4Q10,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q01 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q01,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q02_A <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q02_A,
#     levels = c ('A'),
#     labels = c('Subsídios para a formação continuada de professores')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q02_B <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q02_B,
#     levels = c ('B'),
#     labels = c(
#       'Subsídios para a avaliação de programas ou projetos da Secretaria de Educação'
#     )
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q02_C <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q02_C,
#     levels = c ('C'),
#     labels = c('Produção de materiais didáticos e pedagógicos')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q02_D <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q02_D,
#     levels = c ('D'),
#     labels = c('Recompensa para escolas com melhores resultados')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q02_E <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q02_E,
#     levels = c ('E'),
#     labels = c('Auxílio para unidades escolares com resultados inferiores')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q02_F <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q02_F,
#     levels = c ('F'),
#     labels = c('Subsídios para pagamento de bonificação para professores')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q02_G <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q02_G,
#     levels = c ('G'),
#     labels = c('Criação de critérios para remanejamento de diretores')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q03 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q03,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q04_A <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q04_A,
#     levels = c ('A'),
#     labels = c('Pré-escola')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q04_B <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q04_B,
#     levels = c ('B'),
#     labels = c('Ensino Fundamental - Anos iniciais')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q04_C <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q04_C,
#     levels = c ('C'),
#     labels = c('Ensino Fundamental - Anos finais')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q05_A <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q05_A,
#     levels = c ('A'),
#     labels = c('Mensal')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q05_B <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q05_B,
#     levels = c ('B'),
#     labels = c('Bimestral')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q05_C <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q05_C,
#     levels = c ('C'),
#     labels = c('Trimestral')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q05_D <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q05_D,
#     levels = c ('D'),
#     labels = c('Semestral')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q05_E <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q05_E,
#     levels = c ('E'),
#     labels = c('Anual')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q05_F <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q05_F,
#     levels = c ('F'),
#     labels = c('Bianual')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q05_G <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q05_G,
#     levels = c ('G'),
#     labels = c('Outra')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q06 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q06,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_A <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_A,
#     levels = c ('A'),
#     labels = c('Auto-avaliação das escolas')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_B <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_B,
#     levels = c ('B'),
#     labels = c('Avaliação do Projeto Pedagógico das escolas')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_C <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_C,
#     levels = c ('C'),
#     labels = c('Desempenho dos professores')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_D <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_D,
#     levels = c ('D'),
#     labels = c('Desempenho dos diretores das escolas')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_E <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_E,
#     levels = c ('E'),
#     labels = c('Infraestrutura das escolas')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_F <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_F,
#     levels = c ('F'),
#     labels = c('Transporte escolar')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_G <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_G,
#     levels = c ('G'),
#     labels = c('Merenda escolar')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_H <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_H,
#     levels = c ('H'),
#     labels = c('Organização administrativa das escolas')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG5Q07_I <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG5Q07_I,
#     levels = c ('I'),
#     labels = c('Outras')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q01 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q01,
#     levels = c ('A', 'B', 'C'),
#     labels = c('Sim', 'Não', 'Não se aplica')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q02 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q02,
#     levels = c ('A', 'B', 'C'),
#     labels = c('Sim', 'Não', 'Não se aplica')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q03 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q03,
#     levels = c ('A', 'B', 'C'),
#     labels = c('Sim', 'Não', 'Não se aplica')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q04 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q04,
#     levels = c ('A', 'B', 'C'),
#     labels = c('Sim', 'Não', 'Não se aplica')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q05_A <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q05_A,
#     levels = c ('A'),
#     labels = c('Até 20 horas semanais.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q05_B <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q05_B,
#     levels = c ('B'),
#     labels = c('De 21 a 30 horas semanais.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q05_C <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q05_C,
#     levels = c ('C'),
#     labels = c('De 31 a 40 horas semanais.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q05_D <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q05_D,
#     levels = c ('D'),
#     labels = c('Mais de 40 horas semanais.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q06 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q06,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q07 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q07,
#     levels = c ('A', 'B'),
#     labels = c('Sim', 'Não')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_A <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_A,
#     levels = c ('A'),
#     labels = c('Tempo de efetivo exercício no cargo.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_B <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_B,
#     levels = c ('B'),
#     labels = c('Qualificação.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_C <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_C,
#     levels = c ('C'),
#     labels = c('Titulação.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_D <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_D,
#     levels = c ('D'),
#     labels = c('Assiduidade.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_E <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_E,
#     levels = c ('E'),
#     labels = c('Avaliação de desempenho.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_F <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_F,
#     levels = c ('F'),
#     labels = c('Prova de conhecimentos para professores.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_G <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_G,
#     levels = c ('G'),
#     labels = c('Desempenho dos alunos em avaliações externas.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q08_H <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q08_H,
#     levels = c ('H'),
#     labels = c('Outros.')
#   )
# 
# TS_SECRETARIO_MUNICIPAL$MG6Q10 <-
#   factor (
#     TS_SECRETARIO_MUNICIPAL$MG6Q10,
#     levels = c ('A', 'B', 'C', 'D'),
#     labels = c(
#       'É inferior à dos(as) professores(as) de Ensino Fundamental.',
#       'É equivalente à dos(as) professores(as) de Ensino Fundamental.',
#       'É superior à dos(as) professores(as) de Ensino Fundamental.',
#       'Não existe este profissional na rede.'
#     )
#   )
# 
