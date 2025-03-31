/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos e Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_2EF                                                */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                    */
/*                   2º ANO DO ENSINO FUNDAMENTAL DO SAEB 2021                         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ALUNO_2EF.CSV no diretório C:\ do computador.	                                   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                          
/***************************************************************************************/

proc format;

value ID_REGIAO
1 = 'Norte'
2 = 'Nordeste'
3 = 'Sudeste'
4 = 'Sul'
5 = 'Centro-Oeste';

value ID_UF
11 = 'RO'
12 = 'AC'
13 = 'AM'
14 = 'RR'
15 = 'PA'
16 = 'AP'
17 = 'TO'
21 = 'MA'
22 = 'PI'
23 = 'CE'
24 = 'RN'
25 = 'PB'
26 = 'PE'
27 = 'AL'
28 = 'SE'
29 = 'BA'
31 = 'MG'
32 = 'ES'
33 = 'RJ'
35 = 'SP'
41 = 'PR'
42 = 'SC'
43 = 'RS'
50 = 'MS'
51 = 'MT'
52 = 'GO'
53 = 'DF';

value ID_AREA
1 = 'Capital'
2 = 'Interior';

value IN_PUBLICA
0 = 'Privada'
1 = 'Pública';

value ID_LOCALIZACAO
1 = 'Urbana'
2 = 'Rural';

value ID_SERIE
2 = '2º Ano do Ensino Fundamental';

value IN_SITUACAO_CENSO
0 = 'Não consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO_LP       
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_MT       
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA_LP
0= 'Ausente'
1= 'Presente';

value IN_PRESENCA_MT
0= 'Ausente'
1= 'Presente';

value $CO_CONCEITO_Q1_LP
A= 'Escrita ortográfica'
B= 'Escrita alfabética'
C= 'Escrita silábico-alfabética ou silábica com valor sonoro'
D= 'Branco e nulo'
IP= 'Imagem com problema';

value $CO_CONCEITO_Q2_LP
A = 'Escrita ortográfica'
B = 'Escrita alfabética'
C = 'Escrita silábico-alfabética ou silábica com valor sonoro'
D = 'Branco e nulo'
IP = 'Imagem com problema';

value $CO_RESPOSTA_TEXTO
BR = 'Branco'
NL = 'Nulo'
TX = 'Texto';

value $CO_CONCEITO_PROPOSITO
. = 'Branco'
* = 'Nulo'
A = 'A'
B = 'B';

value $CO_CONCEITO_ELEMENTO
. = 'Branco'
* = 'Nulo'
A1 = 'A1'
A2 = 'A2'
B = 'B'
C = 'C';

value $CO_CONCEITO_SEGMENTACAO
. = 'Branco'
* = 'Nulo'
A = 'A'
B = 'B'
C = 'C';

value $CO_TEXTO_GRAFIA
. = 'Branco'
* = 'Nulo'
A = 'A'
B = 'B';

value CO_CONCEITO_Q1_MT
2  = 'Crédito completo'
20 = 'Crédito completo'
21 = 'Crédito completo'
22 = 'Crédito completo'
23 = 'Crédito completo'
24 = 'Crédito completo'
11 = 'Crédito parcial'
12 = 'Crédito parcial'
13 = 'Crédito parcial'
0  = 'Nenhum crédito'
7  = 'Erros de impressão ou digitalização'
.  = 'Em branco';

value CO_CONCEITO_Q2_MT
2  = 'Crédito completo'
20 = 'Crédito completo'
21 = 'Crédito completo'
22 = 'Crédito completo'
23 = 'Crédito completo'
24 = 'Crédito completo'
11 = 'Crédito parcial'
12 = 'Crédito parcial'
13 = 'Crédito parcial'
0  = 'Nenhum crédito'
7  = 'Erros de impressão ou digitalização'
.  = 'Em branco';

value IN_PROFICIENCIA_LP 
0 = 'Não' 
1 = 'Sim';

value IN_PROFICIENCIA_MT 
0 = 'Não' 
1 = 'Sim';

value IN_AMOSTRA 
0 = 'Não' 
1 = 'Sim';

RUN;

DATA WORK.TS_ALUNO_2EF;

INFILE 'C:/TS_ALUNO_2EF.csv' /*Endereço do arquivo*/
		LRECL=346
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

INPUT

