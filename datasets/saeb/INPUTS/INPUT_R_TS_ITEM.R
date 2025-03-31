# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_ITEM                                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMAÇÕES GERAIS SOBRE                    */
# /*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO SAEB 2021         */
# /***************************************************************************************/
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_ITEM.CSV no diretório C:\ do computador.	                                       */
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
# Se não estiver instalado
# --------------------
if(!require(data.table)){install.packages('data.table')}

#--------------------
# Caso deseje trocar o local do arquivo, edite a função setwd() a seguir
# informando o local do arquivo.
# Ex. Windows setwd("C:/temp")
#     Linux   setwd("/home")
#--------------------
#setwd('C:\\') 

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_ITEM <- data.table::fread(input='TS_ITEM.csv',integer64='character')

#---------------------------
# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------


# TS_ITEM$ID_SERIE <- factor(TS_ITEM$ID_SERIE, levels = c(2,5,9,12),
#                            labels=c('2º ano do Ensino Fundamental','5º ano do Ensino Fundamental',
#                                     '9º ano do Ensino Fundamental','3ª/4ª séries do Ensino Médio'))
# 
# TS_ITEM$DISCIPLINA <- factor(TS_ITEM$DISCIPLINA, levels = c('CH','CN','LP','MT'),
#                              labels=c('Ciências Humanas','Ciências da Natureza','Língua Portuguesa','Matemática'))
# 
# TS_ITEM$ITEM_MODELO <- factor(TS_ITEM$ITEM_MODELO, levels = c('M2PL','M3PL','MRG', 'M3P'),
#                            labels=c('Modelo logístico de 2 parâmetros','Modelo Logístico de 3 parâmetros',
#                                     'Modelo de resposta gradual', 'Modelo normal de 3 parâmetros'))
