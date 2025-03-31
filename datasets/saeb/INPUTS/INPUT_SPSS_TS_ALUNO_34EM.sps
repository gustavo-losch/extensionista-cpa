/******************************************************************************************************************	*/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          		*/ 
/*                                   			                                    	*/
/*  Coordena��o- Geral de Instrumentos e Medidas		                  	*/
/*---------------------------------------------------------------------------------------------------------------------------------------------	*/
/*  PROGRAMA:                                                                                                      	*/
/*           INPUT_SPSS_TS_ALUNO_34EM                                                                  	*/
/*---------------------------------------------------------------------------------------------------------------------------------------------	*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO 	*/
/*                     3�/4� S�RIE DO ENSINO M�DIO DO SAEB 2021                                  	*/
/******************************************************************************************************************	/
/******************************************************************************************************************	/
/* Obs:                                                                                                                    	*/
/* 		                                                                                                 	*/
/* Para abrir os microdados � necess�rio salvar este programa e os arquivos                       	*/
/* TS_ALUNO_34EM.CSV no diret�rio C:\ do computador.                                            	*/
/*							    	*/ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                         	*/
/* as vari�veis de interesse.                                                                                          	*/
/*							    	*/
/* Para a leitura dos microdados � necess�rio a sele��o do programa abaixo,               	*/
/* depois execute-o.						 	*/
/*							 	*/ 
/*******************************************************************************************************************/
/*                                                   ATEN��O                                                          	*/ 
/*******************************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    	*/
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                	*/
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  	*/
/* 							  	*/
/* Os R�tulos de algumas vari�veis n�o est�o completos, em virtude do tamanho do.      	*/
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o   	*/
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem a Consulta do Dicion�rio de       	*/
/* Vari�veis para conhecer o enunciado completo.                                                     	  	*/
/* 							   	*/
/*******************************************************************************************************************/


GET DATA
  /TYPE=TXT
  /FILE="C:\\TS_ALUNO_34EM.csv" 
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
  ID_SERIE F2.0
  ID_ALUNO F8.0
  IN_SITUACAO_CENSO F1.0
  IN_PREENCHIMENTO_LP F1.0
  IN_PREENCHIMENTO_MT F1.0
  IN_PRESENCA_LP F1.0
  IN_PRESENCA_MT F1.0
  ID_CADERNO_LP F2.0
  ID_BLOCO_1_LP F1.0
  ID_BLOCO_2_LP F1.0
  ID_CADERNO_MT F2.0
  ID_BLOCO_1_MT F1.0
  ID_BLOCO_2_MT F1.0
  TX_RESP_BLOCO1_LP A13
  TX_RESP_BLOCO2_LP A13
  TX_RESP_BLOCO1_MT A13
  TX_RESP_BLOCO2_MT A13
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
  ERRO_PADRAO_MT_SAEB COMMA6.2
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
 TX_RESP_Q22 A8
 TX_RESP_Q23a A8
 TX_RESP_Q23b A8
 TX_RESP_Q23c A8
 TX_RESP_Q23d A8
 TX_RESP_Q23e A8
 TX_RESP_Q23f A8
 TX_RESP_Q23g A8
 TX_RESP_Q23h A8
 TX_RESP_Q23i A8.

CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

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
12 '3�/4� S�rie do Ensino M�dio Tradicional'
13 '3�/4� S�rie do Ensino M�dio Integrado'.
VARIABLE LABELS ID_ALUNO 'C�digo do aluno no Saeb'.
VARIABLE LABELS IN_SITUACAO_CENSO 'Indicador de Consist�ncia com o Censo Escolar 2021'. 
VALUE LABELS IN_SITUACAO_CENSO
0 'N�o consistente'
1 'Consistente'.
VARIABLE LABELS IN_PREENCHIMENTO_LP 'Indicador de preenchimento da prova de L�ngua Portuguesa'.
VALUE LABELS IN_PREENCHIMENTO_LP
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PREENCHIMENTO_MT 'Indicador de preenchimento da prova de Matematica'.
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
VARIABLE LABELS ID_BLOCO_1_LP 'Identificador do bloco 1 de L�ngua Portuguesa'.
VARIABLE LABELS ID_BLOCO_2_LP 'Identificador do bloco 2 de L�ngua Portuguesa'.
VARIABLE LABELS ID_CADERNO_MT 'N�mero do caderno de prova de Matem�tica'.
VARIABLE LABELS ID_BLOCO_1_MT 'Identificador do bloco 1 de Matem�tica'.
VARIABLE LABELS ID_BLOCO_2_MT 'Identificador do bloco 2 de Matem�tica'.
VARIABLE LABELS TX_RESP_BLOCO1_LP 'Resposta do aluno ao bloco 1 da prova de L�ngua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO2_LP 'Resposta do aluno ao bloco 2 da prova de L�ngua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO1_MT 'Resposta do aluno ao bloco 1 da prova de Matem�tica'.
VARIABLE LABELS TX_RESP_BLOCO2_MT 'Resposta do aluno ao bloco 2 da prova de Matem�tica'.
VARIABLE LABELS IN_PROFICIENCIA_LP 'Indicador para c�lculo da profici�ncia de L�ngua Portuguesa (no m�nimo tr�s itens respondidos no caderno de provas de L�ngua Portuguesa e Matem�tica)'.
VALUE LABELS IN_PROFICIENCIA_LP
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_MT 'Indicador para c�lculo da profici�ncia de Matem�tica (no m�nimo tr�s itens respondidos no caderno de provas de L�ngua Portuguesa e Matem�tica)'.
VALUE LABELS IN_PROFICIENCIA_MT
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_AMOSTRA 'Indicador de participa��o na amostra do Saeb'.
VALUE LABELS IN_AMOSTRA
0 'N�o'
1 'Sim'.
VARIABLE LABELS ESTRATO 'Descri��o dos estratos do Saeb'.
VARIABLE LABELS PESO_ALUNO_LP 'Peso do aluno em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP 'Profici�ncia do aluno em L�ngua Portuguesa calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_LP 'Erro padr�o da profici�ncia em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP_SAEB 'Profici�ncia em L�ngua Portuguesa transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS ERRO_PADRAO_LP_SAEB 'Erro padr�o da profici�ncia transformada em L�ngua Portuguesa'.
VARIABLE LABELS PESO_ALUNO_MT 'Peso do aluno em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_MT 'Profici�ncia do aluno em Matem�tica calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_MT 'Erro padr�o da profici�ncia em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_MT_SAEB 'Profici�ncia do aluno em Matem�tica transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS ERRO_PADRAO_MT_SAEB 'Erro padr�o da profici�ncia transformada em Matem�tica'.

VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'.


VARIABLE LABELS IN_INSE 'Indicador para c�lculo do INSE (S�o considerados v�lidos os estudantes que responderam pelo menos 8 itens, dentre os 17 utilizados para o c�lculo do indicador)'.
VALUE LABELS IN_INSE
0 'N�o'
1 'Sim'.

VARIABLE LABELS INSE_ALUNO 'Resultado individual do INSE para o aluno'.

VARIABLE LABELS NU_TIPO_NIVEL_INSE 'Classifica��o do Indicador de N�vel Socioecon�mico em 8 Grupos'.
VALUE LABELS NU_TIPO_NIVEL_INSE
1 'N�vel I' 
2 'N�vel II' 
3 'N�vel III' 
4 'N�vel IV' 
5 'N�vel V' 
6 'N�vel VI' 
7 'N�vel VII'
 8 'N�vel VIII'.

VARIABLE LABELS PESO_ALUNO_INSE 'Peso do Aluno para c�lculo do INSE 2021'.