ID_SAEB          : 4.
ID_REGIAO        : 1.
ID_UF            : 2.
ID_MUNICIPIO     : 7.
ID_AREA          : 1.
ID_ESCOLA        : 8.
IN_PUBLICA : 1.
ID_LOCALIZACAO   : 1.
ID_TURMA         : 7.
ID_SERIE         : 1.
ID_ALUNO         : 8.
IN_SITUACAO_CENSO : 1.
IN_PREENCHIMENTO_LP : 1.
IN_PREENCHIMENTO_MT : 1.
IN_PRESENCA_LP   : 1.
IN_PRESENCA_MT   : 1.
ID_CADERNO_LP    : 2.
ID_BLOCO_1_LP    : 1.
ID_BLOCO_2_LP    : 1.
NU_BLOCO_1_ABERTA_LP : 1.
NU_BLOCO_2_ABERTA_LP : 1.
ID_CADERNO_MT    : 2.
ID_BLOCO_1_MT    : 1.
ID_BLOCO_2_MT    : 1.
NU_BLOCO_1_ABERTA_MT : 1.
NU_BLOCO_2_ABERTA_MT : 1.
TX_RESP_BLOCO1_LP : $CHAR8.
TX_RESP_BLOCO2_LP : $CHAR8.
CO_CONCEITO_Q1_LP : $CHAR2.
CO_CONCEITO_Q2_LP : $CHAR2.
CO_RESPOSTA_TEXTO : $CHAR2.
CO_CONCEITO_PROPOSITO : $CHAR1.
CO_CONCEITO_ELEMENTO : $CHAR2.
CO_CONCEITO_SEGMENTACAO : $CHAR1.
CO_TEXTO_GRAFIA  : $CHAR1.
TX_RESP_BLOCO1_MT : $CHAR9.
TX_RESP_BLOCO2_MT : $CHAR9.
CO_CONCEITO_Q1_MT : 1.
CO_CONCEITO_Q2_MT : 1.
IN_PROFICIENCIA_LP : 1.
IN_PROFICIENCIA_MT : 1.
IN_AMOSTRA       : 1.
ESTRATO          : 9.
PESO_ALUNO_LP    : 12.
PROFICIENCIA_LP  : 10.
ERRO_PADRAO_LP : 10.
PROFICIENCIA_LP_SAEB : 12.
ERRO_PADRAO_LP_SAEB : 10.
PESO_ALUNO_MT    : 12.
PROFICIENCIA_MT  : 10.
ERRO_PADRAO_MT : 10.
PROFICIENCIA_MT_SAEB : 12.
ERRO_PADRAO_MT_SAEB : 10. ;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_SERIE FORMAT=ID_SERIE37.;
ATTRIB IN_SITUACAO_CENSO FORMAT=IN_SITUACAO_CENSO15.;
ATTRIB IN_PREENCHIMENTO_LP FORMAT=IN_PREENCHIMENTO_LP20.;
ATTRIB IN_PREENCHIMENTO_MT FORMAT=IN_PREENCHIMENTO_MT20.;
ATTRIB IN_PRESENCA_LP FORMAT=IN_PRESENCA_LP20.;
ATTRIB IN_PRESENCA_MT FORMAT=IN_PRESENCA_MT20.;
ATTRIB CO_CONCEITO_Q1_LP FORMAT=$CO_CONCEITO_Q1_LP.;
ATTRIB CO_CONCEITO_Q2_LP FORMAT=$CO_CONCEITO_Q2_LP.;
ATTRIB CO_RESPOSTA_TEXTO FORMAT=$CO_RESPOSTA_TEXTO.;
ATTRIB CO_CONCEITO_PROPOSITO FORMAT=$CO_CONCEITO_PROPOSITO.;
ATTRIB CO_CONCEITO_ELEMENTO FORMAT=$CO_CONCEITO_ELEMENTO.;
ATTRIB CO_CONCEITO_SEGMENTACAO FORMAT=$CO_CONCEITO_SEGMENTACAO.;
ATTRIB CO_TEXTO_GRAFIA FORMAT=$CO_TEXTO_GRAFIA.;
ATTRIB CO_CONCEITO_Q1_MT FORMAT=CO_CONCEITO_Q1_MT35.;
ATTRIB CO_CONCEITO_Q2_MT FORMAT=CO_CONCEITO_Q2_MT35.;
ATTRIB IN_PROFICIENCIA_LP FORMAT=IN_PROFICIENCIA_LP3.;
ATTRIB IN_PROFICIENCIA_MT FORMAT=IN_PROFICIENCIA_MT3.;
ATTRIB IN_AMOSTRA FORMAT=IN_AMOSTRA3.;  

LABEL

