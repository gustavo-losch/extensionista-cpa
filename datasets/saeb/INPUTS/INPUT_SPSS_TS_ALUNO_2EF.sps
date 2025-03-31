/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_2EF                                                                   */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     2� ANO DO ENSINO FUNDAMENTAL DO SAEB 2021                        */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_ALUNO_2EF.CSV no diret�rio C:\ do computador.	                                     */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.					 */	
/*							 */
/* Para a leitura dos microdados � necess�rio a sele��o do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
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
VARIABLE LABELS ID_REGIAO 'C�digo da Regi�o'.      
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'.                                                                                                          
VARIABLE LABELS ID_UF 'C�digo da Unidade da Federa��o'.
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
VARIABLE LABELS ID_MUNICIPIO 'C�digo do Munic�pio'.
VARIABLE LABELS ID_AREA '�rea'.
VALUE LABELS ID_AREA
1 'Capital'
2 'Interior'.
VARIABLE LABELS ID_ESCOLA 'C�digo da Escola'.
VARIABLE LABELS IN_PUBLICA 'Depend�ncia Administrativa'.
VALUE LABELS IN_PUBLICA
0 'Privada'
1 'P�blica'.
VARIABLE LABELS ID_LOCALIZACAO 'Localiza��o'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS ID_TURMA 'C�digo da turma no Saeb'.                                                                                                                 
VARIABLE LABELS ID_SERIE 'S�rie'.                 
VALUE LABELS ID_SERIE
2 '2� Ano do Ensino Fundamental'.                                                                                                                    
VARIABLE LABELS ID_ALUNO 'C�digo do aluno no Saeb'.                                                                                                        
VARIABLE LABELS IN_SITUACAO_CENSO 'Indicador de consist�ncia com o Censo Escolar 2021'.
VALUE LABELS IN_SITUACAO_CENSO
0 'N�o consistente'
1 'Consistente'.
VARIABLE LABELS IN_PREENCHIMENTO_LP 'Indicador de preenchimento da prova de L�ngua Portuguesa'.
VALUE LABELS IN_PREENCHIMENTO_LP
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PREENCHIMENTO_MT 'Indicador de preenchimento da prova de Matem�tica'.
VALUE LABELS IN_PREENCHIMENTO_MT
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PRESENCA_LP 'Indicador de presen�a na prova de L�ngua Portuguesa'.
VALUE LABELS IN_PRESENCA_LP
0 'Ausente'
1 'Presente'.
VARIABLE LABELS IN_PRESENCA_MT 'Indicador de presen�a na prova de Matem�tica'.
VALUE LABELS IN_PRESENCA_MT
0 'Ausente'
1 'Presente'.
VARIABLE LABELS ID_CADERNO_LP 'N�mero do caderno de prova de L�ngua Portuguesa'.
VARIABLE LABELS ID_BLOCO_1_LP 'Identificador do Bloco 1 da prova de L�ngua Portuguesa'.
VARIABLE LABELS ID_BLOCO_2_LP 'Identificador do Bloco 2 da prova de L�ngua Portuguesa'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_LP 'Identificador do Bloco 1 de resposta constru�da em L�ngua Portuguesa'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_LP 'Identificador do Bloco 2 de resposta constru�da em L�ngua Portuguesa'.
VARIABLE LABELS ID_CADERNO_MT 'N�mero do caderno de prova de Matem�tica'.
VARIABLE LABELS ID_BLOCO_1_MT 'Identificador do Bloco 1 da prova de Matem�tica'.
VARIABLE LABELS ID_BLOCO_2_MT 'Identificador do Bloco 2 da prova de Matem�tica'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_MT 'Identificador do Bloco 1 de resposta constru�da em Matem�tica'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_MT 'Identificador do Bloco 2 de resposta constru�da em Matem�tica'.
VARIABLE LABELS TX_RESP_BLOCO1_LP 'Resposta do aluno ao Bloco 1 da prova de L�ngua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO2_LP 'Resposta do aluno ao Bloco 2 da prova de L�ngua Portuguesa'.
VARIABLE LABELS CO_CONCEITO_Q1_LP 'Conceito obtido na quest�o 1 de resposta constru�da em L�ngua Portuguesa'.
VALUE LABELS CO_CONCEITO_Q1_LP
'A' 'Escrita ortogr�fica'
'B' 'Escrita alfab�tica'
'C' 'Escrita sil�bico-alfab�tica ou sil�bica com valor sonoro'
'D' 'Branco e nulo'
'IP' 'Imagem com problema'.
VARIABLE LABELS CO_CONCEITO_Q2_LP 'Conceito obtido na quest�o 2 de resposta constru�da em L�ngua Portuguesa'.
VALUE LABELS CO_CONCEITO_Q2_LP
'A' 'Escrita ortogr�fica'
'B' 'Escrita alfab�tica'
'C' 'Escrita sil�bico-alfab�tica ou sil�bica com valor sonoro'
'D' 'Branco e nulo'
'IP' 'Imagem com problema'.
VARIABLE LABELS CO_RESPOSTA_TEXTO 'An�lise da Produ��o Textual'.
VALUE LABELS CO_RESPOSTA_TEXTO
'BR'  'Branco'
'NL'  'Nulo'
'TX'  'Texto'.
VARIABLE LABELS CO_CONCEITO_PROPOSITO 'Conceito obtido para prop�sito na produ��o de texto em L�ngua Portuguesa'.
VALUE LABELS CO_CONCEITO_PROPOSITO
'.'  'Branco'
'*'  'Nulo'
'A'  'A'
'B' 'B'.
VARIABLE LABELS CO_CONCEITO_ELEMENTO 'Conceito obtido para elemento na produ��o de texto em L�ngua Portuguesa'.
VALUE LABELS CO_CONCEITO_ELEMENTO
'.'  'Branco'
'*'  'Nulo'
'A1'  'A1'
'A2'  'A2'
'B' 'B'
'C' 'C'.
VARIABLE LABELS CO_CONCEITO_SEGMENTACAO 'Conceito obtido para segmenta��o na produ��o de texto em L�ngua Portuguesa'.
VALUE LABELS CO_CONCEITO_SEGMENTACAO
'.'  'Branco'
'*'  'Nulo'
'A'  'A'
'B' 'B'
'C' 'C'.
VARIABLE LABELS CO_TEXTO_GRAFIA 'Conceito obtido para grafia na produ��o de texto em L�ngua Portuguesa'.
VALUE LABELS CO_CONCEITO_PROPOSITO
'.'  'Branco'
'*'  'Nulo'
'A'  'A'
'B' 'B'.
VARIABLE LABELS TX_RESP_BLOCO1_MT 'Resposta do aluno ao Bloco 1 da prova de Matem�tica'.
VARIABLE LABELS TX_RESP_BLOCO2_MT 'Resposta do aluno ao Bloco 2 da prova de Matem�tica'.
VARIABLE LABELS CO_CONCEITO_Q1_MT 'Conceito obtido na quest�o 1 de resposta constru�da em Matem�tica'.
VALUE LABELS CO_CONCEITO_Q1_MT
'2'   'Cr�dito completo'
'20'  'Cr�dito completo'
'21'  'Cr�dito completo'
'22'  'Cr�dito completo'
'23'  'Cr�dito completo'
'24'  'Cr�dito completo'
'11'  'Cr�dito parcial'
'12'  'Cr�dito parcial'
'13'  'Cr�dito parcial'
'0'  'Nenhum cr�dito'
'7'   'Erros de impress�o ou digitaliza��o'
'.'   'Em branco'.
VARIABLE LABELS CO_CONCEITO_Q2_MT 'Conceito obtido na quest�o 2 de resposta constru�da em Matem�tica'.
VALUE LABELS CO_CONCEITO_Q2_MT
'2'   'Cr�dito completo'
'20'  'Cr�dito completo'
'21'  'Cr�dito completo'
'22'  'Cr�dito completo'
'23'  'Cr�dito completo'
'24'  'Cr�dito completo'
'11'  'Cr�dito parcial'
'12'  'Cr�dito parcial'
'13'  'Cr�dito parcial'
'0'  'Nenhum cr�dito'
'7'   'Erros de impress�o ou digitaliza��o'
'.'   'Em branco'.
VARIABLE LABELS IN_PROFICIENCIA_LP 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos na prova de L�ngua Portuguesa)'.
VALUE LABELS IN_PROFICIENCIA_LP
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_MT 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos na prova de Matem�tica)'.
VALUE LABELS IN_PROFICIENCIA_MT
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_AMOSTRA 'Indicador de participa��o da amostra'.
VALUE LABELS IN_AMOSTRA
0 'N�o'
1 'Sim'.
VARIABLE LABELS ESTRATO 'Descri��o dos estratos'.
VARIABLE LABELS PESO_ALUNO_LP 'Peso do aluno em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP 'Profici�ncia do aluno em L�ngua Portuguesa calculada na escala �nica do SAEB, com m�dia=0 e desvio=1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_LP 'Erro padr�o da profici�ncia em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP_SAEB 'Profici�ncia em L�ngua Portuguesa transformada na escala �nica do SAEB, com m�dia=750, desvio=50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_LP_SAEB 'Erro padr�o da profici�ncia transformada em L�ngua Portuguesa'.
VARIABLE LABELS PESO_ALUNO_MT 'Peso do aluno em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_MT 'Profici�ncia do aluno em Matem�tica calculada na escala �nica do SAEB, com m�dia=0 e desvio=1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_MT 'Erro padr�o da profici�ncia em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_MT_SAEB 'Profici�ncia do aluno em Matem�tica transformada na escala �nica do SAEB, com m�dia=750, desvio=50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_MT_SAEB 'Erro padr�o da profici�ncia transformada em Matem�tica'.