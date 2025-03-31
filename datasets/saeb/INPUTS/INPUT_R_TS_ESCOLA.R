# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_ESCOLA                                                     */
# /*-------------------------------------------------------------------------------------*/
# /*  DESCRICAO:   PROGRAMA PARA LEITURA DOS RESULTADOS DAS ESCOLAS DO SAEB 2021         */
# /*                                                                                     */
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_ESCOLA.CSV no diretório C:\ do computador.	                                     */
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

TS_ESCOLA <- data.table::fread(input='TS_ESCOLA.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------

# TS_ESCOLA$ID_REGIAO <- factor(TS_ESCOLA$ID_REGIAO, levels = c(1,2,3,4,5),
#                               labels = c( 'Norte', 'Nordeste', 'Sudeste', 'Sul', 'Centro-Oeste'))
# 
# TS_ESCOLA$ID_UF <- factor(TS_ESCOLA$ID_UF, levels = c(11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53),
#                           labels = c( 'RO', 'AC', 'AM', 'RR', 'PA', 'AP', 'TO', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'MG', 'ES', 'RJ', 'SP', 'PR', 'SC', 'RS', 'MS', 'MT', 'GO', 'DF'))
# 
# TS_ESCOLA$ID_AREA <- factor(TS_ESCOLA$ID_AREA, levels = c(1,2),
#                             labels = c( 'Capital', 'Interior'))
# 
# TS_ESCOLA$IN_PUBLICA <- factor(TS_ESCOLA$IN_PUBLICA, levels = c(0,1),
#                                        labels = c('Privada','Pública'))
# 
# TS_ESCOLA$ID_LOCALIZACAO <- factor(TS_ESCOLA$ID_LOCALIZACAO, levels = c(1,2),
#                                    labels = c('Urbana', 'Rural'))


