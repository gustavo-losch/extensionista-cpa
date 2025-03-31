/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_PROFESSOR.sps                                                           */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO PROFESSOR */
/*                     DO SAEB 2021                                                                               */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_PROFESSOR.CSV no diretório C:\ do computador.	                        	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
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
/* Os Rótulos de algumas variáveis não estão completos, em virtude do tamanho do.      */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o   */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem a Consulta do Dicionário de       */
/* Variáveis para conhecer o enunciado completo.                                                     	  */
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

VARIABLE LABELS ID_SAEB 'Ano de aplicação do Saeb'.
VARIABLE LABELS ID_REGIAO 'Código da Região'.
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Cento-Oeste'.
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
0 'Interior'.
VARIABLE LABELS ID_ESCOLA 'Código da Escola'.
VARIABLE LABELS IN_PUBLICA 'Dependência Administrativa'.
VALUE LABELS IN_PUBLICA
1 'Pública'
0 'Privada'.
VARIABLE LABELS ID_LOCALIZACAO 'Localização'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS ID_TURMA 'Código da turma no Saeb'.
VARIABLE LABELS ID_PROFESSOR 'Código do professor no Saeb'.
VARIABLE LABELS ID_SERIE 'Série'.
VALUE LABELS ID_SERIE
2  '2º ano EF'
5  '5º ano EF'
9  '9º ano EF'
12 '3ª/4ª séries do Ensino Médio Tradicional'
13 '3ª/4ª séries do Ensino Médio Integrado'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'Não preenchido'
1 'Preenchido parcial ou totalmente'.

VARIABLE LABELS SQ_QUESTIONARIO 'Sequencial do questionário na turma'.
VALUE LABELS SQ_QUESTIONARIO
1 'Língua Portuguesa'
2 'Matemática'
3 'Reserva'.

VARIABLE LABELS IN_PREENCHIMENTO_OUTRA_TURMA 'Indicador de preenchimento do questionário para outra turma, pelo mesmo professor'.
VALUE LABELS IN_PREENCHIMENTO_OUTRA_TURMA
0 'Não'
1 'Sim'.