VARIABLE LABELS TX_RESP_Q01 'Qual � o seu sexo?'.
 VALUE LABELS TX_RESP_Q01
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Masculino.'
 'B' 'Feminino.'.
 VARIABLE LABELS TX_RESP_Q02 'Qual � a sua idade?(Question�rio de aluno do Ensino M�dio)'.
 VALUE LABELS TX_RESP_Q02
 '*' 'Nulo'
 '.' 'Branco'
 'A' '16 anos ou menos.'
 'B' '17 anos.'
 'C' '18 anos.'
 'D' '19 anos.'
 'E' '20 anos.'
 'F' '21 anos ou mais.'.
 VARIABLE LABELS TX_RESP_Q03 'Qual l�ngua que seus pais falam com mais frequ�ncia em casa?'.
 VALUE LABELS TX_RESP_Q03
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Portugu�s.'
 'B' 'Espanhol.'
 'C' 'Outra l�ngua.'.
 VARIABLE LABELS TX_RESP_Q04 'Qual � a sua cor ou ra�a?'.
 VALUE LABELS TX_RESP_Q04
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Branca.'
 'B' 'Preta.'
 'C' 'Parda.'
 'D' 'Amarela.'
 'E' 'Ind�gena.'
 'F' 'N�o quero declarar.'.
 VARIABLE LABELS TX_RESP_Q05 'Voc� possui algum tipo de necessidade especial?'.
 VALUE LABELS TX_RESP_Q05
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Sim.'
 'B' 'N�o.'.
 VARIABLE LABELS TX_RESP_Q06a 'Normalmente, quem mora na sua casa? - M�e ou madrasta.'.
 VALUE LABELS TX_RESP_Q06a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06b 'Normalmente, quem mora na sua casa? - Pai ou padrasto.'.
 VALUE LABELS TX_RESP_Q06b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06c 'Normalmente, quem mora na sua casa? - Irm�o(s) ou irm�(s).'.
 VALUE LABELS TX_RESP_Q06c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06d 'Normalmente, quem mora na sua casa? - Av� ou av�.'.
 VALUE LABELS TX_RESP_Q06d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q06e 'Normalmente, quem mora na sua casa? - Outros (tios, primos etc.).'.
 VALUE LABELS TX_RESP_Q06e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q07 'Qual � a maior escolaridade da sua m�e (ou mulher respons�vel por voc�)?'.
 VALUE LABELS TX_RESP_Q07
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o completou o 5� ano do Ensino Fundamental.'
 'B' 'Ensino Fundamental, at� o 5� ano.'
 'C' 'Ensino Fundamental completo.'
 'D' 'Ensino M�dio completo.'
 'E' 'Ensino Superior completo (faculdade ou gradua��o).'
 'F' 'N�o sei.'.
 VARIABLE LABELS TX_RESP_Q08 'Qual � a maior escolaridade de seu pai (ou homem respons�vel por voc�)?'.
 VALUE LABELS TX_RESP_Q08
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o completou o 5� ano do Ensino Fundamental.'
 'B' 'Ensino Fundamental, at� o 5� ano.'
 'C' 'Ensino Fundamental completo.'
 'D' 'Ensino M�dio completo.'
 'E' 'Ensino Superior completo (faculdade ou gradua��o).'
 'F' 'N�o sei.'.
 VARIABLE LABELS TX_RESP_Q09a 'Com que frequ�ncia seus pais ou respons�veis costumam: - Ler em casa.'.
 VALUE LABELS TX_RESP_Q09a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09b 'Com que frequ�ncia seus pais ou respons�veis costumam: - Conversar com voc� sobre o que acontece na escola.'.
 VALUE LABELS TX_RESP_Q09b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09c 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a estudar.'.
 VALUE LABELS TX_RESP_Q09c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09d 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a fazer a tarefa de casa.'.
 VALUE LABELS TX_RESP_Q09d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09e 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a comparecer �s aulas.'.
 VALUE LABELS TX_RESP_Q09e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q09f 'Com que frequ�ncia seus pais ou respons�veis costumam: - Ir �s reuni�es de pais na escola.'.
 VALUE LABELS TX_RESP_Q09f
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'Sempre ou quase sempre.'.
 VARIABLE LABELS TX_RESP_Q10a 'Na rua em que voc� mora tem: - Asfalto ou cal�amento.'.
 VALUE LABELS TX_RESP_Q10a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q10b 'Na rua em que voc� mora tem: - �gua tratada.'.
 VALUE LABELS TX_RESP_Q10b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q10c 'Na rua em que voc� mora tem: - Ilumina��o.'.
 VALUE LABELS TX_RESP_Q10c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
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
 VARIABLE LABELS TX_RESP_Q11e 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televis�o.'.
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
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12b 'Na sua casa tem: - Rede Wi-Fi.'.
 VALUE LABELS TX_RESP_Q12b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12c 'Na sua casa tem: - Um quarto s� seu.'.
 VALUE LABELS TX_RESP_Q12c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12d 'Na sua casa tem: - Mesa para estudar.'.
 VALUE LABELS TX_RESP_Q12d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12e 'Na sua casa tem: - Forno de microondas.'.
 VALUE LABELS TX_RESP_Q12e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12f 'Na sua casa tem: - Aspirador de p�.'.
 VALUE LABELS TX_RESP_Q12f
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12g 'Na sua casa tem: - M�quina de lavar roupa.'.
 VALUE LABELS TX_RESP_Q12g
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12h 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'.
 VALUE LABELS TX_RESP_Q12h
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q12i 'Na sua casa tem: - Garagem.'.
 VALUE LABELS TX_RESP_Q12i
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q13 'Quanto tempo voc� demora para chegar � sua escola?'.
 VALUE LABELS TX_RESP_Q13
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Menos de 30 minutos.'
 'B' 'Entre 30 minutos e uma hora.'
 'C' 'Mais de uma hora.'.
 VARIABLE LABELS TX_RESP_Q14 'Considerando a maior dist�ncia percorrida, normalmente de que forma voc� chega � sua escola?'.
 VALUE LABELS TX_RESP_Q14
 '*' 'Nulo'
 '.' 'Branco'
 'A' '� p�.'
 'B' 'De bicicleta.'
 'C' 'De Van (ou Kombi).'
 'D' 'De �nibus.'
 'E' 'De metr� (ou trem urbano).'
 'F' 'De carro.'
 'G' 'Outros meios de transporte (barco, motocicleta, etc.)'.
 VARIABLE LABELS TX_RESP_Q15 'Voc� se utiliza de transporte escolar, ou passe escolar, para ir � escola?'.
 VALUE LABELS TX_RESP_Q15
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q16 'Com que idade voc� entrou na escola?'.
 VALUE LABELS TX_RESP_Q16
 '*' 'Nulo'
 '.' 'Branco'
 'A' '3 anos ou menos.'
 'B' '4 ou 5 anos.'
 'C' '6 ou 7 anos.'
 'D' '8 anos ou mais.'.
 VARIABLE LABELS TX_RESP_Q17 'A partir do primeiro ano do ensino fundamental, em que tipo de escola voc� estudou?'.
 VALUE LABELS TX_RESP_Q17
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Somente em escola p�blica.'
 'B' 'Somente em escola particular.'
 'C' 'Em escola p�blica e em escola particular.'.
 VARIABLE LABELS TX_RESP_Q18 'Voc� j� foi reprovado(a)?'.
 VALUE LABELS TX_RESP_Q18
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim, uma vez.'
 'C' 'Sim, duas vezes ou mais.'.
 VARIABLE LABELS TX_RESP_Q19 'Alguma vez voc� abandonou a escola deixando de frequent�-la at� o final do ano escolar?'.
 VALUE LABELS TX_RESP_Q19
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca.'
 'B' 'Sim, uma vez.'
 'C' 'Sim, duas vezes ou mais.'.
 VARIABLE LABELS TX_RESP_Q20a 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Estudar (li��o de casa, trabalhos escolares, etc.).'.
 VALUE LABELS TX_RESP_Q20a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20b 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Fazer cursos.'.
 VALUE LABELS TX_RESP_Q20b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20c 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Trabalhar em casa (lavar lou�a, limpar quintal, cuidar dos irm�os).'.
 VALUE LABELS TX_RESP_Q20c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20d 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Trabalhar fora de casa (recebendo ou n�o um sal�rio).'.
 VALUE LABELS TX_RESP_Q20d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q20e 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Lazer (TV, internet, brincar, m�sica etc.).'.
 VALUE LABELS TX_RESP_Q20e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o uso meu tempo para isso.'
 'B' 'Menos de 1 hora.'
 'C' 'Entre 1 e 2 horas.'
 'D' 'Mais de 2 horas.'.
 VARIABLE LABELS TX_RESP_Q21 'Quando terminar o Ensino M�dio voc� pretende:(Question�rio de aluno do Ensino M�dio)'.
 VALUE LABELS TX_RESP_Q21
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Somente continuar estudando.'
 'B' 'Somente trabalhar.'
 'C' 'Continuar estudando e trabalhar.'
 'D' 'Ainda n�o sei.'.
 VARIABLE LABELS TX_RESP_Q22 'Voc� concluiu o Ensino Fundamental na Educa��o de Jovens e Adultos (EJA), antigo supletivo?'.
 VALUE LABELS TX_RESP_Q22
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'N�o.'
 'B' 'Sim.'.
 VARIABLE LABELS TX_RESP_Q23a 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Eu possu�a equipamento adequado para acompanhar o ensino remoto.'.
 VALUE LABELS TX_RESP_Q23a
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23b 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Eu tive conex�o de internet adequada para acesso �s aulas remotas.'.
 VALUE LABELS TX_RESP_Q23b
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23c 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Tive facilidade em usar os programas de comunica��o nas aulas remotas.'.
 VALUE LABELS TX_RESP_Q23c
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23d 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Recebi material impresso da escola (livros, apostilas, atividades em folha etc.).'.
 VALUE LABELS TX_RESP_Q23d
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23e 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Os professores me auxiliaram a entender o conte�do.'.
 VALUE LABELS TX_RESP_Q23e
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23f 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Eu compreendi o conte�do das aulas remotas.'.
 VALUE LABELS TX_RESP_Q23f
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23g 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Em casa havia um lugar tranquilo para eu assistir �s aulas.'.
 VALUE LABELS TX_RESP_Q23g
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23h 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Meus familiares apoiaram o meu estudo.'.
 VALUE LABELS TX_RESP_Q23h
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.
 VARIABLE LABELS TX_RESP_Q23i 'Durante a pandemia, indique a frequ�ncia com que os seguintes fatos ocorreram: - Meus colegas me apoiaram durante o ensino remoto.'.
 VALUE LABELS TX_RESP_Q23i
 '*' 'Nulo'
 '.' 'Branco'
 'A' 'Nunca ou quase nunca.'
 'B' 'De vez em quando.'
 'C' 'V�rias vezes'
 'D' 'Sempre.'.