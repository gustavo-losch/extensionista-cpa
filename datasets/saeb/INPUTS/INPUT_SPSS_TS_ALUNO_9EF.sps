/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação- Geral de Instrumentos e Medidas		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_9EF                                                                   */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     9º ANO DO SAEB 2021                                                                    */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_ALUNO_9EF.CSV no diretório C:\ do computador.	                                     */
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
  /FILE="C:\\TS_ALUNO_9EF.csv"
  /DELCASE=LINE
  /DELIMITERS=';'
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
  IN_PREENCHIMENTO_CH F1.0
  IN_PREENCHIMENTO_CN F1.0
  IN_PRESENCA_LP F1.0
  IN_PRESENCA_MT F1.0
  IN_PRESENCA_CH F1.0
  IN_PRESENCA_CN F1.0
  ID_CADERNO_LP F2.0
  ID_BLOCO_1_LP F1.0
  ID_BLOCO_2_LP F1.0
  ID_CADERNO_MT F2.0
  ID_BLOCO_1_MT F1.0
  ID_BLOCO_2_MT F1.0
  ID_CADERNO_CH F2.0
  ID_BLOCO_1_CH F1.0
  ID_BLOCO_2_CH F1.0
  ID_BLOCO_3_CH F1.0
  NU_BLOCO_1_ABERTA_CH F1.0
  NU_BLOCO_2_ABERTA_CH F1.0
  ID_CADERNO_CN F2.0
  ID_BLOCO_1_CN F1.0
  ID_BLOCO_2_CN F1.0
  ID_BLOCO_3_CN F1.0
  NU_BLOCO_1_ABERTA_CN F1.0
  NU_BLOCO_2_ABERTA_CN F1.0
  TX_RESP_BLOCO1_LP A13
  TX_RESP_BLOCO2_LP A13
  TX_RESP_BLOCO1_MT A13
  TX_RESP_BLOCO2_MT A13
  TX_RESP_BLOCO1_CH A10
  TX_RESP_BLOCO2_CH A10
  TX_RESP_BLOCO3_CH A10
  CO_CONCEITO_Q1_CH A1
  CO_CONCEITO_Q2_CH A1
  TX_RESP_BLOCO1_CN A9
  TX_RESP_BLOCO2_CN A9
  TX_RESP_BLOCO3_CN A9
  CO_CONCEITO_Q1_CN A1
  CO_CONCEITO_Q2_CN A1
  IN_PROFICIENCIA_LP F1.0
  IN_PROFICIENCIA_MT F1.0
  IN_PROFICIENCIA_CH F1.0
  IN_PROFICIENCIA_CN F1.0
  IN_AMOSTRA F1.0
  ESTRATO A15
  ESTRATO_CIENCIAS A15
  PESO_ALUNO_LP COMMA6.2
  PROFICIENCIA_LP COMMA6.2
  ERRO_PADRAO_LP COMMA6.2
  PROFICIENCIA_LP_SAEB COMMA6.2
  ERRO_PADRAO_LP_SAEB COMMA6.2
  PESO_ALUNO_MT COMMA6.2
  PROFICIENCIA_MT COMMA6.2
  ERRO_PADRAO_MT COMMA6.2
  PROFICIENCIA_MT_SAEB COMMA6.2
  ERRO_PADRAO_MT_SAEB COMMA6.2
  PESO_ALUNO_CH COMMA6.2
  PROFICIENCIA_CH COMMA6.2
  ERRO_PADRAO_CH COMMA6.2
  PROFICIENCIA_CH_SAEB COMMA6.2
  ERRO_PADRAO_CH_SAEB COMMA6.2
  PESO_ALUNO_CN COMMA6.2
  PROFICIENCIA_CN COMMA6.2
  ERRO_PADRAO_CN COMMA6.2
  PROFICIENCIA_CN_SAEB  COMMA6.2
  ERRO_PADRAO_CN_SAEB COMMA6.2
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  IN_INSE F1.0
  INSE_ALUNO COMMA6.2
  NU_TIPO_NIVEL_INSE F1.0
  PESO_ALUNO_INSE COMMA6.2
  TX_RESP_Q01 A8
 TX_RESP_Q02 A8
 TX_RESP_Q03 A8
 TX_RESP_Q04 A8
 TX_RESP_Q05 A8
 TX_RESP_Q06a A8
 TX_RESP_Q06b A8
 TX_RESP_Q06c A8
 TX_RESP_Q06d A8
 TX_RESP_Q06e A8
 TX_RESP_Q07 A8
 TX_RESP_Q08 A8
 TX_RESP_Q09a A8
 TX_RESP_Q09b A8
 TX_RESP_Q09c A8
 TX_RESP_Q09d A8
 TX_RESP_Q09e A8
 TX_RESP_Q09f A8
 TX_RESP_Q10a A8
 TX_RESP_Q10b A8
 TX_RESP_Q10c A8
 TX_RESP_Q11a A8
 TX_RESP_Q11b A8
 TX_RESP_Q11c A8
 TX_RESP_Q11d A8
 TX_RESP_Q11e A8
 TX_RESP_Q11f A8
 TX_RESP_Q11g A8
 TX_RESP_Q11h A8
 TX_RESP_Q12a A8
 TX_RESP_Q12b A8
 TX_RESP_Q12c A8
 TX_RESP_Q12d A8
 TX_RESP_Q12e A8
 TX_RESP_Q12f A8
 TX_RESP_Q12g A8
 TX_RESP_Q12h A8
 TX_RESP_Q12i A8
 TX_RESP_Q13 A8
 TX_RESP_Q14 A8
 TX_RESP_Q15 A8
 TX_RESP_Q16 A8
 TX_RESP_Q17 A8
 TX_RESP_Q18 A8
 TX_RESP_Q19 A8
 TX_RESP_Q20a A8
 TX_RESP_Q20b A8
 TX_RESP_Q20c A8
 TX_RESP_Q20d A8
 TX_RESP_Q20e A8
 TX_RESP_Q21 A8
 TX_RESP_Q22a A8
 TX_RESP_Q22b A8
 TX_RESP_Q22c A8
 TX_RESP_Q22d A8
 TX_RESP_Q22e A8
 TX_RESP_Q22f A8
 TX_RESP_Q22g A8
 TX_RESP_Q22h A8
 TX_RESP_Q22i A8.