ID_SAEB = 'Ano do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Código do Município'                                                                                                                   
ID_AREA = 'Área'                                                                                                                    
ID_ESCOLA = 'Código da Escola'                                                                                                                         
IN_PUBLICA = 'Dependência Administrativa'                                                                                             
ID_LOCALIZACAO = 'Localização'                                                                                                                
ID_TURMA = 'Código da turma no Saeb'                                                                                                 
ID_TURNO = 'Turno da turma'                                                                                                                            
ID_SERIE = 'Série'                                                                                                                                     
ID_ALUNO = 'Código do aluno no Saeb'                                                                                                        
IN_SITUACAO_CENSO = 'Indicador de consistência com o Censo Escolar 2021'
IN_PREENCHIMENTO_LP = 'Indicador de preenchimento da prova de Língua Portuguesa'
IN_PREENCHIMENTO_MT = 'Indicador de preenchimento da prova de Matemática'
IN_PRESENCA_LP = 'Indicador de presença na prova de Língua Portuguesa'
IN_PRESENCA_MT = 'Indicador de presença na prova de Matemática'
ID_CADERNO_LP = 'Número do caderno de prova de Língua Portuguesa'
ID_BLOCO_1_LP = 'Identificador do Bloco 1 de Língua Portuguesa'
ID_BLOCO_2_LP = 'Identificador do Bloco 2 de Língua Portuguesa'
NU_BLOCO_1_ABERTA_LP = 'Identificador do Bloco 1 de resposta construída em Língua Portuguesa'
NU_BLOCO_2_ABERTA_LP = 'Identificador do Bloco 2 de resposta construída em Língua Portuguesa'
ID_CADERNO_MT = 'Número de caderno de prova de Matemática'
ID_BLOCO_1_MT = 'Identificador do Bloco 1 de Matemática'
ID_BLOCO_2_MT = 'Identificador do Bloco 2 de Matemática'
NU_BLOCO_1_ABERTA_MT = 'Identificador do Bloco 1 de resposta construída em Matemática'
NU_BLOCO_2_ABERTA_MT = 'Identificador do Bloco 2 de resposta construída em Matemática'
TX_RESP_BLOCO1_LP = 'Resposta do aluno ao Bloco 1 da Prova de Língua Portuguesa'
TX_RESP_BLOCO2_LP = 'Resposta do aluno ao Bloco 2 da Prova de Língua Portuguesa'
CO_CONCEITO_Q1_LP = 'Conceito obtido na questão 1 de resposta construída em Língua Portuguesa'
CO_CONCEITO_Q2_LP = 'Conceito obtido na questão 2 de resposta construída em Língua Portuguesa'
CO_RESPOSTA_TEXTO = 'Análise da Produção Textual'
CO_CONCEITO_PROPOSITO = 'Conceito obtido para propósito na produção de texto em Língua Portuguesa'
CO_CONCEITO_ELEMENTO = 'Conceito obtido para elemento na produção de texto em Língua Portuguesa'
CO_CONCEITO_SEGMENTACAO = 'Conceito obtido para segmentação na produção de texto em Língua Portuguesa'
CO_TEXTO_GRAFIA = 'Conceito obtido para grafia na produção de texto em Língua Portuguesa'
TX_RESP_BLOCO1_MT = 'Resposta do aluno ao Bloco 1 da Prova de Matemática'
TX_RESP_BLOCO2_MT = 'Resposta do aluno ao Bloco 2 da Prova de Matemática'
CO_CONCEITO_Q1_MT = 'Conceito obtido na questão 1 de resposta construída em Matemática'
CO_CONCEITO_Q2_MT = 'Conceito obtido na questão 2 de resposta construída em Matemática'
IN_PROFICIENCIA_LP = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Língua Portuguesa)'
IN_PROFICIENCIA_MT = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Matemática)'
IN_AMOSTRA = 'Indicador de participação da amostra'
ESTRATO = 'Descrição dos estratos'
PESO_ALUNO_LP = 'Peso do aluno em Língua Portuguesa'
PROFICIENCIA_LP = 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_LP = 'Erro padrão da proficiência em Língua Portuguesa'
PROFICIENCIA_LP_SAEB = 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 750, desvio = 50 (do SAEB/19)'
ERRO_PADRAO_LP_SAEB = 'Erro padrão da proficiência transformada em Língua Portuguesa'
PESO_ALUNO_MT = 'Peso do aluno em Matemática'
PROFICIENCIA_MT = 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_MT = 'Erro padrão da proficiência em Matemática'
PROFICIENCIA_MT_SAEB = 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 750, desvio = 50 (do SAEB/19)'
ERRO_PADRAO_MT_SAEB = 'Erro padrão da proficiência transformada em Matemática';                                                                              

RUN;QUIT;