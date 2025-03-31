/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_2EF                                                                   */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     2º ANO DO ENSINO FUNDAMENTAL DO SAEB 2021                        */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_ALUNO_2EF.CSV no diretório C:\ do computador.	                                     */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.					 */	
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */
/*******************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\TS_ALUNO_2EF.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_SAEB F4.0
  ID_REGIAO F1.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_AREA F1.0
  ID_ESCOLA F8.0
  IN_PUBLICA F1.0
  ID_LOCALIZACAO F1.0
  ID_TURMA F6.0
  ID_SERIE F1.0
  ID_ALUNO F8.0
  IN_SITUACAO_CENSO F1.0
  IN_PREENCHIMENTO_LP F1.0 
  IN_PREENCHIMENTO_MT F1.0 
  IN_PRESENCA_LP F1.0 
  IN_PRESENCA_MT F1.0 
  ID_CADERNO_LP F2.0 
  ID_BLOCO_1_LP F1.0 
  ID_BLOCO_2_LP F1.0 
  NU_BLOCO_1_ABERTA_LP F1.0 
  NU_BLOCO_2_ABERTA_LP F1.0 
  ID_CADERNO_MT F2.0 
  ID_BLOCO_1_MT F1.0 
  ID_BLOCO_2_MT F1.0 
  NU_BLOCO_1_ABERTA_MT F1.0 
  NU_BLOCO_2_ABERTA_MT F1.0 
  TX_RESP_BLOCO1_LP A8 
  TX_RESP_BLOCO2_LP A8
  CO_CONCEITO_Q1_LP A2
  CO_CONCEITO_Q2_LP A2
  CO_RESPOSTA_TEXTO A2
  CO_CONCEITO_PROPOSITO A1
  CO_CONCEITO_ELEMENTO A2
  CO_CONCEITO_SEGMENTACAO A1
  CO_TEXTO_GRAFIA A1
  TX_RESP_BLOCO1_MT A9
  TX_RESP_BLOCO2_MT A9
  CO_CONCEITO_Q1_MT A2 
  CO_CONCEITO_Q2_MT A2 
  IN_PROFICIENCIA_LP F1.0 
  IN_PROFICIENCIA_MT F1.0 
  IN_AMOSTRA F1.0
  ESTRATO A15
  PESO_ALUNO_LP COMMA6.2
  PROFICIENCIA_LP COMMA6.2
  ERRO_PADRAO_LP COMMA6.2
  PROFICIENCIA_LP_SAEB COMMA6.2
  ERRO_PADRAO_LP_SAEB COMMA6.2
  PESO_ALUNO_MT COMMA6.2
  PROFICIENCIA_MT COMMA6.2
  ERRO_PADRAO_MT COMMA6.2
  PROFICIENCIA_MT_SAEB COMMA6.2
  ERRO_PADRAO_MT_SAEB COMMA6.2.

CACHE.
EXECUTE.
DATASET NAME TS_ALUNO_2EF WINDOW=FRONT.

VARIABLE LABELS ID_SAEB 'Ano do Saeb'.                                                                                                 
VARIABLE LABELS ID_REGIAO 'Código da Região'.      
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'.                                                                                                          
VARIABLE LABELS ID_UF 'Código da Unidade da Federação'.
VALUE LABELS ID_UF
11 'RO'
12 'AC'
13 'AM'
14 'RR'
15 'PA'
16 'AP'
17 'TO'
21 'MA'
22 'PI'
23 'CE'
24 'RN'
25 'PB'
26 'PE'
27 'AL'
28 'SE'
29 'BA'
31 'MG'
32 'ES'
33 'RJ'
35 'SP'
41 'PR'
42 'SC'
43 'RS'
50 'MS'
51 'MT'
52 'GO'
53 'DF'.
VARIABLE LABELS ID_MUNICIPIO 'Código do Município'.
VARIABLE LABELS ID_AREA 'Área'.
VALUE LABELS ID_AREA
1 'Capital'
2 'Interior'.
VARIABLE LABELS ID_ESCOLA 'Código da Escola'.
VARIABLE LABELS IN_PUBLICA 'Dependência Administrativa'.
VALUE LABELS IN_PUBLICA
0 'Privada'
1 'Pública'.
VARIABLE LABELS ID_LOCALIZACAO 'Localização'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS ID_TURMA 'Código da turma no Saeb'.                                                                                                                 
VARIABLE LABELS ID_SERIE 'Série'.                 
VALUE LABELS ID_SERIE
2 '2º Ano do Ensino Fundamental'.                                                                                                                    
VARIABLE LABELS ID_ALUNO 'Código do aluno no Saeb'.                                                                                                        
VARIABLE LABELS IN_SITUACAO_CENSO 'Indicador de consistência com o Censo Escolar 2021'.
VALUE LABELS IN_SITUACAO_CENSO
0 'Não consistente'
1 'Consistente'.
VARIABLE LABELS IN_PREENCHIMENTO_LP 'Indicador de preenchimento da prova de Língua Portuguesa'.
VALUE LABELS IN_PREENCHIMENTO_LP
0 'Prova não preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PREENCHIMENTO_MT 'Indicador de preenchimento da prova de Matemática'.
VALUE LABELS IN_PREENCHIMENTO_MT
0 'Prova não preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PRESENCA_LP 'Indicador de presença na prova de Língua Portuguesa'.
VALUE LABELS IN_PRESENCA_LP
0 'Ausente'
1 'Presente'.
VARIABLE LABELS IN_PRESENCA_MT 'Indicador de presença na prova de Matemática'.
VALUE LABELS IN_PRESENCA_MT
0 'Ausente'
1 'Presente'.
VARIABLE LABELS ID_CADERNO_LP 'Número do caderno de prova de Língua Portuguesa'.
VARIABLE LABELS ID_BLOCO_1_LP 'Identificador do Bloco 1 da prova de Língua Portuguesa'.
VARIABLE LABELS ID_BLOCO_2_LP 'Identificador do Bloco 2 da prova de Língua Portuguesa'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_LP 'Identificador do Bloco 1 de resposta construída em Língua Portuguesa'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_LP 'Identificador do Bloco 2 de resposta construída em Língua Portuguesa'.
VARIABLE LABELS ID_CADERNO_MT 'Número do caderno de prova de Matemática'.
VARIABLE LABELS ID_BLOCO_1_MT 'Identificador do Bloco 1 da prova de Matemática'.
VARIABLE LABELS ID_BLOCO_2_MT 'Identificador do Bloco 2 da prova de Matemática'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_MT 'Identificador do Bloco 1 de resposta construída em Matemática'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_MT 'Identificador do Bloco 2 de resposta construída em Matemática'.
VARIABLE LABELS TX_RESP_BLOCO1_LP 'Resposta do aluno ao Bloco 1 da prova de Língua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO2_LP 'Resposta do aluno ao Bloco 2 da prova de Língua Portuguesa'.
VARIABLE LABELS CO_CONCEITO_Q1_LP 'Conceito obtido na questão 1 de resposta construída em Língua Portuguesa'.
VALUE LABELS CO_CONCEITO_Q1_LP
'A' 'Escrita ortográfica'
'B' 'Escrita alfabética'
'C' 'Escrita silábico-alfabética ou silábica com valor sonoro'
'D' 'Branco e nulo'
'IP' 'Imagem com problema'.
VARIABLE LABELS CO_CONCEITO_Q2_LP 'Conceito obtido na questão 2 de resposta construída em Língua Portuguesa'.
VALUE LABELS CO_CONCEITO_Q2_LP
'A' 'Escrita ortográfica'
'B' 'Escrita alfabética'
'C' 'Escrita silábico-alfabética ou silábica com valor sonoro'
'D' 'Branco e nulo'
'IP' 'Imagem com problema'.
VARIABLE LABELS CO_RESPOSTA_TEXTO 'Análise da Produção Textual'.
VALUE LABELS CO_RESPOSTA_TEXTO
'BR'  'Branco'
'NL'  'Nulo'
'TX'  'Texto'.
VARIABLE LABELS CO_CONCEITO_PROPOSITO 'Conceito obtido para propósito na produção de texto em Língua Portuguesa'.
VALUE LABELS CO_CONCEITO_PROPOSITO
'.'  'Branco'
'*'  'Nulo'
'A'  'A'
'B' 'B'.
VARIABLE LABELS CO_CONCEITO_ELEMENTO 'Conceito obtido para elemento na produção de texto em Língua Portuguesa'.
VALUE LABELS CO_CONCEITO_ELEMENTO
'.'  'Branco'
'*'  'Nulo'
'A1'  'A1'
'A2'  'A2'
'B' 'B'
'C' 'C'.
VARIABLE LABELS CO_CONCEITO_SEGMENTACAO 'Conceito obtido para segmentação na produção de texto em Língua Portuguesa'.
VALUE LABELS CO_CONCEITO_SEGMENTACAO
'.'  'Branco'
'*'  'Nulo'
'A'  'A'
'B' 'B'
'C' 'C'.
VARIABLE LABELS CO_TEXTO_GRAFIA 'Conceito obtido para grafia na produção de texto em Língua Portuguesa'.
VALUE LABELS CO_CONCEITO_PROPOSITO
'.'  'Branco'
'*'  'Nulo'
'A'  'A'
'B' 'B'.
VARIABLE LABELS TX_RESP_BLOCO1_MT 'Resposta do aluno ao Bloco 1 da prova de Matemática'.
VARIABLE LABELS TX_RESP_BLOCO2_MT 'Resposta do aluno ao Bloco 2 da prova de Matemática'.
VARIABLE LABELS CO_CONCEITO_Q1_MT 'Conceito obtido na questão 1 de resposta construída em Matemática'.
VALUE LABELS CO_CONCEITO_Q1_MT
'2'   'Crédito completo'
'20'  'Crédito completo'
'21'  'Crédito completo'
'22'  'Crédito completo'
'23'  'Crédito completo'
'24'  'Crédito completo'
'11'  'Crédito parcial'
'12'  'Crédito parcial'
'13'  'Crédito parcial'
'0'  'Nenhum crédito'
'7'   'Erros de impressão ou digitalização'
'.'   'Em branco'.
VARIABLE LABELS CO_CONCEITO_Q2_MT 'Conceito obtido na questão 2 de resposta construída em Matemática'.
VALUE LABELS CO_CONCEITO_Q2_MT
'2'   'Crédito completo'
'20'  'Crédito completo'
'21'  'Crédito completo'
'22'  'Crédito completo'
'23'  'Crédito completo'
'24'  'Crédito completo'
'11'  'Crédito parcial'
'12'  'Crédito parcial'
'13'  'Crédito parcial'
'0'  'Nenhum crédito'
'7'   'Erros de impressão ou digitalização'
'.'   'Em branco'.
VARIABLE LABELS IN_PROFICIENCIA_LP 'Indicador para cálculo da proficiência (no mínimo três itens respondidos na prova de Língua Portuguesa)'.
VALUE LABELS IN_PROFICIENCIA_LP
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_MT 'Indicador para cálculo da proficiência (no mínimo três itens respondidos na prova de Matemática)'.
VALUE LABELS IN_PROFICIENCIA_MT
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_AMOSTRA 'Indicador de participação da amostra'.
VALUE LABELS IN_AMOSTRA
0 'Não'
1 'Sim'.
VARIABLE LABELS ESTRATO 'Descrição dos estratos'.
VARIABLE LABELS PESO_ALUNO_LP 'Peso do aluno em Língua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média=0 e desvio=1 na população de referência'.
VARIABLE LABELS ERRO_PADRAO_LP 'Erro padrão da proficiência em Língua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP_SAEB 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média=750, desvio=50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_LP_SAEB 'Erro padrão da proficiência transformada em Língua Portuguesa'.
VARIABLE LABELS PESO_ALUNO_MT 'Peso do aluno em Matemática'.
VARIABLE LABELS PROFICIENCIA_MT 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média=0 e desvio=1 na população de referência'.
VARIABLE LABELS ERRO_PADRAO_MT 'Erro padrão da proficiência em Matemática'.
VARIABLE LABELS PROFICIENCIA_MT_SAEB 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média=750, desvio=50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_MT_SAEB 'Erro padrão da proficiência transformada em Matemática'.