CACHE.
EXECUTE.
DATASET NAME TS_ALUNO_9EF WINDOW=FRONT.

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
9 '9º Ano do Ensino Fundamental'.
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
VARIABLE LABELS IN_PREENCHIMENTO_CH 'Indicador de preenchimento da prova de Ciências Humanas'.
VALUE LABELS IN_PREENCHIMENTO_CH
0 'Prova não preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PREENCHIMENTO_CN 'Indicador de preenchimento da prova de Ciências da Natureza'.
VALUE LABELS IN_PREENCHIMENTO_CN
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
VARIABLE LABELS IN_PRESENCA_CH 'Indicador de presença na prova de Ciências Humanas'.
VALUE LABELS IN_PRESENCA_CH
0 'Ausente'
1 'Presente'.
VARIABLE LABELS IN_PRESENCA_CN 'Indicador de presença na prova de Ciências da Natureza'.
VALUE LABELS IN_PRESENCA_CN
0 'Ausente'
1 'Presente'.
VARIABLE LABELS ID_CADERNO_LP 'Número do caderno de prova de Língua Portuguesa'.
VARIABLE LABELS ID_BLOCO_1_LP 'Identificador do Bloco 1 de Língua Portuguesa'.
VARIABLE LABELS ID_BLOCO_2_LP 'Identificador do Bloco 2 de Língua Portuguesa'.
VARIABLE LABELS ID_CADERNO_MT 'Número do caderno de prova de Matemática'.
VARIABLE LABELS ID_BLOCO_1_MT 'Identificador do Bloco 1 de Matemática'.
VARIABLE LABELS ID_BLOCO_2_MT 'Identificador do Bloco 2 de Matemática'.
VARIABLE LABELS ID_CADERNO_CH 'Número do caderno de prova de Ciências Humanas'.
VARIABLE LABELS ID_BLOCO_1_CH 'Identificador do Bloco 1 de Ciências Humanas'.
VARIABLE LABELS ID_BLOCO_2_CH 'Identificador do Bloco 2 de Ciências Humanas'.
VARIABLE LABELS ID_BLOCO_3_CH 'Identificador do Bloco 3 de Ciências Humanas'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_CH 'Identificador do Bloco 1 de resposta construída em Ciências Humanas'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_CH 'Identificador do Bloco 2 de resposta construída em Ciências Humanas'.
VARIABLE LABELS ID_CADERNO_CN 'Número do caderno de prova de Ciências da Natureza'.
VARIABLE LABELS ID_BLOCO_1_CN 'Identificador do Bloco 1 de Ciências da Natureza'.
VARIABLE LABELS ID_BLOCO_2_CN 'Identificador do Bloco 2 de Ciências da Natureza'.
VARIABLE LABELS ID_BLOCO_3_CN 'Identificador do Bloco 3 de Ciências da Natureza'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_CN 'Identificador do Bloco 1 de resposta construída em Ciências da Natureza'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_CN 'Identificador do Bloco 2 de resposta construída em Ciências da Natureza'.
VARIABLE LABELS TX_RESP_BLOCO1_LP 'Resposta do aluno ao Bloco 1 da prova de Língua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO2_LP 'Resposta do aluno ao Bloco 2 da prova de Língua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO1_MT 'Resposta do aluno ao Bloco 1 da prova de Matemática'.
VARIABLE LABELS TX_RESP_BLOCO2_MT 'Resposta do aluno ao Bloco 2 da prova de Matemática'.
VARIABLE LABELS TX_RESP_BLOCO1_CH 'Resposta do aluno ao Bloco 1 da prova de Ciências Humanas'.
VARIABLE LABELS TX_RESP_BLOCO2_CH 'Resposta do aluno ao Bloco 2 da prova de Ciências Humanas'.
VARIABLE LABELS TX_RESP_BLOCO3_CH 'Resposta do aluno ao Bloco 3 da prova de Ciências Humanas'.
VARIABLE LABELS CO_CONCEITO_Q1_CH 'Conceito obtido na questão 1 de resposta construída em Ciências Humanas'.
VALUE LABELS CO_CONCEITO_Q1_CH
'0' 'Nenhum crédito'
'1' 'Crédito parcial'
'2' 'Crédito total'
'7' 'Erros de impressão ou digitalização'
'.' 'Branco'.
VARIABLE LABELS CO_CONCEITO_Q2_CH 'Conceito obtido na questão 2 de resposta construída em Ciências Humanas'.
VALUE LABELS CO_CONCEITO_Q2_CH
'0' 'Nenhum crédito'
'1' 'Crédito parcial'
'2' 'Crédito total'
'7' 'Erros de impressão ou digitalização'
'.' 'Branco'.
VARIABLE LABELS TX_RESP_BLOCO1_CN 'Resposta do aluno ao Bloco 1 da prova de Ciências da Natureza'.
VARIABLE LABELS TX_RESP_BLOCO2_CN 'Resposta do aluno ao Bloco 2 da prova de Ciências da Natureza'.
VARIABLE LABELS TX_RESP_BLOCO3_CN 'Resposta do aluno ao Bloco 3 da prova de Ciências da Natureza'.
VARIABLE LABELS CO_CONCEITO_Q1_CN 'Conceito obtido na questão 1 de resposta construída em Ciências da Natureza'.
VALUE LABELS CO_CONCEITO_Q1_CN
'0' 'Nenhum crédito'
'1' 'Crédito parcial'
'2' 'Crédito total'
'7' 'Erros de impressão ou digitalização'
'.' 'Branco'.
VARIABLE LABELS CO_CONCEITO_Q2_CN 'Conceito obtido na questão 2 de resposta construída em Ciências da Natureza'.
VALUE LABELS CO_CONCEITO_Q2_CN
'0' 'Nenhum crédito'
'1' 'Crédito parcial'
'2' 'Crédito total'
'7' 'Erros de impressão ou digitalização'
'.' 'Branco'.
VARIABLE LABELS IN_PROFICIENCIA_LP 'Indicador para cálculo da proficiência (no mínimo três itens respondidos nas provas de Língua Portuguesa e Matemática)'.
VALUE LABELS IN_PROFICIENCIA_LP
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_MT 'Indicador para cálculo da proficiência (no mínimo três itens respondidos nas provas de Língua Portuguesa e Matemática)'.
VALUE LABELS IN_PROFICIENCIA_MT
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_CH 'Indicador para cálculo da proficiência (no mínimo três itens respondidos na prova de Ciências Humanas)'.
VALUE LABELS IN_PROFICIENCIA_CH
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_CN 'Indicador para cálculo da proficiência (no mínimo três itens respondidos na prova de Ciências da Natureza)'.
VALUE LABELS IN_PROFICIENCIA_CN
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_AMOSTRA 'Indicador de participação na amostra do Saeb'.
VALUE LABELS IN_AMOSTRA
0 'Não'
1 'Sim'.
VARIABLE LABELS ESTRATO 'Descrição dos estratos do Saeb'.
VARIABLE LABELS ESTRATO_CIENCIAS 'Descrição dos estratos para amostra de Ciências Humanas e Ciências da Natureza'.
VARIABLE LABELS PESO_ALUNO_LP 'Peso do aluno em Língua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'.
VARIABLE LABELS ERRO_PADRAO_LP 'Erro padrão da proficiência em Língua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP_SAEB 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS ERRO_PADRAO_LP_SAEB 'Erro padrão da proficiência transformada em Língua Portuguesa'.
VARIABLE LABELS PESO_ALUNO_MT 'Peso do aluno em Matemática'.
VARIABLE LABELS PROFICIENCIA_MT 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'.
VARIABLE LABELS ERRO_PADRAO_MT 'Erro padrão da proficiência em Matemática'.
VARIABLE LABELS PROFICIENCIA_MT_SAEB 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS ERRO_PADRAO_MT_SAEB 'Erro padrão da proficiência transformada em Matemática'.
VARIABLE LABELS PESO_ALUNO_CH 'Peso do aluno em Ciências Humanas'.
VARIABLE LABELS PROFICIENCIA_CH 'Proficiência do aluno em Ciências Humanas calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'.
VARIABLE LABELS ERRO_PADRAO_CH 'Erro padrão da proficiência em Ciências Humanas'.
VARIABLE LABELS PROFICIENCIA_CH_SAEB 'Proficiência do aluno em Ciências Humanas transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_CH_SAEB 'Erro padrão da proficiência transformada em Ciências Humanas'.
VARIABLE LABELS PESO_ALUNO_CN 'Peso do aluno em Ciências da Natureza'.
VARIABLE LABELS PROFICIENCIA_CN 'Proficiência do aluno em Ciências da Natureza calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'.
VARIABLE LABELS ERRO_PADRAO_CN 'Erro padrão da proficiência em Ciências da Natureza'.
VARIABLE LABELS PROFICIENCIA_CN_SAEB 'Proficiência do aluno em Ciências da Natureza transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_CN_SAEB 'Erro padrão da proficiência transformada em Ciências da Natureza'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'Não preenchido'
1 'Preenchido parcial ou totalmente'.

