/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos e Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_2EF                                                */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                    */
/*                   2� ANO DO ENSINO FUNDAMENTAL DO SAEB 2021                         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_ALUNO_2EF.CSV no diret�rio C:\ do computador.	                                   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as vari�veis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATEN��O                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	               */
/* acordo com o dicion�rio de dados que comp�e os microdados. Para abrir               */
/* os dados sem os r�tulos, basta importar diretamente no SAS.                         */
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
1 = 'P�blica';

value ID_LOCALIZACAO
1 = 'Urbana'
2 = 'Rural';

value ID_SERIE
2 = '2� Ano do Ensino Fundamental';

value IN_SITUACAO_CENSO
0 = 'N�o consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO_LP       
0 = 'Prova n�o preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_MT       
0 = 'Prova n�o preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA_LP
0= 'Ausente'
1= 'Presente';

value IN_PRESENCA_MT
0= 'Ausente'
1= 'Presente';

value $CO_CONCEITO_Q1_LP
A= 'Escrita ortogr�fica'
B= 'Escrita alfab�tica'
C= 'Escrita sil�bico-alfab�tica ou sil�bica com valor sonoro'
D= 'Branco e nulo'
IP= 'Imagem com problema';

value $CO_CONCEITO_Q2_LP
A = 'Escrita ortogr�fica'
B = 'Escrita alfab�tica'
C = 'Escrita sil�bico-alfab�tica ou sil�bica com valor sonoro'
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
2  = 'Cr�dito completo'
20 = 'Cr�dito completo'
21 = 'Cr�dito completo'
22 = 'Cr�dito completo'
23 = 'Cr�dito completo'
24 = 'Cr�dito completo'
11 = 'Cr�dito parcial'
12 = 'Cr�dito parcial'
13 = 'Cr�dito parcial'
0  = 'Nenhum cr�dito'
7  = 'Erros de impress�o ou digitaliza��o'
.  = 'Em branco';

value CO_CONCEITO_Q2_MT
2  = 'Cr�dito completo'
20 = 'Cr�dito completo'
21 = 'Cr�dito completo'
22 = 'Cr�dito completo'
23 = 'Cr�dito completo'
24 = 'Cr�dito completo'
11 = 'Cr�dito parcial'
12 = 'Cr�dito parcial'
13 = 'Cr�dito parcial'
0  = 'Nenhum cr�dito'
7  = 'Erros de impress�o ou digitaliza��o'
.  = 'Em branco';

value IN_PROFICIENCIA_LP 
0 = 'N�o' 
1 = 'Sim';

value IN_PROFICIENCIA_MT 
0 = 'N�o' 
1 = 'Sim';

value IN_AMOSTRA 
0 = 'N�o' 
1 = 'Sim';

RUN;

DATA WORK.TS_ALUNO_2EF;

