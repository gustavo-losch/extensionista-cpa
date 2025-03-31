/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_PROFESSOR.sps                                                           */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTION�RIO DO PROFESSOR */
/*                     DO SAEB 2021                                                                               */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_PROFESSOR.CSV no diret�rio C:\ do computador.	                        	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.                                                                                       */
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
/* Os R�tulos de algumas vari�veis n�o est�o completos, em virtude do tamanho do.      */
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o   */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem a Consulta do Dicion�rio de       */
/* Vari�veis para conhecer o enunciado completo.                                                     	  */
/* 							   */
/*******************************************************************************************************/



GET DATA
  /TYPE=TXT
  /FILE="C:\TS_PROFESSOR.csv"
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
  ID_PROFESSOR F10.0
  ID_SERIE F2.0
  SQ_QUESTIONARIO F1.0
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  IN_PREENCHIMENTO_OUTRA_TURMA F1.0
  TX_RESP_Q001 A8
 TX_RESP_Q002 A8
 TX_RESP_Q003 A8
 TX_RESP_Q004 A8
 TX_RESP_Q005 A8
 TX_RESP_Q006 A8
 TX_RESP_Q007 A8
 TX_RESP_Q008 A8
 TX_RESP_Q009 A8
 TX_RESP_Q010 A8
 TX_RESP_Q011 A8
 TX_RESP_Q012 A8
 TX_RESP_Q013 A8
 TX_RESP_Q014 A8
 TX_RESP_Q015 A8
 TX_RESP_Q016 A8
 TX_RESP_Q017 A8
 TX_RESP_Q018 A8
 TX_RESP_Q019 A8
 TX_RESP_Q020 A8
 TX_RESP_Q021 A8
 TX_RESP_Q022 A8
 TX_RESP_Q023 A8
 TX_RESP_Q024 A8
 TX_RESP_Q025 A8
 TX_RESP_Q026 A8
 TX_RESP_Q027 A8
 TX_RESP_Q028 A8
 TX_RESP_Q029 A8
 TX_RESP_Q030 A8
 TX_RESP_Q031 A8
 TX_RESP_Q032 A8
 TX_RESP_Q033 A8
 TX_RESP_Q034 A8
 TX_RESP_Q035 A8
 TX_RESP_Q036 A8
 TX_RESP_Q037 A8
 TX_RESP_Q038 A8
 TX_RESP_Q039 A8
 TX_RESP_Q040 A8
 TX_RESP_Q041 A8
 TX_RESP_Q042 A8
 TX_RESP_Q043 A8
 TX_RESP_Q044 A8
 TX_RESP_Q045 A8
 TX_RESP_Q046 A8
 TX_RESP_Q047 A8
 TX_RESP_Q048 A8
 TX_RESP_Q049 A8
 TX_RESP_Q050 A8
 TX_RESP_Q051 A8
 TX_RESP_Q052 A8
 TX_RESP_Q053 A8
 TX_RESP_Q054 A8
 TX_RESP_Q055 A8
 TX_RESP_Q056 A8
 TX_RESP_Q057 A8
 TX_RESP_Q058 A8
 TX_RESP_Q059 A8
 TX_RESP_Q060 A8
 TX_RESP_Q061 A8
 TX_RESP_Q062 A8
 TX_RESP_Q063 A8
 TX_RESP_Q064 A8
 TX_RESP_Q065 A8
 TX_RESP_Q066 A8
 TX_RESP_Q067 A8
 TX_RESP_Q068 A8
 TX_RESP_Q069 A8
 TX_RESP_Q070 A8
 TX_RESP_Q071 A8
 TX_RESP_Q072 A8
 TX_RESP_Q073 A8
 TX_RESP_Q074 A8
 TX_RESP_Q075 A8
 TX_RESP_Q076 A8
 TX_RESP_Q077 A8
 TX_RESP_Q078 A8
 TX_RESP_Q079 A8
 TX_RESP_Q080 A8
 TX_RESP_Q081 A8
 TX_RESP_Q082 A8
 TX_RESP_Q083 A8
 TX_RESP_Q084 A8
 TX_RESP_Q085 A8
 TX_RESP_Q086 A8
 TX_RESP_Q087 A8
 TX_RESP_Q088 A8
 TX_RESP_Q089 A8
 TX_RESP_Q090 A8
 TX_RESP_Q091 A8
 TX_RESP_Q092 A8
 TX_RESP_Q093 A8
 TX_RESP_Q094 A8
 TX_RESP_Q095 A8
 TX_RESP_Q096 A8
 TX_RESP_Q097 A8
 TX_RESP_Q098 A8
 TX_RESP_Q099 A8
 TX_RESP_Q100 A8
 TX_RESP_Q101 A8
 TX_RESP_Q102 A8
 TX_RESP_Q103 A8
 TX_RESP_Q104 A8
 TX_RESP_Q105 A8
 TX_RESP_Q106 A8
 TX_RESP_Q107 A8
 TX_RESP_Q108 A8
 TX_RESP_Q109 A8
 TX_RESP_Q110 A8
 TX_RESP_Q111 A8
 TX_RESP_Q112 A8
 TX_RESP_Q113 A8
 TX_RESP_Q114 A8
 TX_RESP_Q115 A8
 TX_RESP_Q116 A8
 TX_RESP_Q117 A8
 TX_RESP_Q118 A8
 TX_RESP_Q119 A8
 TX_RESP_Q120 A8
 TX_RESP_Q121 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