VARIABLE LABELS TX_RESP_Q001 'Qual é o seu sexo?'.
 VALUE LABELS TX_RESP_Q001
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Masculino.'
 'B' 'Feminino.'.
 VARIABLE LABELS TX_RESP_Q002 'Qual a sua cor ou raça?'.
 VALUE LABELS TX_RESP_Q002
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Branca.'
 'B' 'Preta.'
 'C' 'Parda.'
 'D' 'Amarela.'
 'E' 'Indígena.'
 'F' 'Não quero declarar.'.
 VARIABLE LABELS TX_RESP_Q003 'Qual é a sua idade? Indique a faixa etária que contenha a sua idade.'.
 VALUE LABELS TX_RESP_Q003
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Até 24 anos.'
 'B' 'De 25 a 29 anos.'
 'C' 'De 30 a 39 anos.'
 'D' 'De 40 a 49 anos.'
 'E' 'De 50 a 54 anos.'
 'F' '55 anos ou mais.'.
 VARIABLE LABELS TX_RESP_Q004 'Você possui necessidade especial, deficiência, transtorno do espectro autista, ou superdotação?'.
 VALUE LABELS TX_RESP_Q004
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q005 'Há quantos anos você trabalha como professor(a)?'.
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
 VARIABLE LABELS TX_RESP_Q006 'Há quantos anos você trabalha como professor(a) nesta escola?'.
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
 VARIABLE LABELS TX_RESP_Q007 'Em quantas escolas você trabalha?'.
 VALUE LABELS TX_RESP_Q007
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Apenas nesta.'
 'B' 'Em 2.'
 'C' 'Em 3.'
 'D' 'Em 4 ou mais.'.
 VARIABLE LABELS TX_RESP_Q008 'Qual o seu tipo de vínculo trabalhista nesta escola?'.
 VALUE LABELS TX_RESP_Q008
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Concursado/efetivo/estável.'
 'B' 'Contrato temporário.'
 'C' 'Contrato CLT.'
 'D' 'Outra situação trabalhista.'.
 VARIABLE LABELS  TX_RESP_Q009 'Em uma semana normal de trabalho, quantas horas você trabalha para esta escola? '.
 VALUE LABELS TX_RESP_Q009
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Até 10 horas.'
 'B' 'De 11 a 20 horas.'
 'C' 'De 21 a 30 horas.'
 'D' 'De 31 a 40 horas.'
 'E' 'Mais de 40 horas.'.
 VARIABLE LABELS TX_RESP_Q010 'Qual é o seu salário bruto como professor(a)?.'.
 VALUE LABELS TX_RESP_Q010
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Até R$ 1.100,00.'
 'B' 'De R$ 1.100,01 até R$ 2.200,00.'
 'C' 'De R$ 2.200,01 até R$ 3.300,00.'
 'D' 'De R$ 3.300,01 até R$ 4.400,00.'
 'E' 'De R$ 4.400,01 até R$ 5.500,00.'
 'F' 'De R$ 5.500,01 até R$ 6.600,00.'
 'G' 'De R$ 6.600,01 até R$ 7.700,00.'
 'H' 'De R$ 7.700,01 a R$ 8.800,00.'
 'I' 'Acima de R$ 8.800,01.'.
 VARIABLE LABELS TX_RESP_Q011 'Além de ser professor(a) da Educação Básica, você exerce outra atividade remunerada?'.
 VALUE LABELS TX_RESP_Q011
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q012 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO ÀS SEGUINTES AFIRMAÇÕES SOBRE O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA:  - Tornar-me professor(a) foi a realização de um dos meus sonhos.'.
 VALUE LABELS TX_RESP_Q012
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q013 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - A profissão de professor(a) é valorizada pela sociedade.'.
 VALUE LABELS TX_RESP_Q013
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q014 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - As vantagens de ser professor(a) superam claramente as desvantagens.'.
 VALUE LABELS TX_RESP_Q014
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q015 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - No geral, estou satisfeito com o meu trabalho de professor(a).'.
 VALUE LABELS TX_RESP_Q015
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q016 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - Tenho vontade de desistir da profissão.'.
 VALUE LABELS TX_RESP_Q016
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q017 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio notícias por meio de jornais, revistas, internet etc.'.
 VALUE LABELS TX_RESP_Q017
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q018 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio livros não relacionados à Educação.'.
 VALUE LABELS TX_RESP_Q018
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q019 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Acesso blogs, Youtube, redes sociais (Twitter, Instagram, Facebook etc.).'.
 VALUE LABELS TX_RESP_Q019
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q020 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a filmes.'.
 VALUE LABELS TX_RESP_Q020
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q021 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Vou a exposições (museus, centros culturais).'.
 VALUE LABELS TX_RESP_Q021
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q022 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a espetáculos (teatro, shows, circo, etc).'.
 VALUE LABELS TX_RESP_Q022
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q023 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Estudo.'.
 VALUE LABELS TX_RESP_Q023
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q024 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a telejornal'.
 VALUE LABELS TX_RESP_Q024
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS 
TX_RESP_Q025 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA(S) SALA(S) DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Tamanho da sala com relação ao número de alunos.'.
 VALUE LABELS TX_RESP_Q025
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q026 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Acústica.'.
 VALUE LABELS TX_RESP_Q026
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q027 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Iluminação natural.'.
 VALUE LABELS TX_RESP_Q027
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q028 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Ventilação natural.'.
 VALUE LABELS TX_RESP_Q028
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q029 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Temperatura.'.
 VALUE LABELS TX_RESP_Q029
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q030 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Limpeza.'.
 VALUE LABELS TX_RESP_Q030
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q031 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Acessibilidade física.'.
 VALUE LABELS TX_RESP_Q031
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q032 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Mobiliário (mesas e carteiras).'.
 VALUE LABELS TX_RESP_Q032
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q033 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Infraestrutura (paredes, teto, assoalho, portas).'.
 VALUE LABELS TX_RESP_Q033
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q034 'TENDO COMO REFERÊNCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Lousa (quadro de giz ou quadro branco).'.
 VALUE LABELS TX_RESP_Q034
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Inadequado.'
 'B' 'Pouco adequado.'
 'C' 'Razoavelmente adequado.'
 'D' 'Adequado.'.
 VARIABLE LABELS TX_RESP_Q035 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Livro didático'.
 VALUE LABELS TX_RESP_Q035
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'NÃO USO / Não tem.'
 'B' 'USO E É Inadequado.'
 'C' 'USO E É Pouco adequado.'
 'D' 'USO E É Razoavelmente adequado.'
 'E' 'USO E É Adequado.'.
 VARIABLE LABELS TX_RESP_Q036 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Projetor multimídia (datashow)'.
 VALUE LABELS TX_RESP_Q036
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'NÃO USO / Não tem.'
 'B' 'USO E É Inadequado.'
 'C' 'USO E É Pouco adequado.'
 'D' 'USO E É Razoavelmente adequado.'
 'E' 'USO E É Adequado.'.
 VARIABLE LABELS TX_RESP_Q037 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Computador (de mesa, portátil, tablet)'.
 VALUE LABELS TX_RESP_Q037
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'NÃO USO / Não tem.'
 'B' 'USO E É Inadequado.'
 'C' 'USO E É Pouco adequado.'
 'D' 'USO E É Razoavelmente adequado.'
 'E' 'USO E É Adequado.'.
 VARIABLE LABELS TX_RESP_Q038 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Software'.
 VALUE LABELS TX_RESP_Q038
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'NÃO USO / Não tem.'
 'B' 'USO E É Inadequado.'
 'C' 'USO E É Pouco adequado.'
 'D' 'USO E É Razoavelmente adequado.'
 'E' 'USO E É Adequado.'.
 VARIABLE LABELS TX_RESP_Q039 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Internet'.
 VALUE LABELS TX_RESP_Q039
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'NÃO USO / Não tem.'
 'B' 'USO E É Inadequado.'
 'C' 'USO E É Pouco adequado.'
 'D' 'USO E É Razoavelmente adequado.'
 'E' 'USO E É Adequado.'.
 VARIABLE LABELS TX_RESP_Q040 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Recursos pedagógicos para o atendimento educacional especializado.'.
 VALUE LABELS TX_RESP_Q040
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'NÃO USO / Não tem.'
 'B' 'USO E É Inadequado.'
 'C' 'USO E É Pouco adequado.'
 'D' 'USO E É Razoavelmente adequado.'
 'E' 'USO E É Adequado.'.
 VARIABLE LABELS TX_RESP_Q041 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Ensino do conteúdo que leciono.'.
 VALUE LABELS TX_RESP_Q041
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q042 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Desenvolvimento da aprendizagem.'.
 VALUE LABELS TX_RESP_Q042
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q043 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Utilização de elementos da cultura local na prática pedagógica.'.
 VALUE LABELS TX_RESP_Q043
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q044 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Gestão democrática.'.
 VALUE LABELS TX_RESP_Q044
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q045 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Planejamento pedagógico.'.
 VALUE LABELS TX_RESP_Q045
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q046 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Desenvolvimento de instrumentos de avaliação em sala de aula.'.
 VALUE LABELS TX_RESP_Q046
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q047 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Recursos e práticas pedagógicas.'.
 VALUE LABELS TX_RESP_Q047
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q048 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Metodologia de ensino para o público-alvo da educação especial.'.
 VALUE LABELS TX_RESP_Q048
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS 
TX_RESP_Q049 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Utilizar conhecimentos sobre o desenvolvimento da aprendizagem.'.
 VALUE LABELS TX_RESP_Q049
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q050 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Uso de tecnologias de informação e comunicação.'.
 VALUE LABELS TX_RESP_Q050
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q051 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZAÇÃO DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Gestão de conflitos.'.
 VALUE LABELS TX_RESP_Q051
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma necessidade.'
 'B' 'Pouca necessidade.'
 'C' 'Moderada necessidade.'
 'D' 'Grande necessidade.'.
 VARIABLE LABELS TX_RESP_Q052 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOCÊ REALIZOU NESSE ANO: - Atividades formativas com menos de 20 horas'.
 VALUE LABELS TX_RESP_Q052
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma.'
 'B' 'Uma.'
 'C' 'Duas.'
 'D' 'Três ou mais.'.
 VARIABLE LABELS TX_RESP_Q053 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOCÊ REALIZOU NESSE ANO: - Cursos de 20 até 180 horas'.
 VALUE LABELS TX_RESP_Q053
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma.'
 'B' 'Uma.'
 'C' 'Duas.'
 'D' 'Três ou mais.'.
 VARIABLE LABELS TX_RESP_Q054 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOCÊ REALIZOU NESSE ANO: - Cursos de aperfeiçoamento de 180 a 360 horas'.
 VALUE LABELS TX_RESP_Q054
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhuma.'
 'B' 'Uma.'
 'C' 'Duas.'
 'D' 'Três ou mais.'.
 VARIABLE LABELS TX_RESP_Q055 'CONSIDERANDO TODAS AS ATIVIDADES FORMATIVAS DE CURTA DURAÇÃO (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Participação de professor(es) da(s) escola(s) em que leciono?'.
 VALUE LABELS TX_RESP_Q055
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Fiz curso ou atividade. Nunca.'
 'C' 'Fiz curso ou atividade. Poucas vezes.'
 'D' 'Fiz curso ou atividade. Muitas vezes.'
 'E' 'Fiz curso ou atividade. Sempre.'.
 VARIABLE LABELS TX_RESP_Q056 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURAÇÃO (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades colaborativas de aprendizado?'.
 VALUE LABELS TX_RESP_Q056
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Fiz curso ou atividade. Nunca.'
 'C' 'Fiz curso ou atividade. Poucas vezes.'
 'D' 'Fiz curso ou atividade. Muitas vezes.'
 'E' 'Fiz curso ou atividade. Sempre.'.
 VARIABLE LABELS TX_RESP_Q057 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURAÇÃO (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades intercaladas com seu trabalho normal de sala de aula?'.
 VALUE LABELS TX_RESP_Q057
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Fiz curso ou atividade. Nunca.'
 'C' 'Fiz curso ou atividade. Poucas vezes.'
 'D' 'Fiz curso ou atividade. Muitas vezes.'
 'E' 'Fiz curso ou atividade. Sempre.'.
 VARIABLE LABELS TX_RESP_Q058 'DURANTE ESTE ANO, INDIQUE O(S) NÍVEL(IS) DE CURSOS DE PÓS-GRADUAÇÃO QUE VOCÊ CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZÁ-LO: - Especialização (mínimo de 360 horas)'.
 VALUE LABELS TX_RESP_Q058
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz este curso.'
 'B' 'Sim, sem apoio.'
 'C' 'Sim, com apoio parcial.'
 'D' 'Sim, com apoio total.'.
 VARIABLE LABELS TX_RESP_Q059 'DURANTE ESTE ANO, INDIQUE O(S) NÍVEL(IS) DE CURSOS DE PÓS-GRADUAÇÃO QUE VOCÊ CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZÁ-LO: - Mestrado (acadêmico ou profissional)'.
 VALUE LABELS TX_RESP_Q059
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz este curso.'
 'B' 'Sim, sem apoio.'
 'C' 'Sim, com apoio parcial.'
 'D' 'Sim, com apoio total.'.
 VARIABLE LABELS TX_RESP_Q060 'DURANTE ESTE ANO, INDIQUE O(S) NÍVEL(IS) DE CURSOS DE PÓS-GRADUAÇÃO QUE VOCÊ CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZÁ-LO: - Doutorado'.
 VALUE LABELS TX_RESP_Q060
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz este curso.'
 'B' 'Sim, sem apoio.'
 'C' 'Sim, com apoio parcial.'
 'D' 'Sim, com apoio total.'.
 VARIABLE LABELS TX_RESP_Q061 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprofundar seus conhecimentos sobre as disciplinas que leciona.'.
 VALUE LABELS TX_RESP_Q061
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Não contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q062 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Compreender o processo de aprendizagem.'.
 VALUE LABELS TX_RESP_Q062
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Não contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q063 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar os processos avaliativos de sala de aula.'.
 VALUE LABELS TX_RESP_Q063
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Não contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q064 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Utilizar novas tecnologias para apoiar minhas atividades.'.
 VALUE LABELS TX_RESP_Q064
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Não contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q065 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Colaborar com meus colegas na preparação de atividades e projetos.'.
 VALUE LABELS TX_RESP_Q065
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Não contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q066 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar as metodologias de ensino.'.
 VALUE LABELS TX_RESP_Q066
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Não contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q067 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Auxiliar na mediação de conflitos em sala de aula.'.
 VALUE LABELS TX_RESP_Q067
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não fiz curso ou atividade.'
 'B' 'Não contribuiu.'
 'C' 'Contribuiu pouco.'
 'D' 'Contribuiu razoavelmente.'
 'E' 'Contribuiu muito.'.
 VARIABLE LABELS TX_RESP_Q068 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES PEDAGÓGICAS: - Escolha do material didático.'.
 VALUE LABELS TX_RESP_Q068
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q069 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES PEDAGÓGICAS: - Metodologia de ensino.'.
 VALUE LABELS TX_RESP_Q069
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q070 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES PEDAGÓGICAS - Conteúdos trabalhados em sala.'.
 VALUE LABELS TX_RESP_Q070
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q071 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES PEDAGÓGICAS: - Instrumentos para avaliar os(as) alunos(as).'.
 VALUE LABELS TX_RESP_Q071
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q072 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES PEDAGÓGICAS: - Peso de cada instrumento de avaliação na nota final do(a) aluno(a).'.
 VALUE LABELS TX_RESP_Q072
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q073 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES PEDAGÓGICAS: - Seleção de conteúdos usados nas provas.'.
 VALUE LABELS TX_RESP_Q073
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Docente da turma.'
 'B' 'Todo o corpo docente da escola.'
 'C' 'Equipe gestora.'
 'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).'.
 VARIABLE LABELS TX_RESP_Q074 'O Conselho de Classe é um órgão formado por todos os professores que lecionam em cada turma/série. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'.
 VALUE LABELS TX_RESP_Q074
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não existe Conselho de Classe nesta escola.'
 'B' 'Nenhuma vez.'
 'C' 'Uma ou duas vezes.'
 'D' 'Três ou quatro vezes.'
 'E' 'Mais de quatro vezes.'
 'F' 'Não sei.'.
 VARIABLE LABELS TX_RESP_Q075 'SOBRE O PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Seu conteúdo é discutido em reuniões?'.
 VALUE LABELS TX_RESP_Q075
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não sei.'
 'B' 'Não.'
 'C' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q076 'SOBRE O PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Os(As) professores(as) participaram da sua elaboração?'.
 VALUE LABELS TX_RESP_Q076
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não sei.'
 'B' 'Não.'
 'C' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q077 'SOBRE O PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Os pais participam da sua elaboração?'.
 VALUE LABELS TX_RESP_Q077
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não sei.'
 'B' 'Não.'
 'C' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q078 'O(A) diretor(a) debate com frequência metas educacionais com os(as) professores(as) nas reuniões.'.
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
 VARIABLE LABELS TX_RESP_Q080 'O(A) diretor(a) informa aos(às) professores(as) sobre as possibilidades de aperfeiçoamento profissional.'.
 VALUE LABELS TX_RESP_Q080
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q081 'O(A) diretor(a) dá atenção especial a aspectos relacionados à aprendizagem dos alunos.'.
 VALUE LABELS TX_RESP_Q081
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q082 'O(A) diretor(a) dá atenção especial a aspectos relacionados às normas administrativas.'.
 VALUE LABELS TX_RESP_Q082
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q083 'O(A) diretor(a) com frequência me anima e me motiva para o trabalho.'.
 VALUE LABELS TX_RESP_Q083
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q084 'Tenho confiança no(a) diretor(a) como profissional.'.
 VALUE LABELS TX_RESP_Q084
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q085 'O(A) diretor(a) e os(as) professores(as) sempre asseguram que as questões relacionadas à qualidade da convivência e gestão de conflitos sejam uma responsabilidade coletiva.'.
 VALUE LABELS TX_RESP_Q085
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS 
TX_RESP_Q086 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Colaboração das famílias para superar problemas que interferem na aprendizagem dos(as) alunos(as) (ausências, indisciplinas, acompanhamento das tarefas escolares etc.)'.
 VALUE LABELS TX_RESP_Q086
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q087 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Colaboração entre professores (feedback, trocas, projetos interdisciplinares).'.
 VALUE LABELS TX_RESP_Q087
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q088 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Colaboração da gestão da instituição (equipe gestora, equipe pedagógica) para superar dificuldades de sala de aula.'.
 VALUE LABELS TX_RESP_Q088
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q089 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Apoio da Secretaria de Educação para superar as dificuldades da escola.'.
 VALUE LABELS TX_RESP_Q089
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Muitas vezes.'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q090 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Respeitam os acordos estabelecidos em sala.'.
 VALUE LABELS TX_RESP_Q090
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q091 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Chegam pontualmente.'.
 VALUE LABELS TX_RESP_Q091
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q092 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Estão sempre presentes às minhas aulas.'.
 VALUE LABELS TX_RESP_Q092
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q093 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - São respeitosos(as) comigo.'.
 VALUE LABELS TX_RESP_Q093
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q094 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - São respeitosos(as) com os(as) colegas da turma.'.
 VALUE LABELS TX_RESP_Q094
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q095 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Interessam-se pela disciplina que leciono.'.
 VALUE LABELS TX_RESP_Q095
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q096 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Atentado à vida.'.
 VALUE LABELS TX_RESP_Q096
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q097 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Lesão corporal'.
 VALUE LABELS TX_RESP_Q097
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q098 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Roubo ou furto.'.
 VALUE LABELS TX_RESP_Q098
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q099 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Tráfico de drogas.'.
 VALUE LABELS TX_RESP_Q099
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q100 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Permanência de pessoas sob efeito de álcool.'.
 VALUE LABELS TX_RESP_Q100
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q101 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Permanência de pessoas sob efeito de drogas.'.
 VALUE LABELS TX_RESP_Q101
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q102 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Porte de arma (revólver, faca, canivete etc.).'.
 VALUE LABELS TX_RESP_Q102
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q103 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Assédio sexual.'.
 VALUE LABELS TX_RESP_Q103
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q104 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Discriminação.'.
 VALUE LABELS TX_RESP_Q104
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q105 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Bullying (ameaças ou ofensas verbais).'.
 VALUE LABELS TX_RESP_Q105
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q106 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Invasão do espaço escolar.'.
 VALUE LABELS TX_RESP_Q106
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q107 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Depredação do patrimônio escolar (vandalismo).'.
 VALUE LABELS TX_RESP_Q107
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q108 'NESTA ESCOLA, NESTE ANO E COM RELAÇÃO AOS EPISÓDIOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM: - Tiroteio ou bala perdida.'.
 VALUE LABELS TX_RESP_Q108
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'.
 VARIABLE LABELS TX_RESP_Q109 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS: - Repetir de ano é bom para o(a) aluno(a) que não apresentou desempenho satisfatório.'.
 VALUE LABELS TX_RESP_Q109
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q110 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS: - A quantidade de avaliações externas (municipais, estaduais ou federais) é excessiva.'.
 VALUE LABELS TX_RESP_Q110
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q111 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS: - As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado na escola.'.
 VALUE LABELS TX_RESP_Q111
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q112 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS: - As avaliações externas têm ajudado a melhorar o processo de ensino e aprendizagem desta escola.'.
 VALUE LABELS TX_RESP_Q112
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q113 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS: - A maior parte dos estudantes apresentam problemas de aprendizagem.'.
 VALUE LABELS TX_RESP_Q113
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Discordo fortemente.'
 'B' 'Discordo.'
 'C' 'Concordo.'
 'D' 'Concordo fortemente.'.
 VARIABLE LABELS TX_RESP_Q114 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS: - Propor dever de casa.'.
 VALUE LABELS TX_RESP_Q114
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q115 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS: - Corrigir com os(as) alunos(as) o dever de casa.'.
 VALUE LABELS TX_RESP_Q115
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q116 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS: - Desenvolver atividades em grupo para que os(as) alunos(as) busquem soluções de problemas.'.
 VALUE LABELS TX_RESP_Q116
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q117 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS: - Desenvolver projetos temáticos com o objetivo de aprimorar as habilidades de trabalho em equipe'.
 VALUE LABELS TX_RESP_Q117
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS
 TX_RESP_Q118 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS: - Solicitar que os(as) alunos(as) copiem textos e atividades do livro didático ou da lousa (quadro de giz ou quadro branco).'.
 VALUE LABELS TX_RESP_Q118
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS 
TX_RESP_Q119 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS: - Estimular os(as) alunos(as) a expressarem suas opiniões e a desenvolverem argumentos a partir de temas diversos.'.
 VALUE LABELS TX_RESP_Q119
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q120 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS: - Propor situações de aprendizagem que sejam familiares ou de interesse dos(as) alunos(as).'.
 VALUE LABELS TX_RESP_Q120
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'Poucas vezes.'
 'C' 'Várias vezes.'
 'D' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q121 'NESTE ANO, SOBRE O ATENDIMENTO DOS ESTUDANTES PÚBLICO ALVO DA EDUCAÇÃO ESPECIAL, NA(S) SUA(S) TURMA(S) DESTA ESCOLA, INDIQUE A SITUAÇÃO QUE MAIS SE APROCIMA DE SUA REALIDADE:'.
 VALUE LABELS TX_RESP_Q121
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não há estudantes público alvo da educação especial na(s) minha(s) turma(s).'
 'B' 'A escola oferece o apoio para os estudantes público alvo da educação especial sempre que necessário.'
 'C' 'Em alguns casos, a escola oferece o apoio para os estudantes público alvo da educação especial.'
 'D' 'A escola não oferece o apoio para os estudantes público alvo da educação especial.'.