VARIABLE LABELS IN_INSE 'Indicador para cálculo do INSE (São considerados válidos os estudantes que responderam pelo menos 8 itens, dentre os 17 utilizados para o cálculo do indicador)'.
VALUE LABELS IN_INSE
0 'Não'
1 'Sim'.

VARIABLE LABELS INSE_ALUNO 'Resultado individual do INSE para o aluno'.

VARIABLE LABELS NU_TIPO_NIVEL_INSE 'Classificação do Indicador de Nível Socioeconômico em 8 Grupos'.
VALUE LABELS NU_TIPO_NIVEL_INSE
1 'Nível I' 
2 'Nível II' 
3 'Nível III' 
4 'Nível IV' 
5 'Nível V' 
6 'Nível VI' 
7 'Nível VII'
 8 'Nível VIII'.

VARIABLE LABELS PESO_ALUNO_INSE 'Peso do Aluno para cálculo do INSE 2021'.

VARIABLE LABELS TX_RESP_Q01 'Qual é o seu sexo?'.
 VALUE LABELS TX_RESP_Q01
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Masculino.'
 'B' 'Feminino.'.
 VARIABLE LABELS TX_RESP_Q02 'Qual é a sua idade?(Questionário de aluno do 9º ano)'.
 VALUE LABELS TX_RESP_Q02
 '*' 'Nulo'
 '.' 'Branco'
 'A' '13 anos ou menos.'
 'B' '14 anos.'
 'C' '15 anos.'
 'D' '16 anos.'
 'E' '17 anos.'
 'F' '18 anos ou mais.'.
 VARIABLE LABELS TX_RESP_Q03 'Qual língua que seus pais falam com mais frequência em casa?'.
 VALUE LABELS TX_RESP_Q03
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Português.'
 'B' 'Espanhol.'
 'C' 'Outra língua.'.
 VARIABLE LABELS TX_RESP_Q04 'Qual é a sua cor ou raça?'.
 VALUE LABELS TX_RESP_Q04
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Branca.'
 'B' 'Preta.'
 'C' 'Parda.'
 'D' 'Amarela.'
 'E' 'Indígena.'
 'F' 'Não quero declarar.'.
 VARIABLE LABELS TX_RESP_Q05 'Você possui algum tipo de necessidade especial?'.
 VALUE LABELS TX_RESP_Q05
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Sim.'
 'B' 'Não.'.
 VARIABLE LABELS TX_RESP_Q06a 'Normalmente, quem mora na sua casa? - Mãe ou madrasta.'.
 VALUE LABELS TX_RESP_Q06a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06b 'Normalmente, quem mora na sua casa? - Pai ou padrasto.'.
 VALUE LABELS TX_RESP_Q06b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06c 'Normalmente, quem mora na sua casa? - Irmão(s) ou irmã(s).'.
 VALUE LABELS TX_RESP_Q06c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06d 'Normalmente, quem mora na sua casa? - Avô ou avó.'.
 VALUE LABELS TX_RESP_Q06d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06e 'Normalmente, quem mora na sua casa? - Outros (tios, primos etc.).'.
 VALUE LABELS TX_RESP_Q06e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q07 'Qual é a maior escolaridade da sua mãe (ou mulher responsável por você)?'.
 VALUE LABELS TX_RESP_Q07
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não completou o 5º ano do Ensino Fundamental.'
 'B' 'Ensino Fundamental, até o 5º ano.'
 'C' 'Ensino Fundamental completo.'
 'D' 'Ensino Médio completo.'
 'E' 'Ensino Superior completo (faculdade ou graduação).'
 'F' 'Não sei.'.
 VARIABLE LABELS TX_RESP_Q08 'Qual é a maior escolaridade de seu pai (ou homem responsável por você)?'.
 VALUE LABELS TX_RESP_Q08
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não completou o 5º ano do Ensino Fundamental.'
 'B' 'Ensino Fundamental, até o 5º ano.'
 'C' 'Ensino Fundamental completo.'
 'D' 'Ensino Médio completo.'
 'E' 'Ensino Superior completo (faculdade ou graduação).'
 'F' 'Não sei.'.
 VARIABLE LABELS TX_RESP_Q09a 'Com que frequência seus pais ou responsáveis costumam: - Ler em casa.'.
 VALUE LABELS TX_RESP_Q09a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09b 'Com que frequência seus pais ou responsáveis costumam: - Conversar com você sobre o que acontece na escola.'.
 VALUE LABELS TX_RESP_Q09b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09c 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a estudar.'.
 VALUE LABELS TX_RESP_Q09c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09d 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a fazer a tarefa de casa.'.
 VALUE LABELS TX_RESP_Q09d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09e 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a comparecer às aulas.'.
 VALUE LABELS TX_RESP_Q09e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09f 'Com que frequência seus pais ou responsáveis costumam: - Ir às reuniões de pais na escola.'.
 VALUE LABELS TX_RESP_Q09f
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q10a 'Na rua em que você mora tem: - Asfalto ou calçamento.'.
 VALUE LABELS TX_RESP_Q10a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q10b 'Na rua em que você mora tem: - Água tratada.'.
 VALUE LABELS TX_RESP_Q10b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q10c 'Na rua em que você mora tem: - Iluminação.'.
 VALUE LABELS TX_RESP_Q10c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q11a 'Dos itens relacionados abaixo, quantos existem na sua casa? - Geladeira.'.
 VALUE LABELS TX_RESP_Q11a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q11b 'Dos itens relacionados abaixo, quantos existem na sua casa? - Tablet.'.
 VALUE LABELS TX_RESP_Q11b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q11c 'Dos itens relacionados abaixo, quantos existem na sua casa? - Computador (ou notebook).'.
 VALUE LABELS TX_RESP_Q11c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q11d 'Dos itens relacionados abaixo, quantos existem na sua casa? - Quartos para dormir.'.
 VALUE LABELS TX_RESP_Q11d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q11e 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televisão.'.
 VALUE LABELS TX_RESP_Q11e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q11f 'Dos itens relacionados abaixo, quantos existem na sua casa? - Banheiro.'.
 VALUE LABELS TX_RESP_Q11f
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q11g 'Dos itens relacionados abaixo, quantos existem na sua casa? - Carro.'.
 VALUE LABELS TX_RESP_Q11g
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q11h 'Dos itens relacionados abaixo, quantos existem na sua casa? - Celular com internet (smartphone).'.
 VALUE LABELS TX_RESP_Q11h
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nenhum.'
 'B' '1.'
 'C' '2.'
 'D' '3 ou mais.'.
 VARIABLE LABELS TX_RESP_Q12a 'Na sua casa tem: - Tv por internet (Netflix, GloboPlay, etc.).'.
 VALUE LABELS TX_RESP_Q12a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12b 'Na sua casa tem: - Rede Wi-Fi.'.
 VALUE LABELS TX_RESP_Q12b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12c 'Na sua casa tem: - Um quarto só seu.'.
 VALUE LABELS TX_RESP_Q12c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12d 'Na sua casa tem: - Mesa para estudar.'.
 VALUE LABELS TX_RESP_Q12d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12e 'Na sua casa tem: - Forno de microondas.'.
 VALUE LABELS TX_RESP_Q12e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12f 'Na sua casa tem: - Aspirador de pó.'.
 VALUE LABELS TX_RESP_Q12f
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12g 'Na sua casa tem: - Máquina de lavar roupa.'.
 VALUE LABELS TX_RESP_Q12g
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12h 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'.
 VALUE LABELS TX_RESP_Q12h
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12i 'Na sua casa tem: - Garagem.'.
 VALUE LABELS TX_RESP_Q12i
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q13 'Quanto tempo você demora para chegar à sua escola?'.
 VALUE LABELS TX_RESP_Q13
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Menos de 30 minutos.'
 'B' 'Entre 30 minutos e uma hora.'
 'C' 'Mais de uma hora.'.
 VARIABLE LABELS TX_RESP_Q14 'Considerando a maior distância percorrida, normalmente de que forma você chega à sua escola?'.
 VALUE LABELS TX_RESP_Q14
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'À pé.'
 'B' 'De bicicleta.'
 'C' 'De Van (ou Kombi).'
 'D' 'De ônibus.'
 'E' 'De metrô (ou trem urbano).'
 'F' 'De carro.'
 'G' 'Outros meios de transporte (barco, motocicleta, etc.)'.
 VARIABLE LABELS TX_RESP_Q15 'Você se utiliza de transporte escolar, ou passe escolar, para ir à escola?'.
 VALUE LABELS TX_RESP_Q15
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q16 'Com que idade você entrou na escola?'.
 VALUE LABELS TX_RESP_Q16
 '*' 'Nulo'
 '.' 'Branco'
 'A' '3 anos ou menos.'
 'B' '4 ou 5 anos.'
 'C' '6 ou 7 anos.'
 'D' '8 anos ou mais.'.
 VARIABLE LABELS TX_RESP_Q17 'A partir do primeiro ano do ensino fundamental, em que tipo de escola você estudou?'.
 VALUE LABELS TX_RESP_Q17
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Somente em escola pública.'
 'B' 'Somente em escola particular.'
 'C' 'Em escola pública e em escola particular.'.
 VARIABLE LABELS TX_RESP_Q18 'Você já foi reprovado(a)?'.
 VALUE LABELS TX_RESP_Q18
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não.'
 'B' 'Sim, uma vez.'
 'C' 'Sim, duas vezes ou mais.'.
 VARIABLE LABELS TX_RESP_Q19 'Alguma vez você abandonou a escola deixando de frequentá-la até o final do ano escolar?'.
 VALUE LABELS TX_RESP_Q19
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Sim, uma vez.'
 'C' 'Sim, duas vezes ou mais.'.
 VARIABLE LABELS TX_RESP_Q20a 'Fora da escola em dias de aula, quanto tempo você usa para: - Estudar (lição de casa, trabalhos escolares, etc.).'.
 VALUE LABELS TX_RESP_Q20a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20b 'Fora da escola em dias de aula, quanto tempo você usa para: - Fazer cursos.'.
 VALUE LABELS TX_RESP_Q20b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20c 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar em casa (lavar louça, limpar quintal, cuidar dos irmãos).'.
 VALUE LABELS TX_RESP_Q20c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20d 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar fora de casa (recebendo ou não um salário).'.
 VALUE LABELS TX_RESP_Q20d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20e 'Fora da escola em dias de aula, quanto tempo você usa para: - Lazer (TV, internet, brincar, música etc.).'.
 VALUE LABELS TX_RESP_Q20e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Não uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q21 'Quando terminar o Ensino Fundamental você pretende:(Questionário de aluno do 9º ano)'.
 VALUE LABELS TX_RESP_Q21
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Somente continuar estudando.'
 'B' 'Somente trabalhar.'
 'C' 'Continuar estudando e trabalhar.'
 'D' 'Ainda não sei.'.
 VARIABLE LABELS TX_RESP_Q22a 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu possuía equipamento adequado para acompanhar o ensino remoto.'.
 VALUE LABELS TX_RESP_Q22a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22b 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu tive conexão de internet adequada para acesso às aulas remotas.'.
 VALUE LABELS TX_RESP_Q22b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22c 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Tive facilidade em usar os programas de comunicação nas aulas remotas.'.
 VALUE LABELS TX_RESP_Q22c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22d 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Recebi material impresso da escola (livros, apostilas, atividades em folha etc.).'.
 VALUE LABELS TX_RESP_Q22d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22e 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Os professores me auxiliaram a entender o conteúdo.'.
 VALUE LABELS TX_RESP_Q22e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22f 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu compreendi o conteúdo das aulas remotas.'.
 VALUE LABELS TX_RESP_Q22f
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22g 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Em casa havia um lugar tranquilo para eu assistir às aulas.'.
 VALUE LABELS TX_RESP_Q22g
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22h 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Meus familiares apoiaram o meu estudo.'.
 VALUE LABELS TX_RESP_Q22h
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q22i 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Meus colegas me apoiaram durante o ensino remoto.'.
 VALUE LABELS TX_RESP_Q22i
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Várias vezes'
 'D' 'Sempre.'.