VARIABLE LABELS ID_SAEB 'Ano de aplica��o do Saeb'.
VARIABLE LABELS ID_REGIAO 'C�digo da Regi�o'.
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Cento-Oeste'.
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
0 'Interior'.
VARIABLE LABELS ID_ESCOLA 'C�digo da Escola'.
VARIABLE LABELS IN_PUBLICA 'Depend�ncia Administrativa'.
VALUE LABELS IN_PUBLICA
1 'P�blica'
0 'Privada'.
VARIABLE LABELS ID_LOCALIZACAO 'Localiza��o'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS ID_TURMA 'C�digo da turma no Saeb'.
VARIABLE LABELS ID_PROFESSOR 'C�digo do professor no Saeb'.
VARIABLE LABELS ID_SERIE 'S�rie'.
VALUE LABELS ID_SERIE
2  '2� ano EF'
5  '5� ano EF'
9  '9� ano EF'
12 '3�/4� s�ries do Ensino M�dio Tradicional'
13 '3�/4� s�ries do Ensino M�dio Integrado'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'.

VARIABLE LABELS SQ_QUESTIONARIO 'Sequencial do question�rio na turma'.
VALUE LABELS SQ_QUESTIONARIO
1 'L�ngua Portuguesa'
2 'Matem�tica'
3 'Reserva'.

VARIABLE LABELS IN_PREENCHIMENTO_OUTRA_TURMA 'Indicador de preenchimento do question�rio para outra turma, pelo mesmo professor'.
VALUE LABELS IN_PREENCHIMENTO_OUTRA_TURMA
0 'N�o'
1 'Sim'.