INFILE 'C:/TS_ALUNO_2EF.csv' /*Endere�o do arquivo*/
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
ID_REGIAO = 'C�digo da Regi�o'                                                                                                                         
ID_UF = 'C�digo da Unidade da Federa��o'                                                                                                               
ID_MUNICIPIO = 'C�digo do Munic�pio'                                                                                                                   
ID_AREA = '�rea'                                                                                                                    
ID_ESCOLA = 'C�digo da Escola'                                                                                                                         
IN_PUBLICA = 'Depend�ncia Administrativa'                                                                                             
ID_LOCALIZACAO = 'Localiza��o'                                                                                                                
ID_TURMA = 'C�digo da turma no Saeb'                                                                                                 
ID_TURNO = 'Turno da turma'                                                                                                                            
ID_SERIE = 'S�rie'                                                                                                                                     
ID_ALUNO = 'C�digo do aluno no Saeb'                                                                                                        
IN_SITUACAO_CENSO = 'Indicador de consist�ncia com o Censo Escolar 2021'
IN_PREENCHIMENTO_LP = 'Indicador de preenchimento da prova de L�ngua Portuguesa'
IN_PREENCHIMENTO_MT = 'Indicador de preenchimento da prova de Matem�tica'
IN_PRESENCA_LP = 'Indicador de presen�a na prova de L�ngua Portuguesa'
IN_PRESENCA_MT = 'Indicador de presen�a na prova de Matem�tica'
ID_CADERNO_LP = 'N�mero do caderno de prova de L�ngua Portuguesa'
ID_BLOCO_1_LP = 'Identificador do Bloco 1 de L�ngua Portuguesa'
ID_BLOCO_2_LP = 'Identificador do Bloco 2 de L�ngua Portuguesa'
NU_BLOCO_1_ABERTA_LP = 'Identificador do Bloco 1 de resposta constru�da em L�ngua Portuguesa'
NU_BLOCO_2_ABERTA_LP = 'Identificador do Bloco 2 de resposta constru�da em L�ngua Portuguesa'
ID_CADERNO_MT = 'N�mero de caderno de prova de Matem�tica'
ID_BLOCO_1_MT = 'Identificador do Bloco 1 de Matem�tica'
ID_BLOCO_2_MT = 'Identificador do Bloco 2 de Matem�tica'
NU_BLOCO_1_ABERTA_MT = 'Identificador do Bloco 1 de resposta constru�da em Matem�tica'
NU_BLOCO_2_ABERTA_MT = 'Identificador do Bloco 2 de resposta constru�da em Matem�tica'
TX_RESP_BLOCO1_LP = 'Resposta do aluno ao Bloco 1 da Prova de L�ngua Portuguesa'
TX_RESP_BLOCO2_LP = 'Resposta do aluno ao Bloco 2 da Prova de L�ngua Portuguesa'
CO_CONCEITO_Q1_LP = 'Conceito obtido na quest�o 1 de resposta constru�da em L�ngua Portuguesa'
CO_CONCEITO_Q2_LP = 'Conceito obtido na quest�o 2 de resposta constru�da em L�ngua Portuguesa'
CO_RESPOSTA_TEXTO = 'An�lise da Produ��o Textual'
CO_CONCEITO_PROPOSITO = 'Conceito obtido para prop�sito na produ��o de texto em L�ngua Portuguesa'
CO_CONCEITO_ELEMENTO = 'Conceito obtido para elemento na produ��o de texto em L�ngua Portuguesa'
CO_CONCEITO_SEGMENTACAO = 'Conceito obtido para segmenta��o na produ��o de texto em L�ngua Portuguesa'
CO_TEXTO_GRAFIA = 'Conceito obtido para grafia na produ��o de texto em L�ngua Portuguesa'
TX_RESP_BLOCO1_MT = 'Resposta do aluno ao Bloco 1 da Prova de Matem�tica'
TX_RESP_BLOCO2_MT = 'Resposta do aluno ao Bloco 2 da Prova de Matem�tica'
CO_CONCEITO_Q1_MT = 'Conceito obtido na quest�o 1 de resposta constru�da em Matem�tica'
CO_CONCEITO_Q2_MT = 'Conceito obtido na quest�o 2 de resposta constru�da em Matem�tica'
IN_PROFICIENCIA_LP = 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos no caderno de prova de L�ngua Portuguesa)'
IN_PROFICIENCIA_MT = 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos no caderno de prova de Matem�tica)'
IN_AMOSTRA = 'Indicador de participa��o da amostra'
ESTRATO = 'Descri��o dos estratos'
PESO_ALUNO_LP = 'Peso do aluno em L�ngua Portuguesa'
PROFICIENCIA_LP = 'Profici�ncia do aluno em L�ngua Portuguesa calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'
ERRO_PADRAO_LP = 'Erro padr�o da profici�ncia em L�ngua Portuguesa'
PROFICIENCIA_LP_SAEB = 'Profici�ncia em L�ngua Portuguesa transformada na escala �nica do SAEB, com m�dia = 750, desvio = 50 (do SAEB/19)'
ERRO_PADRAO_LP_SAEB = 'Erro padr�o da profici�ncia transformada em L�ngua Portuguesa'
PESO_ALUNO_MT = 'Peso do aluno em Matem�tica'
PROFICIENCIA_MT = 'Profici�ncia do aluno em Matem�tica calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'
ERRO_PADRAO_MT = 'Erro padr�o da profici�ncia em Matem�tica'
PROFICIENCIA_MT_SAEB = 'Profici�ncia do aluno em Matem�tica transformada na escala �nica do SAEB, com m�dia = 750, desvio = 50 (do SAEB/19)'
ERRO_PADRAO_MT_SAEB = 'Erro padr�o da profici�ncia transformada em Matem�tica';                                                                              

RUN;QUIT;