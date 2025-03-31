# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_DIRETOR                                                    */
# /*-------------------------------------------------------------------------------------*/
# /*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO DIRETOR DO SAEB 2020        */
# /*                                                                                     */
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_DIRETOR.CSV no diretório C:\ do computador.	                                     */
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
setwd('W://DADOS//SAEB//2021//Microdados//Ensino Fundamental e médio//DADOS') 

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_DIRETOR <- data.table::fread(input='TS_DIRETOR.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------


# TS_DIRETOR$ID_REGIAO <- factor (TS_DIRETOR$ID_REGIAO,levels = c (1,2,3,4,5),
#                                 labels = c( 'Norte', 'Nordeste', 'Sudeste', 'Sul', 'Centro-Oeste'))
# 
# TS_DIRETOR$ID_UF <- factor (TS_DIRETOR$ID_UF,levels = c (11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53),
#                             labels = c( 'RO', 'AC', 'AM', 'RR', 'PA', 'AP', 'TO', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'MG', 'ES', 'RJ', 'SP', 'PR', 'SC', 'RS', 'MS', 'MT', 'GO', 'DF'))
# 
# TS_DIRETOR$ID_AREA <- factor (TS_DIRETOR$ID_AREA,levels = c (1,2),
#                               labels = c( 'Capital', 'Interior'))
# 
# TS_DIRETOR$IN_PUBLICA <- factor (TS_DIRETOR$IN_PUBLICA,levels = c (0, 1),
#                                          labels = c('Não pública', 'Pública'))
# 
# TS_DIRETOR$ID_LOCALIZACAO <- factor (TS_DIRETOR$ID_LOCALIZACAO,levels = c (1,2),
#                                      labels = c('Urbana','Rural'))
# 
# TS_DIRETOR$IN_PREENCHIMENTO_QUESTIONARIO <- factor (TS_DIRETOR$IN_PREENCHIMENTO_QUESTIONARIO,levels = c (0,1),
#                                                     labels = c('Não preenchido','Preenchido parcial ou totalmente'))
# 
# TS_DIRETOR$TX_RESP_Q001 <- factor (TS_DIRETOR$TX_RESP_Q001 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q002 <- factor (TS_DIRETOR$TX_RESP_Q002 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q003 <- factor (TS_DIRETOR$TX_RESP_Q003 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q004 <- factor (TS_DIRETOR$TX_RESP_Q004 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q005 <- factor (TS_DIRETOR$TX_RESP_Q005 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q006 <- factor (TS_DIRETOR$TX_RESP_Q006 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Pública.', 'Privada.' ))
# 
# TS_DIRETOR$TX_RESP_Q007 <- factor (TS_DIRETOR$TX_RESP_Q007 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Masculino.', 'Feminino.' ))
# 
# TS_DIRETOR$TX_RESP_Q008 <- factor (TS_DIRETOR$TX_RESP_Q008 ,levels = c (18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70),
#                                   labels = c( '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70' ))
# 
# TS_DIRETOR$TX_RESP_Q009 <- factor (TS_DIRETOR$TX_RESP_Q009 ,levels = c ('A', 'B', 'C', 'D', 'E', 'F'),
#                                   labels = c('Branca', 'Preta', 'Parda', 'Amarela', 'Indígena', 'Não quero declarar'))
# 
# TS_DIRETOR$TX_RESP_Q010 <- factor (TS_DIRETOR$TX_RESP_Q010 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q011 <- factor (TS_DIRETOR$TX_RESP_Q011 ,levels = c ('1.0', '10.0', '11.0', '12.0', '13.0', '14.0', '15.0', '16.0', '17.0', '18.0', '19.0', '2.0', '20.0', '21.0', '22.0', '23.0', '24.0', '25.0', '26.0', '27.0', '28.0', '29.0', '3.0', '30.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'B'),
#                                   labels = c('1.0', '10.0', '11.0', '12.0', '13.0', '14.0', '15.0', '16.0', '17.0', '18.0', '19.0', '2.0', '20.0', '21.0', '22.0', '23.0', '24.0', '25.0', '26.0', '27.0', '28.0', '29.0', '3.0', '30.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'Nunca trabalhei'))
# 
# TS_DIRETOR$TX_RESP_Q012 <- factor (TS_DIRETOR$TX_RESP_Q012 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'))
# 
# TS_DIRETOR$TX_RESP_Q013 <- factor (TS_DIRETOR$TX_RESP_Q013 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60'))
# 
# TS_DIRETOR$TX_RESP_Q014 <- factor (TS_DIRETOR$TX_RESP_Q014 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q015 <- factor (TS_DIRETOR$TX_RESP_Q015 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q016 <- factor (TS_DIRETOR$TX_RESP_Q016 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q017 <- factor (TS_DIRETOR$TX_RESP_Q017 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q018 <- factor (TS_DIRETOR$TX_RESP_Q018 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q019 <- factor (TS_DIRETOR$TX_RESP_Q019 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q020 <- factor (TS_DIRETOR$TX_RESP_Q020 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q021 <- factor (TS_DIRETOR$TX_RESP_Q021 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q022 <- factor (TS_DIRETOR$TX_RESP_Q022 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q023 <- factor (TS_DIRETOR$TX_RESP_Q023 ,levels = c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
#                                   labels = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'))
# 
# TS_DIRETOR$TX_RESP_Q024 <- factor (TS_DIRETOR$TX_RESP_Q024 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q025 <- factor (TS_DIRETOR$TX_RESP_Q025 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q026 <- factor (TS_DIRETOR$TX_RESP_Q026 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q027 <- factor (TS_DIRETOR$TX_RESP_Q027 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q028 <- factor (TS_DIRETOR$TX_RESP_Q028 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q029 <- factor (TS_DIRETOR$TX_RESP_Q029 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q030 <- factor (TS_DIRETOR$TX_RESP_Q030 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q031 <- factor (TS_DIRETOR$TX_RESP_Q031 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q032 <- factor (TS_DIRETOR$TX_RESP_Q032 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q033 <- factor (TS_DIRETOR$TX_RESP_Q033 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q034 <- factor (TS_DIRETOR$TX_RESP_Q034 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q035 <- factor (TS_DIRETOR$TX_RESP_Q035 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q036 <- factor (TS_DIRETOR$TX_RESP_Q036 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q037 <- factor (TS_DIRETOR$TX_RESP_Q037 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q038 <- factor (TS_DIRETOR$TX_RESP_Q038 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q039 <- factor (TS_DIRETOR$TX_RESP_Q039 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q040 <- factor (TS_DIRETOR$TX_RESP_Q040 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q041 <- factor (TS_DIRETOR$TX_RESP_Q041 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q042 <- factor (TS_DIRETOR$TX_RESP_Q042 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('A escola não oferece ensino fundamental ou médio', 'Os (As) alunos (as) da educação infantil utilizam a área externa em horário diferenciado.', 'Os (As) alunos (as) da educação infantil utilizam a área externa'))
# 
# TS_DIRETOR$TX_RESP_Q043 <- factor (TS_DIRETOR$TX_RESP_Q043 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q044 <- factor (TS_DIRETOR$TX_RESP_Q044 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c( 'Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q045 <- factor (TS_DIRETOR$TX_RESP_Q045 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q046 <- factor (TS_DIRETOR$TX_RESP_Q046 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q047 <- factor (TS_DIRETOR$TX_RESP_Q047 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q048 <- factor (TS_DIRETOR$TX_RESP_Q048 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q049 <- factor (TS_DIRETOR$TX_RESP_Q049 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q050 <- factor (TS_DIRETOR$TX_RESP_Q050 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q051 <- factor (TS_DIRETOR$TX_RESP_Q051 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q052 <- factor (TS_DIRETOR$TX_RESP_Q052 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q053 <- factor (TS_DIRETOR$TX_RESP_Q053 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q054 <- factor (TS_DIRETOR$TX_RESP_Q054 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q055 <- factor (TS_DIRETOR$TX_RESP_Q055 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q056 <- factor (TS_DIRETOR$TX_RESP_Q056 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q057 <- factor (TS_DIRETOR$TX_RESP_Q057 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Suficiente', 'Insuficiente', 'Desnecessária'))
# 
# TS_DIRETOR$TX_RESP_Q058 <- factor (TS_DIRETOR$TX_RESP_Q058 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Suficiente', 'Insuficiente', 'Desnecessária'))
# 
# TS_DIRETOR$TX_RESP_Q059 <- factor (TS_DIRETOR$TX_RESP_Q059 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Suficiente', 'Insuficiente', 'Desnecessária'))
# 
# TS_DIRETOR$TX_RESP_Q060 <- factor (TS_DIRETOR$TX_RESP_Q060 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Suficiente', 'Insuficiente', 'Desnecessária'))
# 
# TS_DIRETOR$TX_RESP_Q061 <- factor (TS_DIRETOR$TX_RESP_Q061 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Suficiente', 'Insuficiente', 'Desnecessária'))
# 
# TS_DIRETOR$TX_RESP_Q062 <- factor (TS_DIRETOR$TX_RESP_Q062 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Suficiente', 'Insuficiente', 'Desnecessária'))
# 
# TS_DIRETOR$TX_RESP_Q063 <- factor (TS_DIRETOR$TX_RESP_Q063 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Suficiente', 'Insuficiente', 'Desnecessária'))
# 
# TS_DIRETOR$TX_RESP_Q064 <- factor (TS_DIRETOR$TX_RESP_Q064 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q065 <- factor (TS_DIRETOR$TX_RESP_Q065 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q066 <- factor (TS_DIRETOR$TX_RESP_Q066 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q067 <- factor (TS_DIRETOR$TX_RESP_Q067 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q068 <- factor (TS_DIRETOR$TX_RESP_Q068 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q069 <- factor (TS_DIRETOR$TX_RESP_Q069 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q070 <- factor (TS_DIRETOR$TX_RESP_Q070 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q071 <- factor (TS_DIRETOR$TX_RESP_Q071 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q072 <- factor (TS_DIRETOR$TX_RESP_Q072 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q073 <- factor (TS_DIRETOR$TX_RESP_Q073 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q074 <- factor (TS_DIRETOR$TX_RESP_Q074 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q076 <- factor (TS_DIRETOR$TX_RESP_Q076 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q077 <- factor (TS_DIRETOR$TX_RESP_Q077 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q078 <- factor (TS_DIRETOR$TX_RESP_Q078 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q079 <- factor (TS_DIRETOR$TX_RESP_Q079 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q080 <- factor (TS_DIRETOR$TX_RESP_Q080 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q081 <- factor (TS_DIRETOR$TX_RESP_Q081 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q082 <- factor (TS_DIRETOR$TX_RESP_Q082 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q083 <- factor (TS_DIRETOR$TX_RESP_Q083 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q084 <- factor (TS_DIRETOR$TX_RESP_Q084 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q085 <- factor (TS_DIRETOR$TX_RESP_Q085 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q086 <- factor (TS_DIRETOR$TX_RESP_Q086 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q087 <- factor (TS_DIRETOR$TX_RESP_Q087 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q088 <- factor (TS_DIRETOR$TX_RESP_Q088 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Nunca', 'Poucas vezes', 'Várias vezes'))
# 
# TS_DIRETOR$TX_RESP_Q089 <- factor (TS_DIRETOR$TX_RESP_Q089 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Muito inadequado', 'Inadequado', 'Adequado', 'Muito adequado'))
# 
# TS_DIRETOR$TX_RESP_Q090 <- factor (TS_DIRETOR$TX_RESP_Q090 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Muito inadequado', 'Inadequado', 'Adequado', 'Muito adequado'))
# 
# TS_DIRETOR$TX_RESP_Q091 <- factor (TS_DIRETOR$TX_RESP_Q091 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Muito inadequado', 'Inadequado', 'Adequado', 'Muito adequado'))
# 
# TS_DIRETOR$TX_RESP_Q092 <- factor (TS_DIRETOR$TX_RESP_Q092 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Muito inadequado', 'Inadequado', 'Adequado', 'Muito adequado'))
# 
# TS_DIRETOR$TX_RESP_Q093 <- factor (TS_DIRETOR$TX_RESP_Q093 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Muito inadequado', 'Inadequado', 'Adequado', 'Muito adequado'))
# 
# TS_DIRETOR$TX_RESP_Q094 <- factor (TS_DIRETOR$TX_RESP_Q094 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Muito inadequado', 'Inadequado', 'Adequado', 'Muito adequado'))
# 
# TS_DIRETOR$TX_RESP_Q095 <- factor (TS_DIRETOR$TX_RESP_Q095 ,levels = c ('1.0', '10.0', '11.0', '12.0', '2.0', '3.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'B'),
#                                   labels = c('1.0', '10.0', '11.0', '12.0', '2.0', '3.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'Não existe Conselho'))
# 
# TS_DIRETOR$TX_RESP_Q096 <- factor (TS_DIRETOR$TX_RESP_Q096 ,levels = c ('1.0', '10.0', '11.0', '12.0', '2.0', '3.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'B'),
#                                   labels = c('1.0', '10.0', '11.0', '12.0', '2.0', '3.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'Não existe Conselho'))
# 
# TS_DIRETOR$TX_RESP_Q097 <- factor (TS_DIRETOR$TX_RESP_Q097 ,levels = c ('1.0', '10.0', '11.0', '12.0', '2.0', '3.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'B'),
#                                   labels = c('1.0', '10.0', '11.0', '12.0', '2.0', '3.0', '4.0', '5.0', '6.0', '7.0', '8.0', '9.0', 'Não existe APM (ou Caixa escolar).'))
# 
# TS_DIRETOR$TX_RESP_Q098 <- factor (TS_DIRETOR$TX_RESP_Q098 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim, existe e está ativo.', 'Sim, existe, mas está inativo.', 'Não existe Grêmio Estudantil.'))
# 
# TS_DIRETOR$TX_RESP_Q099 <- factor (TS_DIRETOR$TX_RESP_Q099 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q100 <- factor (TS_DIRETOR$TX_RESP_Q100 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q101 <- factor (TS_DIRETOR$TX_RESP_Q101 ,levels = c ('A'),
#                                   labels = c('os serviços de saúde'))
# 
# TS_DIRETOR$TX_RESP_Q102 <- factor (TS_DIRETOR$TX_RESP_Q102 ,levels = c ('B'),
#                                   labels = c('os serviços de assistência social'))
# 
# TS_DIRETOR$TX_RESP_Q103 <- factor (TS_DIRETOR$TX_RESP_Q103 ,levels = c ('C'),
#                                   labels = c('a segurança pública'))
# 
# TS_DIRETOR$TX_RESP_Q104 <- factor (TS_DIRETOR$TX_RESP_Q104 ,levels = c ('D'),
#                                   labels = c('o conselho tutelar'))
# 
# TS_DIRETOR$TX_RESP_Q105 <- factor (TS_DIRETOR$TX_RESP_Q105 ,levels = c ('E'),
#                                   labels = c('instituições de apoio ao público alvo da educação especial'))
# 
# TS_DIRETOR$TX_RESP_Q106 <- factor (TS_DIRETOR$TX_RESP_Q106 ,levels = c ('F'),
#                                   labels = c('organizações não governamentais/instituições privadas'))
# 
# TS_DIRETOR$TX_RESP_Q107 <- factor (TS_DIRETOR$TX_RESP_Q107 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q108 <- factor (TS_DIRETOR$TX_RESP_Q108 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q109 <- factor (TS_DIRETOR$TX_RESP_Q109 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q110 <- factor (TS_DIRETOR$TX_RESP_Q110 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q111 <- factor (TS_DIRETOR$TX_RESP_Q111 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q112 <- factor (TS_DIRETOR$TX_RESP_Q112 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q113 <- factor (TS_DIRETOR$TX_RESP_Q113 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q114 <- factor (TS_DIRETOR$TX_RESP_Q114 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q115 <- factor (TS_DIRETOR$TX_RESP_Q115 ,levels = c ('A'),
#                                   labels = c('Aquisição pela escola ou Secretaria de Educação.'))
# 
# TS_DIRETOR$TX_RESP_Q116 <- factor (TS_DIRETOR$TX_RESP_Q116 ,levels = c ('B' ),
#                                   labels = c('Campanhas de doação.'))
# 
# TS_DIRETOR$TX_RESP_Q117 <- factor (TS_DIRETOR$TX_RESP_Q117 ,levels = c ('C'),
#                                   labels = c('Solicitação às famílias.'))
# 
# TS_DIRETOR$TX_RESP_Q118 <- factor (TS_DIRETOR$TX_RESP_Q118 ,levels = c ('A'),
#                                   labels = c('Aquisição pela escola ou Secretaria de Educação.'))
# 
# TS_DIRETOR$TX_RESP_Q119 <- factor (TS_DIRETOR$TX_RESP_Q119 ,levels = c ('B' ),
#                                   labels = c('Campanhas de doação.'))
# 
# TS_DIRETOR$TX_RESP_Q120 <- factor (TS_DIRETOR$TX_RESP_Q120 ,levels = c ('C'),
#                                   labels = c('Solicitação às famílias.'))
# 
# TS_DIRETOR$TX_RESP_Q121 <- factor (TS_DIRETOR$TX_RESP_Q121 ,levels = c ('A'),
#                                   labels = c('Aquisição pela escola ou Secretaria de Educação.'))
# 
# TS_DIRETOR$TX_RESP_Q122 <- factor (TS_DIRETOR$TX_RESP_Q122 ,levels = c ('B'),
#                                   labels = c('Campanhas de doação.'))
# 
# TS_DIRETOR$TX_RESP_Q123 <- factor (TS_DIRETOR$TX_RESP_Q123 ,levels = c ('C'),
#                                   labels = c('Solicitação às famílias.'))
# 
# TS_DIRETOR$TX_RESP_Q124 <- factor (TS_DIRETOR$TX_RESP_Q124 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q125 <- factor (TS_DIRETOR$TX_RESP_Q125 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Uma vez.', 'Duas vezes.', 'Três vezes ou mais.', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q126 <- factor (TS_DIRETOR$TX_RESP_Q126 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Uma vez.', 'Duas vezes.', 'Três vezes ou mais.', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q127 <- factor (TS_DIRETOR$TX_RESP_Q127 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Uma vez.', 'Duas vezes.', 'Três vezes ou mais.', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q128 <- factor (TS_DIRETOR$TX_RESP_Q128 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q129 <- factor (TS_DIRETOR$TX_RESP_Q129 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q130 <- factor (TS_DIRETOR$TX_RESP_Q130 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q131 <- factor (TS_DIRETOR$TX_RESP_Q131 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q132 <- factor (TS_DIRETOR$TX_RESP_Q132 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q133 <- factor (TS_DIRETOR$TX_RESP_Q133 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q134 <- factor (TS_DIRETOR$TX_RESP_Q134 ,levels = c ('A', 'B', 'C', 'D'),
#                                   labels = c('Discordo fortemente.', 'Discordo.', 'Concordo.', 'Concordo fortemente.'))
# 
# TS_DIRETOR$TX_RESP_Q135 <- factor (TS_DIRETOR$TX_RESP_Q135 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q136 <- factor (TS_DIRETOR$TX_RESP_Q136 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q137 <- factor (TS_DIRETOR$TX_RESP_Q137 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim', 'Não', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q138 <- factor (TS_DIRETOR$TX_RESP_Q138 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim', 'Não', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q139 <- factor (TS_DIRETOR$TX_RESP_Q139 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim', 'Não', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q140 <- factor (TS_DIRETOR$TX_RESP_Q140 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim', 'Não', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q141 <- factor (TS_DIRETOR$TX_RESP_Q141 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim', 'Não', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q142 <- factor (TS_DIRETOR$TX_RESP_Q142 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim', 'Não', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q143 <- factor (TS_DIRETOR$TX_RESP_Q143 ,levels = c ('A', 'B', 'C'),
#                                   labels = c('Sim', 'Não', 'Não se aplica.'))
# 
# TS_DIRETOR$TX_RESP_Q144 <- factor (TS_DIRETOR$TX_RESP_Q144 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q145 <- factor (TS_DIRETOR$TX_RESP_Q145 ,levels = c ('A'),
#                                   labels = c('Sorteio.'))
# 
# TS_DIRETOR$TX_RESP_Q146 <- factor (TS_DIRETOR$TX_RESP_Q146 ,levels = c ('B' ),
#                                   labels = c('Local de moradia.'))
# 
# TS_DIRETOR$TX_RESP_Q147 <- factor (TS_DIRETOR$TX_RESP_Q147 ,levels = c ('C'),
#                                   labels = c('Prova de conhecimentos.'))
# 
# TS_DIRETOR$TX_RESP_Q148 <- factor (TS_DIRETOR$TX_RESP_Q148 ,levels = c ('D'),
#                                   labels = c('Ordem de chegada.'))
# 
# TS_DIRETOR$TX_RESP_Q149 <- factor (TS_DIRETOR$TX_RESP_Q149 ,levels = c ('E'),
#                                   labels = c('Características socioeconômicas.'))
# 
# TS_DIRETOR$TX_RESP_Q150 <- factor (TS_DIRETOR$TX_RESP_Q150 ,levels = c ('F'),
#                                   labels = c('Desempenho do(a) estudante no ano anterior.'))
# 
# TS_DIRETOR$TX_RESP_Q151 <- factor (TS_DIRETOR$TX_RESP_Q151 ,levels = c ('G'),
#                                   labels = c('Critérios definidos pela Secretaria de Educação.'))
# 
# TS_DIRETOR$TX_RESP_Q152 <- factor (TS_DIRETOR$TX_RESP_Q152 ,levels = c ('H'),
#                                   labels = c('Outros.'))
# 
# TS_DIRETOR$TX_RESP_Q154 <- factor (TS_DIRETOR$TX_RESP_Q154 ,levels = c ('A'),
#                                   labels = c('Afinidade entre os(as) estudantes.'))
# 
# TS_DIRETOR$TX_RESP_Q155 <- factor (TS_DIRETOR$TX_RESP_Q155 ,levels = c ('B' ),
#                                   labels = c('Idade.'))
# 
# TS_DIRETOR$TX_RESP_Q156 <- factor (TS_DIRETOR$TX_RESP_Q156 ,levels = c ('C'),
#                                   labels = c('Equilíbrio de meninos e meninas.'))
# 
# TS_DIRETOR$TX_RESP_Q157 <- factor (TS_DIRETOR$TX_RESP_Q157 ,levels = c ('D'),
#                                   labels = c('Manter as turmas existentes do ano anterior.'))
# 
# TS_DIRETOR$TX_RESP_Q158 <- factor (TS_DIRETOR$TX_RESP_Q158 ,levels = c ('E'),
#                                   labels = c('Critérios disciplinares.'))
# 
# TS_DIRETOR$TX_RESP_Q159 <- factor (TS_DIRETOR$TX_RESP_Q159 ,levels = c ('F'),
#                                   labels = c('Desempenho escolar.'))
# 
# TS_DIRETOR$TX_RESP_Q160 <- factor (TS_DIRETOR$TX_RESP_Q160 ,levels = c ('G'),
#                                   labels = c('Outros.'))
# 
# TS_DIRETOR$TX_RESP_Q162 <- factor (TS_DIRETOR$TX_RESP_Q162 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q163 <- factor (TS_DIRETOR$TX_RESP_Q163 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q164 <- factor (TS_DIRETOR$TX_RESP_Q164 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q165 <- factor (TS_DIRETOR$TX_RESP_Q165 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q166 <- factor (TS_DIRETOR$TX_RESP_Q166 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q167 <- factor (TS_DIRETOR$TX_RESP_Q167 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q168 <- factor (TS_DIRETOR$TX_RESP_Q168 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q169 <- factor (TS_DIRETOR$TX_RESP_Q169 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q170 <- factor (TS_DIRETOR$TX_RESP_Q170 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q171 <- factor (TS_DIRETOR$TX_RESP_Q171 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q172 <- factor (TS_DIRETOR$TX_RESP_Q172 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q173 <- factor (TS_DIRETOR$TX_RESP_Q173 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q174 <- factor (TS_DIRETOR$TX_RESP_Q174 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q175 <- factor (TS_DIRETOR$TX_RESP_Q175 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q176 <- factor (TS_DIRETOR$TX_RESP_Q176 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q177 <- factor (TS_DIRETOR$TX_RESP_Q177 ,levels = c ('A', 'B', 'C', 'D', 'E'),
#                                   labels = c('Não foi realizada esta ação.', 'Nada efetiva.', 'Pouco efetiva.', 'Efetiva.', 'Muito efetiva.'))
# 
# TS_DIRETOR$TX_RESP_Q178 <- factor (TS_DIRETOR$TX_RESP_Q178 ,levels = c ('A'),
#                                   labels = c('Violência.'))
# 
# TS_DIRETOR$TX_RESP_Q179 <- factor (TS_DIRETOR$TX_RESP_Q179 ,levels = c ('B' ),
#                                   labels = c('Bullying.'))
# 
# TS_DIRETOR$TX_RESP_Q180 <- factor (TS_DIRETOR$TX_RESP_Q180 ,levels = c ('C'),
#                                   labels = c('Machismo.'))
# 
# TS_DIRETOR$TX_RESP_Q181 <- factor (TS_DIRETOR$TX_RESP_Q181 ,levels = c ('D'),
#                                   labels = c('Homofobia.'))
# 
# TS_DIRETOR$TX_RESP_Q182 <- factor (TS_DIRETOR$TX_RESP_Q182 ,levels = c ('E'),
#                                   labels = c('Sexualidade.'))
# 
# TS_DIRETOR$TX_RESP_Q183 <- factor (TS_DIRETOR$TX_RESP_Q183 ,levels = c ('F'),
#                                   labels = c('Uso de drogas.'))
# 
# TS_DIRETOR$TX_RESP_Q184 <- factor (TS_DIRETOR$TX_RESP_Q184 ,levels = c ('G'),
#                                   labels = c('Direitos dos idosos.'))
# 
# TS_DIRETOR$TX_RESP_Q185 <- factor (TS_DIRETOR$TX_RESP_Q185 ,levels = c ('H'),
#                                   labels = c('Educação ambiental.'))
# 
# TS_DIRETOR$TX_RESP_Q186 <- factor (TS_DIRETOR$TX_RESP_Q186 ,levels = c ('I'),
#                                   labels = c('Ciência e tecnologia.'))
# 
# TS_DIRETOR$TX_RESP_Q187 <- factor (TS_DIRETOR$TX_RESP_Q187 ,levels = c ('J'),
#                                   labels = c('Diversidade religiosa.'))
# 
# TS_DIRETOR$TX_RESP_Q188 <- factor (TS_DIRETOR$TX_RESP_Q188 ,levels = c ('K'),
#                                   labels = c('Desigualdades sociais.'))
# 
# TS_DIRETOR$TX_RESP_Q189 <- factor (TS_DIRETOR$TX_RESP_Q189 ,levels = c ('L'),
#                                   labels = c('Nutrição e alimentação.'))
# 
# TS_DIRETOR$TX_RESP_Q190 <- factor (TS_DIRETOR$TX_RESP_Q190 ,levels = c ('M'),
#                                   labels = c('Educação para o trânsito.'))
# 
# TS_DIRETOR$TX_RESP_Q191 <- factor (TS_DIRETOR$TX_RESP_Q191 ,levels = c ('N'),
#                                   labels = c('Relações étnico-raciais/racismo.'))
# 
# TS_DIRETOR$TX_RESP_Q192 <- factor (TS_DIRETOR$TX_RESP_Q192 ,levels = c ('O'),
#                                   labels = c('Direitos das pessoas com deficiência.'))
# 
# TS_DIRETOR$TX_RESP_Q193 <- factor (TS_DIRETOR$TX_RESP_Q193 ,levels = c ('P'),
#                                   labels = c('Direitos da criança e do adolescente.'))
# 
# TS_DIRETOR$TX_RESP_Q194 <- factor (TS_DIRETOR$TX_RESP_Q194 ,levels = c ('Q'),
#                                   labels = c('Mundo do trabalho (direitos, relações etc.).'))
# 
# TS_DIRETOR$TX_RESP_Q195 <- factor (TS_DIRETOR$TX_RESP_Q195 ,levels = c ('R'),
#                                   labels = c('Educação financeira e consumo sustentável.'))
# 
# TS_DIRETOR$TX_RESP_Q196 <- factor (TS_DIRETOR$TX_RESP_Q196 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q197 <- factor (TS_DIRETOR$TX_RESP_Q197 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q198 <- factor (TS_DIRETOR$TX_RESP_Q198 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q199 <- factor (TS_DIRETOR$TX_RESP_Q199 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q200 <- factor (TS_DIRETOR$TX_RESP_Q200 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q201 <- factor (TS_DIRETOR$TX_RESP_Q201 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q202 <- factor (TS_DIRETOR$TX_RESP_Q202 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q203 <- factor (TS_DIRETOR$TX_RESP_Q203 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q204 <- factor (TS_DIRETOR$TX_RESP_Q204 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q205 <- factor (TS_DIRETOR$TX_RESP_Q205 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q206 <- factor (TS_DIRETOR$TX_RESP_Q206 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q207 <- factor (TS_DIRETOR$TX_RESP_Q207 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q208 <- factor (TS_DIRETOR$TX_RESP_Q208 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
# TS_DIRETOR$TX_RESP_Q209 <- factor (TS_DIRETOR$TX_RESP_Q209 ,levels = c ('A' ,'B' ),
#                                   labels = c( 'Sim', 'Não' ))
# 