VARIABLE LABELS TX_RESP_Q001 'Qual � o seu sexo?'.
 VALUE LABELS TX_RESP_Q001
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Masculino.'
 'B' 'Feminino.'.
 VARIABLE LABELS TX_RESP_Q002 'Qual a sua cor ou ra�a?'.
 VALUE LABELS TX_RESP_Q002
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Branca.'
 'B' 'Preta.'
 'C' 'Parda.'
 'D' 'Amarela.'
 'E' 'Ind�gena.'
 'F' 'N�o quero declarar.'.
 VARIABLE LABELS TX_RESP_Q003 'Qual � a sua idade? Indique a faixa et�ria que contenha a sua idade.'.
 VALUE LABELS TX_RESP_Q003
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'At� 24 anos.'
 'B' 'De 25 a 29 anos.'
 'C' 'De 30 a 39 anos.'
 'D' 'De 40 a 49 anos.'
 'E' 'De 50 a 54 anos.'
 'F' '55 anos ou mais.'.
 VARIABLE LABELS TX_RESP_Q004 'Voc� possui necessidade especial, defici�ncia, transtorno do espectro autista, ou superdota��o?'.
 VALUE LABELS TX_RESP_Q004
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q005 'H� quantos anos voc� trabalha como professor(a)?'.
 VALUE LABELS TX_RESP_Q005
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Menos de 1 ano.'
 'B' 'De 1 a 2 anos.'
 'C' 'De 3 a 5 anos.'
 'D' 'De 6 a 10 anos.'
 'E' 'De 11 a 15 anos.'
 'F' 'De 16 a 20 anos.'
 'G' 'De 21 a 25 anos.'
 'H' 'Mais de 25 anos.'.
 VARIABLE LABELS TX_RESP_Q006 'H� quantos anos voc� trabalha como professor(a) nesta escola?'.
 VALUE LABELS TX_RESP_Q006
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Menos de 1 ano.'
 'B' 'De 1 a 2 anos.'
 'C' 'De 3 a 5 anos.'
 'D' 'De 6 a 10 anos.'
 'E' 'De 11 a 15 anos.'
 'F' 'De 16 a 20 anos.'
 'G' 'Mais de 20 anos.'.
 VARIABLE LABELS TX_RESP_Q007 'Em quantas escolas voc� trabalha?'.
 VALUE LABELS TX_RESP_Q007
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Apenas nesta.'
 'B' 'Em 2.'
 'C' 'Em 3.'
 'D' 'Em 4 ou mais.'.
 VARIABLE LABELS TX_RESP_Q008 'Qual o seu tipo de v�nculo trabalhista nesta escola?'.
 VALUE LABELS TX_RESP_Q008
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Concursado/efetivo/est�vel.'
 'B' 'Contrato tempor�rio.'
 'C' 'Contrato CLT.'
 'D' 'Outra situa��o trabalhista.'.
 VARIABLE LABELS  TX_RESP_Q009 'Em uma semana normal de trabalho, quantas horas voc� trabalha para esta escola? '.
 VALUE LABELS TX_RESP_Q009
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'At� 10 horas.'
 'B' 'De 11 a 20 horas.'
 'C' 'De 21 a 30 horas.'
 'D' 'De 31 a 40 horas.'
 'E' 'Mais de 40 horas.'.
 VARIABLE LABELS TX_RESP_Q010 'Qual � o seu sal�rio bruto como professor(a)?.'.
 VALUE LABELS TX_RESP_Q010
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'At� R$ 1.100,00.'
 'B' 'De R$ 1.100,01 at� R$ 2.200,00.'
 'C' 'De R$ 2.200,01 at� R$ 3.300,00.'
 'D' 'De R$ 3.300,01 at� R$ 4.400,00.'
 'E' 'De R$ 4.400,01 at� R$ 5.500,00.'
 'F' 'De R$ 5.500,01 at� R$ 6.600,00.'
 'G' 'De R$ 6.600,01 at� R$ 7.700,00.'
 'H' 'De R$ 7.700,01 a R$ 8.800,00.'
 'I' 'Acima de R$ 8.800,01.'.
 VARIABLE LABELS TX_RESP_Q011 'Al�m de ser professor(a) da Educa��o B�sica, voc� exerce outra atividade remunerada?'.
 VALUE LABELS TX_RESP_Q011
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q012 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O �S SEGUINTES AFIRMA��ES SOBRE O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA:  - Tornar-me professor(a) foi a realiza��o de um dos meus sonhos.'.
 VALUE LABELS TX_RESP_Q012
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q013 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - A profiss�o de professor(a) � valorizada pela sociedade.'.
 VALUE LABELS TX_RESP_Q013
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q014 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - As vantagens de ser professor(a) superam claramente as desvantagens.'.
 VALUE LABELS TX_RESP_Q014
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q015 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - No geral, estou satisfeito com o meu trabalho de professor(a).'.
 VALUE LABELS TX_RESP_Q015
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q016 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - Tenho vontade de desistir da profiss�o.'.
 VALUE LABELS TX_RESP_Q016
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q017 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio not�cias por meio de jornais, revistas, internet etc.'.
 VALUE LABELS TX_RESP_Q017
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q018 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio livros n�o relacionados � Educa��o.'.
 VALUE LABELS TX_RESP_Q018
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q019 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Acesso blogs, Youtube, redes sociais (Twitter, Instagram, Facebook etc.).'.
 VALUE LABELS TX_RESP_Q019
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q020 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a filmes.'.
 VALUE LABELS TX_RESP_Q020
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q021 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Vou a exposi��es (museus, centros culturais).'.
 VALUE LABELS TX_RESP_Q021
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q022 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a espet�culos (teatro, shows, circo, etc).'.
 VALUE LABELS TX_RESP_Q022
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q023 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Estudo.'.
 VALUE LABELS TX_RESP_Q023
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q024 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a telejornal'.
 VALUE LABELS TX_RESP_Q024
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS 
TX_RESP_Q025 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA(S) SALA(S) DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Tamanho da sala com rela��o ao n�mero de alunos.'.
 VALUE LABELS TX_RESP_Q025
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q026 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ac�stica.'.
 VALUE LABELS TX_RESP_Q026
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q027 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ilumina��o natural.'.
 VALUE LABELS TX_RESP_Q027
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q028 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ventila��o natural.'.
 VALUE LABELS TX_RESP_Q028
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q029 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Temperatura.'.
 VALUE LABELS TX_RESP_Q029
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q030 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Limpeza.'.
 VALUE LABELS TX_RESP_Q030
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q031 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Acessibilidade f�sica.'.
 VALUE LABELS TX_RESP_Q031
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q032 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Mobili�rio (mesas e carteiras).'.
 VALUE LABELS TX_RESP_Q032
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q033 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Infraestrutura (paredes, teto, assoalho, portas).'.
 VALUE LABELS TX_RESP_Q033
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q034 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Lousa (quadro de giz ou quadro branco).'.
 VALUE LABELS TX_RESP_Q034
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q035 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Livro did�tico'.
 VALUE LABELS TX_RESP_Q035
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�O USO / N�o tem.'
 'B' 'USO E � Inadequado.'
 'C' 'USO E � Pouco adequado.'
 'D' 'USO E � Razoavelmente adequado.'
 'E' 'USO E � Adequado.'.
 VARIABLE LABELS TX_RESP_Q036 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Projetor multim�dia (datashow)'.
 VALUE LABELS TX_RESP_Q036
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�O USO / N�o tem.'
 'B' 'USO E � Inadequado.'
 'C' 'USO E � Pouco adequado.'
 'D' 'USO E � Razoavelmente adequado.'
 'E' 'USO E � Adequado.'.
 VARIABLE LABELS TX_RESP_Q037 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Computador (de mesa, port�til, tablet)'.
 VALUE LABELS TX_RESP_Q037
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�O USO / N�o tem.'
 'B' 'USO E � Inadequado.'
 'C' 'USO E � Pouco adequado.'
 'D' 'USO E � Razoavelmente adequado.'
 'E' 'USO E � Adequado.'.
 VARIABLE LABELS TX_RESP_Q038 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Software'.
 VALUE LABELS TX_RESP_Q038
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�O USO / N�o tem.'
 'B' 'USO E � Inadequado.'
 'C' 'USO E � Pouco adequado.'
 'D' 'USO E � Razoavelmente adequado.'
 'E' 'USO E � Adequado.'.
 VARIABLE LABELS TX_RESP_Q039 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Internet'.
 VALUE LABELS TX_RESP_Q039
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�O USO / N�o tem.'
 'B' 'USO E � Inadequado.'
 'C' 'USO E � Pouco adequado.'
 'D' 'USO E � Razoavelmente adequado.'
 'E' 'USO E � Adequado.'.
 VARIABLE LABELS TX_RESP_Q040 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Recursos pedag�gicos para o atendimento educacional especializado.'.
 VALUE LABELS TX_RESP_Q040
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�O USO / N�o tem.'
 'B' 'USO E � Inadequado.'
 'C' 'USO E � Pouco adequado.'
 'D' 'USO E � Razoavelmente adequado.'
 'E' 'USO E � Adequado.'.
 VARIABLE LABELS TX_RESP_Q041 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Ensino do conte�do que leciono.'.
 VALUE LABELS TX_RESP_Q041
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q042 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Desenvolvimento da aprendizagem.'.
 VALUE LABELS TX_RESP_Q042
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q043 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Utiliza��o de elementos da cultura local na pr�tica pedag�gica.'.
 VALUE LABELS TX_RESP_Q043
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q044 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Gest�o democr�tica.'.
 VALUE LABELS TX_RESP_Q044
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q045 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Planejamento pedag�gico.'.
 VALUE LABELS TX_RESP_Q045
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q046 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Desenvolvimento de instrumentos de avalia��o em sala de aula.'.
 VALUE LABELS TX_RESP_Q046
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q047 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Recursos e pr�ticas pedag�gicas.'.
 VALUE LABELS TX_RESP_Q047
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q048 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Metodologia de ensino para o p�blico-alvo da educa��o especial.'.
 VALUE LABELS TX_RESP_Q048
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q049 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Utilizar conhecimentos sobre o desenvolvimento da aprendizagem.'.
 VALUE LABELS TX_RESP_Q049
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q050 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Uso de tecnologias de informa��o e comunica��o.'.
 VALUE LABELS TX_RESP_Q050
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q051 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Gest�o de conflitos.'.
 VALUE LABELS TX_RESP_Q051
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q052 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Atividades formativas com menos de 20 horas'.
 VALUE LABELS TX_RESP_Q052
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma.'
 'B' 'Uma.'
 'C' 'Duas.'
 'D' 'Tr�s ou mais.'.
 VARIABLE LABELS TX_RESP_Q053 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Cursos de 20 at� 180 horas'.
 VALUE LABELS TX_RESP_Q053
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma.'
 'B' 'Uma.'
 'C' 'Duas.'
 'D' 'Tr�s ou mais.'.
 VARIABLE LABELS TX_RESP_Q054 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Cursos de aperfei�oamento de 180 a 360 horas'.
 VALUE LABELS TX_RESP_Q054
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma.'
 'B' 'Uma.'
 'C' 'Duas.'
 'D' 'Tr�s ou mais.'.
 VARIABLE LABELS TX_RESP_Q055 'CONSIDERANDO TODAS AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Participa��o de professor(es) da(s) escola(s) em que leciono?'.
 VALUE LABELS TX_RESP_Q055
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'Fiz curso ou atividade. Nunca.'
 'C' 'Fiz curso ou atividade. Poucas vezes.'
 'D' 'Fiz curso ou atividade. Muitas vezes.'
 'E' 'Fiz curso ou atividade. Sempre.'.
 VARIABLE LABELS TX_RESP_Q056 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades colaborativas de aprendizado?'.
 VALUE LABELS TX_RESP_Q056
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'Fiz curso ou atividade. Nunca.'
 'C' 'Fiz curso ou atividade. Poucas vezes.'
 'D' 'Fiz curso ou atividade. Muitas vezes.'
 'E' 'Fiz curso ou atividade. Sempre.'.
 VARIABLE LABELS TX_RESP_Q057 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades intercaladas com seu trabalho normal de sala de aula?'.
 VALUE LABELS TX_RESP_Q057
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'Fiz curso ou atividade. Nunca.'
 'C' 'Fiz curso ou atividade. Poucas vezes.'
 'D' 'Fiz curso ou atividade. Muitas vezes.'
 'E' 'Fiz curso ou atividade. Sempre.'.
 VARIABLE LABELS TX_RESP_Q058 'DURANTE ESTE ANO, INDIQUE O(S) N�VEL(IS) DE CURSOS DE P�S-GRADUA��O QUE VOC� CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Especializa��o (m�nimo de 360 horas)'.
 VALUE LABELS TX_RESP_Q058
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz este curso.'
 'B' 'Sim, sem apoio.'
 'C' 'Sim, com apoio parcial.'
 'D' 'Sim, com apoio total.'.
 VARIABLE LABELS TX_RESP_Q059 'DURANTE ESTE ANO, INDIQUE O(S) N�VEL(IS) DE CURSOS DE P�S-GRADUA��O QUE VOC� CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Mestrado (acad�mico ou profissional)'.
 VALUE LABELS TX_RESP_Q059
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz este curso.'
 'B' 'Sim, sem apoio.'
 'C' 'Sim, com apoio parcial.'
 'D' 'Sim, com apoio total.'.
 VARIABLE LABELS TX_RESP_Q060 'DURANTE ESTE ANO, INDIQUE O(S) N�VEL(IS) DE CURSOS DE P�S-GRADUA��O QUE VOC� CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Doutorado'.
 VALUE LABELS TX_RESP_Q060
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz este curso.'
 'B' 'Sim, sem apoio.'
 'C' 'Sim, com apoio parcial.'
 'D' 'Sim, com apoio total.'.
 VARIABLE LABELS TX_RESP_Q061 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprofundar seus conhecimentos sobre as disciplinas que leciona.'.
 VALUE LABELS TX_RESP_Q061
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'N�o contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q062 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Compreender o processo de aprendizagem.'.
 VALUE LABELS TX_RESP_Q062
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'N�o contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q063 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar os processos avaliativos de sala de aula.'.
 VALUE LABELS TX_RESP_Q063
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'N�o contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q064 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Utilizar novas tecnologias para apoiar minhas atividades.'.
 VALUE LABELS TX_RESP_Q064
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'N�o contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q065 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Colaborar com meus colegas na prepara��o de atividades e projetos.'.
 VALUE LABELS TX_RESP_Q065
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'N�o contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q066 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar as metodologias de ensino.'.
 VALUE LABELS TX_RESP_Q066
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'N�o contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q067 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Auxiliar na media��o de conflitos em sala de aula.'.
 VALUE LABELS TX_RESP_Q067
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o fiz curso ou atividade.'
 'B' 'N�o contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q068 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Escolha do material did�tico.'.
 VALUE LABELS TX_RESP_Q068
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q069 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Metodologia de ensino.'.
 VALUE LABELS TX_RESP_Q069
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q070 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS - Conte�dos trabalhados em sala.'.
 VALUE LABELS TX_RESP_Q070
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q071 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Instrumentos para avaliar os(as) alunos(as).'.
 VALUE LABELS TX_RESP_Q071
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q072 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Peso de cada instrumento de avalia��o na nota final do(a) aluno(a).'.
 VALUE LABELS TX_RESP_Q072
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q073 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Sele��o de conte�dos usados nas provas.'.
 VALUE LABELS TX_RESP_Q073
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q074 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/s�rie. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'.
 VALUE LABELS TX_RESP_Q074
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o existe Conselho de Classe nesta escola.'
 'B' 'Nenhuma vez.'
 'C' 'Uma ou duas vezes.'
 'D' 'Tr�s ou quatro vezes.'
 'E' 'Mais de quatro vezes.'
 'F' 'N�o sei.'.
 VARIABLE LABELS TX_RESP_Q075 'SOBRE O PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Seu conte�do � discutido em reuni�es?'.
 VALUE LABELS TX_RESP_Q075
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o sei.'
 'B' 'N�o.'
 'C' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q076 'SOBRE O PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Os(As) professores(as) participaram da sua elabora��o?'.
 VALUE LABELS TX_RESP_Q076
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o sei.'
 'B' 'N�o.'
 'C' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q077 'SOBRE O PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Os pais participam da sua elabora��o?'.
 VALUE LABELS TX_RESP_Q077
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o sei.'
 'B' 'N�o.'
 'C' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q078 'O(A) diretor(a) debate com frequ�ncia metas educacionais com os(as) professores(as) nas reuni�es.'.
 VALUE LABELS TX_RESP_Q078
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q079 'O(A) diretor(a) e os(as) professores(as) sempre tratam a qualidade de ensino como uma responsabilidade coletiva.'.
 VALUE LABELS TX_RESP_Q079
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q080 'O(A) diretor(a) informa aos(�s) professores(as) sobre as possibilidades de aperfei�oamento profissional.'.
 VALUE LABELS TX_RESP_Q080
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q081 'O(A) diretor(a) d� aten��o especial a aspectos relacionados � aprendizagem dos alunos.'.
 VALUE LABELS TX_RESP_Q081
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q082 'O(A) diretor(a) d� aten��o especial a aspectos relacionados �s normas administrativas.'.
 VALUE LABELS TX_RESP_Q082
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q083 'O(A) diretor(a) com frequ�ncia me anima e me motiva para o trabalho.'.
 VALUE LABELS TX_RESP_Q083
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q084 'Tenho confian�a no(a) diretor(a) como profissional.'.
 VALUE LABELS TX_RESP_Q084
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q085 'O(A) diretor(a) e os(as) professores(as) sempre asseguram que as quest�es relacionadas � qualidade da conviv�ncia e gest�o de conflitos sejam uma responsabilidade coletiva.'.
 VALUE LABELS TX_RESP_Q085
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS 
TX_RESP_Q086 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o das fam�lias para superar problemas que interferem na aprendizagem dos(as) alunos(as) (aus�ncias, indisciplinas, acompanhamento das tarefas escolares etc.)'.
 VALUE LABELS TX_RESP_Q086
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q087 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o entre professores (feedback, trocas, projetos interdisciplinares).'.
 VALUE LABELS TX_RESP_Q087
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q088 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o da gest�o da institui��o (equipe gestora, equipe pedag�gica) para superar dificuldades de sala de aula.'.
 VALUE LABELS TX_RESP_Q088
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q089 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Apoio da Secretaria de Educa��o para superar as dificuldades da escola.'.
 VALUE LABELS TX_RESP_Q089
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q090 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Respeitam os acordos estabelecidos em sala.'.
 VALUE LABELS TX_RESP_Q090
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q091 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Chegam pontualmente.'.
 VALUE LABELS TX_RESP_Q091
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q092 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Est�o sempre presentes �s minhas aulas.'.
 VALUE LABELS TX_RESP_Q092
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q093 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - S�o respeitosos(as) comigo.'.
 VALUE LABELS TX_RESP_Q093
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q094 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - S�o respeitosos(as) com os(as) colegas da turma.'.
 VALUE LABELS TX_RESP_Q094
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q095 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Interessam-se pela disciplina que leciono.'.
 VALUE LABELS TX_RESP_Q095
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q096 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Atentado � vida.'.
 VALUE LABELS TX_RESP_Q096
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q097 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Les�o corporal'.
 VALUE LABELS TX_RESP_Q097
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q098 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Roubo ou furto.'.
 VALUE LABELS TX_RESP_Q098
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q099 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Tr�fico de drogas.'.
 VALUE LABELS TX_RESP_Q099
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q100 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Perman�ncia de pessoas sob efeito de �lcool.'.
 VALUE LABELS TX_RESP_Q100
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q101 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Perman�ncia de pessoas sob efeito de drogas.'.
 VALUE LABELS TX_RESP_Q101
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q102 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Porte de arma (rev�lver, faca, canivete etc.).'.
 VALUE LABELS TX_RESP_Q102
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q103 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Ass�dio sexual.'.
 VALUE LABELS TX_RESP_Q103
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q104 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Discrimina��o.'.
 VALUE LABELS TX_RESP_Q104
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q105 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Bullying (amea�as ou ofensas verbais).'.
 VALUE LABELS TX_RESP_Q105
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q106 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Invas�o do espa�o escolar.'.
 VALUE LABELS TX_RESP_Q106
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q107 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Depreda��o do patrim�nio escolar (vandalismo).'.
 VALUE LABELS TX_RESP_Q107
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q108 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Tiroteio ou bala perdida.'.
 VALUE LABELS TX_RESP_Q108
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'.
 VARIABLE LABELS TX_RESP_Q109 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - Repetir de ano � bom para o(a) aluno(a) que n�o apresentou desempenho satisfat�rio.'.
 VALUE LABELS TX_RESP_Q109
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q110 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - A quantidade de avalia��es externas (municipais, estaduais ou federais) � excessiva.'.
 VALUE LABELS TX_RESP_Q110
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q111 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - As avalia��es externas (municipais, estaduais ou federais) t�m direcionado o que deve ser ensinado na escola.'.
 VALUE LABELS TX_RESP_Q111
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q112 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - As avalia��es externas t�m ajudado a melhorar o processo de ensino e aprendizagem desta escola.'.
 VALUE LABELS TX_RESP_Q112
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q113 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - A maior parte dos estudantes apresentam problemas de aprendizagem.'.
 VALUE LABELS TX_RESP_Q113
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q114 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Propor dever de casa.'.
 VALUE LABELS TX_RESP_Q114
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q115 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Corrigir com os(as) alunos(as) o dever de casa.'.
 VALUE LABELS TX_RESP_Q115
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q116 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Desenvolver atividades em grupo para que os(as) alunos(as) busquem solu��es de problemas.'.
 VALUE LABELS TX_RESP_Q116
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q117 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Desenvolver projetos tem�ticos com o objetivo de aprimorar as habilidades de trabalho em equipe'.
 VALUE LABELS TX_RESP_Q117
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS
 TX_RESP_Q118 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Solicitar que os(as) alunos(as) copiem textos e atividades do livro did�tico ou da lousa (quadro de giz ou quadro branco).'.
 VALUE LABELS TX_RESP_Q118
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS 
TX_RESP_Q119 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Estimular os(as) alunos(as) a expressarem suas opini�es e a desenvolverem argumentos a partir de temas diversos.'.
 VALUE LABELS TX_RESP_Q119
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q120 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Propor situa��es de aprendizagem que sejam familiares ou de interesse dos(as) alunos(as).'.
 VALUE LABELS TX_RESP_Q120
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'V�rias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q121 'NESTE ANO, SOBRE O ATENDIMENTO DOS ESTUDANTES P�BLICO ALVO DA EDUCA��O ESPECIAL, NA(S) SUA(S) TURMA(S) DESTA ESCOLA, INDIQUE A SITUA��O QUE MAIS SE APROCIMA DE SUA REALIDADE:'.
 VALUE LABELS TX_RESP_Q121
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o h� estudantes p�blico alvo da educa��o especial na(s) minha(s) turma(s).'
 'B' 'A escola oferece o apoio para os estudantes p�blico alvo da educa��o especial sempre que necess�rio.'
 'C' 'Em alguns casos, a escola oferece o apoio para os estudantes p�blico alvo da educa��o especial.'
 'D' 'A escola n�o oferece o apoio para os estudantes p�blico alvo da educa��o especial.'.