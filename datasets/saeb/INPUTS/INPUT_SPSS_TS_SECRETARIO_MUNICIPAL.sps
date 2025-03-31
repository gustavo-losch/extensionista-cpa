/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_SECRETARIO_MUNICIPAL.sps                                        */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTION�RIO DO SECRE�RIO   */
/*                     MUNICIPAL DE EDUCA��O DO SAEB 2021                                     */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_SECRETARIO_MUNICIPAL.CSV no diret�rio C:\ do computador.	                	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							  */                                                            
/* Algumas vari�veis do question�rio do Diretor envolvem regras de valida��o e                */
/* depend�ncia. O entendimento dessas quest�es exigem consulta ao Dicion�rio de       */
/* Vari�veis para conhecer as regras de cada quest�o.                                                  */
/* 							  */
/*******************************************************************************************************/


GET DATA
/TYPE=TXT
/FILE='C:\\TS_SECRETARIO_MUNICIPAL.csv'
/DELCASE=LINE
/DELIMITERS="|"
/ARRANGEMENT=DELIMITED
/FIRSTCASE=2
/IMPORTCASE=ALL
/VARIABLES=
ID_SAEB F4.0
CO_UF F2.0
CO_MUNICIPIO F7.0
IN_CAPITAL F1.0
IN_PREENCHIMENTO F1.0
CO_TRATAMENTO F1.0
DT_PREENCHIMENTO A10
 MG2Q01 A8
 MG2Q02 A8
 MG2Q03 A8
 MG2Q04 A8
 MG2Q05 A8
 MG2Q06 F4.0
 MG2Q07 A8
 MG2Q08 A8
 MG2Q09 A8
 MG2Q10 A8
 MG2Q11 A8
 MG2Q12 A8
 MG2Q13 A8
 MG2Q14 A2000
 MG2Q15 A8
 MG2Q16 A8
 MG2Q17 A8
 MG2Q18 A8
 MG2Q19 A8
 MG2Q20 A8
 MG2Q21 A8
 MG2Q22 A2000
 MG2Q23 A8
 MG2Q24 A8
 MG2Q25 A8
 MG2Q26 A8
 MG2Q27 A8
 MG2Q28 A8
 MG2Q29 A8
 MG2Q30 A8
 MG2Q31 A8
 MG2Q32 A8
 MG2Q33 A8
 MG2Q34 A2000
 MG2Q35_A A8
 MG2Q35_B A8
 MG2Q35_C A8
 MG2Q35_D A8
 MG2Q35_E A8
 MG2Q35_F A8
 MG2Q35_G A8
 MG2Q35_H A8
 MG2Q35_I A8
 MG2Q35_J A8
 MG2Q36 A2000
 MG2Q37 A8
 MG2Q38 A8
 MG2Q39 A8
 MG2Q40 A8
 MG2Q41 A8
 MG2Q42 A8
 MG3Q01 A8
 MG3Q02 F4.0
 MG3Q03 A8
 MG3Q04 A8
 MG3Q05 A8
 MG3Q06 A8
 MG3Q07 A8
 MG3Q08 A8
 MG3Q09 A8
 MG3Q10 A8
 MG3Q11 A8
 MG3Q12 A8
 MG3Q13 A8
 MG3Q14 A8
 MG3Q15 A8
 MG3Q16 A8
 MG3Q17 A8
 MG3Q18 A8
 MG3Q19 A8
 MG3Q20 A8
 MG3Q21 A8
 MG4Q01 A8
 MG4Q02 A8
 MG4Q03 A8
 MG4Q04 F4.0
 MG4Q05 A8
 MG4Q06 A8
 MG4Q07 A8
 MG4Q08 A8
 MG4Q09 A8
 MG4Q10 A8
 MG5Q01 A8
 MG5Q02_A A8
 MG5Q02_B A8
 MG5Q02_C A8
 MG5Q02_D A8
 MG5Q02_E A8
 MG5Q02_F A8
 MG5Q02_G A8
 MG5Q03 A8
 MG5Q04_A A8
 MG5Q04_B A8
 MG5Q04_C A8
 MG5Q05_A A8
 MG5Q05_B A8
 MG5Q05_C A8
 MG5Q05_D A8
 MG5Q05_E A8
 MG5Q05_F A8
 MG5Q05_G A8
 MG5Q06 A8
 MG5Q08 A2000
 MG5Q07_A A8
 MG5Q07_B A8
 MG5Q07_C A8
 MG5Q07_D A8
 MG5Q07_E A8
 MG5Q07_F A8
 MG5Q07_G A8
 MG5Q07_H A8
 MG5Q07_I A8
 MG5Q08 A2000
 MG6Q01 A8
 MG6Q02 A8
 MG6Q03 A8
 MG6Q04 A8
 MG6Q05_A A8
 MG6Q05_B A8
 MG6Q05_C A8
 MG6Q05_D A8
 MG6Q06 A8
 MG6Q07 A8
 MG6Q08_A A8
 MG6Q08_B A8
 MG6Q08_C A8
 MG6Q08_D A8
 MG6Q08_E A8
 MG6Q08_F A8
 MG6Q08_G A8
 MG6Q08_H A8
 MG6Q09 A2000
 MG6Q10 A8
 MG7Q01 A2000.

CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

VARIABLE LABELS ID_SAEB 'Ano de aplica��o do Saeb'.                                                                                                        
VARIABLE LABELS CO_UF 'C�digo da Unidade da Federa��o'.
VALUE LABELS CO_UF
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

 VARIABLE LABELS CO_MUNICIPIO 'C�digo do Munic�pio'.

 VARIABLE LABELS DT_PREENCHIMENTO 'Data de preenchimento do question�rio'.

 VARIABLE LABELS IN_CAPITAL 'Indicador se o municipio � uma capital ou n�o'.
 VALUE LABELS IN_CAPITAL
1 'Capital'
0 'Interior'.

 VARIABLE LABELS IN_PREENCHIMENTO 'Indicador de preenchimento v�lido do question�rio'.
 VALUE LABELS IN_PREENCHIMENTO
0 ' N�o preenchido'
1 'Preenchido parcial ou totalmente'.

 VARIABLE LABELS CO_TRATAMENTO 'Indicador se o municipio � uma capital ou n�o'.
 VALUE LABELS CO_TRATAMENTO 
0 'Sem tratamento'
1 'Tratamento de duplicidade de resposta'
2 'Imputa��o do  CO_MUNICIPIO.'.

 VARIABLE LABELS MG2Q01 'Sistema Municipal de Ensino? O munic�pio possui:'.
 VALUE LABELS MG2Q01
 'A' 'Sim'
 'B' 'N�o'.

 VARIABLE LABELS MG2Q02 'Plano Municipal de Educa��o? O munic�pio possui:'.
 VALUE LABELS MG2Q02
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q03 'F�rum Permanente de Educa��o? O munic�pio possui:'.
 VALUE LABELS MG2Q03
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q04 'Conselho Municipal de Educa��o? O munic�pio possui:'.
 VALUE LABELS MG2Q04
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q05 'Autonomia em rela��o ao Conselho Estadual de Educa��o? O munic�pio possui:'.
 VALUE LABELS MG2Q05
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q06 
'Quantos servidores/funcion�rios est�o lotados na sede da Secretaria de Educa��o? Para responder essa quest�o, considere APENAS os servidores que est�o lotados na sede da secretaria, desconsiderando aqueles que trabalham em escolas ou outros locais.'.
 VALUE LABELS MG2Q06
 'A' 'Servidores.'.
 VARIABLE LABELS MG2Q07 'A Secretaria de Educa��o � gestora dos recursos da educa��o? '.
 VALUE LABELS MG2Q07
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q08 'Os servi�os de sa�de A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q08
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q09 'Os servi�os de assist�ncia social A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q09
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q10 'A seguran�a p�blica A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q10
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q11 'O conselho tutelar A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q11
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q12 'Institui��es de apoio ao p�blico alvo da educa��o especial A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q12
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q13 'Outros A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q13
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q14 'Indique com que outro �rg�o voc� est� desenvolvendo trabalho conjunto Regra de depend�ncia: se Q032="Sim", abre Q033'.

 VARIABLE LABELS MG2Q15 'Livre indica��o pelo executivo municipal Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q15
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q16 'Titula��o acad�mica Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q16
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q17 'Curso de forma��o para gestores escolares Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q17
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q18 'Tempo de servi�o Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q18
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q19 'Experi�ncia em gest�o Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q19
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q20 'Consulta p�blica/elei��o com participa��o da comunidade Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q20
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q21 'Outros Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q21
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q22 'Indique quais os outros crit�rios para a escolha de diretor Regra de depend�ncia: se Q040=1, abre Q041.'.

 VARIABLE LABELS MG2Q23 'Os crit�rios utilizados para a escolha dos diretores das escolas est�o definidos em legisla��o municipal? '.
 VALUE LABELS MG2Q23
 'A' 'Sim, a legisla��o contempla todos os crit�rios utilizados.'
 'B' 'Sim, a legisla��o contempla uma parte dos crit�rios utilizados.'
 'C' 'N�o, n�o h� legisla��o municipal para escolha dos diretores.'.
 VARIABLE LABELS MG2Q24 'Conte�do e compreens�o dos conceitos da(s) �rea(s) de ensino: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q24
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q25 'Avalia��o da aprendizagem: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q25
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q26 'Avalia��o em larga escala: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q26
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q27 'Metodologias de ensino: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q27
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q28 'Base Nacional Comum Curricular - BNCC: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q28
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q29 'Gest�o da sala de aula: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q29
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q30 'Educa��o especial: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q30
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q31 'Novas tecnologias: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q31
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q32 'Gest�o e administra��o escolar: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q32
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q33 'Outros: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'.
 VALUE LABELS MG2Q33
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q34 'Descreva outros cursos de forma��o continuada Regra de depend�ncia: se Q052=1, abre Q053'.

 VARIABLE LABELS MG2Q35_A 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_A
 'A' 'Constru��o de escolas.'.
 VARIABLE LABELS MG2Q35_B 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_B
 'B' 'Reforma de escolas (melhoria e/ou adequa��o do espa�o f�sico etc.).'.
 VARIABLE LABELS MG2Q35_C 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_C
 'C' 'Aquisi��o de mobili�rio para as escolas (carteiras, arm�rios etc.).'.
 VARIABLE LABELS MG2Q35_D 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_D
 'D' 'Aquisi��o de material de higiene, limpeza e equipamento de prote��o individual (�lcool, sabonete, m�scara etc).'.
 VARIABLE LABELS MG2Q35_E 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_E
 'E' 'Aquisi��o de material pedag�gico (livros, software, material audiovisual etc.).'.
 VARIABLE LABELS MG2Q35_F 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_F
 'F' 'Aquisi��o de equipamentos para alunos e ou professores (computador, tablet, celular, chip para internet etc.).'.
 VARIABLE LABELS MG2Q35_G 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_G
 'G' 'Produ��o de material did�tico audiovisual ou impresso para aulas remotas.'.
 VARIABLE LABELS MG2Q35_H 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_H
 'H' 'Contrata��o de profissionais para a educa��o.'.
 VARIABLE LABELS MG2Q35_I 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_I
 'I' 'Distribui��o da alimenta��o para os estudantes.'.
 VARIABLE LABELS MG2Q35_J 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'.
 VALUE LABELS MG2Q35_J
 'J' 'Outra prioridade.'.
 VARIABLE LABELS MG2Q36 'Descreva outra prioridade do munic�pio Regra de depend�ncia: se Q063=1, abre Q064'.

 VARIABLE LABELS MG2Q37 'Garantia da liberdade religiosa. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'.
 VALUE LABELS MG2Q37
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q38 'Inclus�o das pessoas com defici�ncia. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'.
 VALUE LABELS MG2Q38
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q39 'Combate ao abuso e � viol�ncia sexual. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'.
 VALUE LABELS MG2Q39
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q40 'Promo��o da cultura da paz e da n�o viol�ncia. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'.
 VALUE LABELS MG2Q40
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q41 'Combate aos preconceitos (racismo, homofobia etc.). Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'.
 VALUE LABELS MG2Q41
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG2Q42 'Incentivo �s discuss�es sobre as diferen�as de g�nero. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'.
 VALUE LABELS MG2Q42
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q01 'A Secretaria possui institui��es de Educa��o Infantil sob sua responsabilidade direta ou indireta? '.
 VALUE LABELS MG3Q01
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q02 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE � Educa��o infantil? Preencha com zero caso n�o haja nenhum.Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q02
 'A' 'Preencha com zero caso n�o haja nenhum.'.

 VARIABLE LABELS MG3Q03 'C�lculo da demanda por vagas? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q03
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q04 'Supervis�o escolar? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q04
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q05 'Programa de forma��o de professores? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q05
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q06 'Busca ativa de crian�as para a pr�-escola? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q06
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q07 'Comit� Intersetorial de Pol�ticas P�blicas para a Primeira Inf�ncia? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q07
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q08 'Transporte escolar? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q08
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q09 'O munic�pio possui curr�culo municipal para a educa��o infantil? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q09
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q10 'O curr�culo municipal da educa��o infantil est� atualizado conforme a BNCC - Base Nacional Comum Curricular? Regra de depend�ncia: se Q071="Sim" e Q079="Sim" abre Q080'.
 VALUE LABELS MG3Q10
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q11 'Creche - Crian�as de 0 a 3 anos? O munic�pio firma conv�nios e/ou parcerias com institui��es para o atendimento de:Regra de depend�ncia: se Q071="Sim", abre itens Q081 a Q082'.
 VALUE LABELS MG3Q11
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q12 'Pr�-escola - Crian�as 4 a 5 anos? O munic�pio firma conv�nios e/ou parcerias com institui��es para o atendimento de:Regra de depend�ncia: se Q071="Sim", abre itens Q081 a Q082'.
 VALUE LABELS MG3Q12
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q13 'As institui��es conveniadas e/ou que celebram parcerias com o munic�pio s�o selecionadas atrav�s de chamada p�blica? Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'.
 VALUE LABELS MG3Q13
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q14 'Existem normas para o funcionamento das conveniadas e/ou que celebram parcerias com o munic�pio? Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'.
 VALUE LABELS MG3Q14
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG3Q15 'Propriedade das instala��es. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo:'.
 VALUE LABELS MG3Q15
 'A' 'Munic�pio'
 'B' 'Institui��es'.
 VARIABLE LABELS MG3Q16 'Manuten��o das instala��es. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: '.
 VALUE LABELS MG3Q16
 'A' 'Munic�pio'
 'B' 'Institui��es'.
 VARIABLE LABELS MG3Q17 'Pagamento dos professores. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: '.
 VALUE LABELS MG3Q17
 'A' 'Munic�pio'
 'B' 'Institui��es'.
 VARIABLE LABELS MG3Q18 'Capacita��o dos professores.'.
 VALUE LABELS MG3Q18
 'A' 'Munic�pio'
 'B' 'Institui��es'.
 VARIABLE LABELS MG3Q19 'Fornecimento de recursos pedag�gicos. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: '.
 VALUE LABELS MG3Q19
 'A' 'Munic�pio'
 'B' 'Institui��es'.
 VARIABLE LABELS MG3Q20 
'Oferta de merenda Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo:'.
 VALUE LABELS MG3Q20
 'A' 'Munic�pio'
 'B' 'Institui��es'.
 VARIABLE LABELS MG3Q21 'Transporte escolar Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo:'.
 VALUE LABELS MG3Q21
 'A' 'Munic�pio'
 'B' 'Institui��es'.
 VARIABLE LABELS MG4Q01 
'A Secretaria possui escolas de Ensino Fundamental? Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha '.
 VALUE LABELS MG4Q01
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q02 
'O Ensino Fundamental � oferecido em ciclos? Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha '.
 VALUE LABELS MG4Q02
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q03 
'As escolas do munic�pio adotam um sistema apostilado? Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha '.
 VALUE LABELS MG4Q03
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q04 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE ao Ensino Fundamental? Preencha com zero caso n�o haja nenhum.'.
 VALUE LABELS MG4Q04
 'A' 'Preencha com zero caso n�o haja nenhum.'.
 VARIABLE LABELS MG4Q05 'C�lculo da demanda por vagas? Com rela��o ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q05
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q06 'Supervis�o escolar? Com rela��o ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q06
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q07 'Programa de forma��o de professores? Com rela��o ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q07
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q08 'Busca ativa de crian�as e jovens? Com rela��o ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q08
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q09 'O munic�pio possui curr�culo municipal para o Ensino Fundamental? Com rela��o ao Ensino Fundamental, a Secretaria possui:Regra de depend�ncia: se Q100="Sim", abre Q101'.
 VALUE LABELS MG4Q09
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG4Q10 'O curr�culo municipal do ensino fundamental  est� atualizado conforme a BNCC - Base Nacional Comum Curricular? '.
 VALUE LABELS MG4Q10
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG5Q01 'A Secretaria utiliza os resultados do IDEB? Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q01
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG5Q02_A 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_A
 'A' 'Subs�dios para a forma��o continuada de professores'.
 VARIABLE LABELS MG5Q02_B 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_B
 'B' 'Subs�dios para a avalia��o de programas ou projetos da Secretaria de Educa��o'.
 VARIABLE LABELS MG5Q02_C 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_C
 'C' 'Produ��o de materiais did�ticos e pedag�gicos'.
 VARIABLE LABELS MG5Q02_D 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_D
 'D' 'Recompensa para escolas com melhores resultados'.
 VARIABLE LABELS MG5Q02_E 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_E
 'E' 'Aux�lio para unidades escolares com resultados inferiores'.
 VARIABLE LABELS MG5Q02_F 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_F
 'F' 'Subs�dios para pagamento de bonifica��o para professores'.
 VARIABLE LABELS MG5Q02_G 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_G
 'G' 'Cria��o de crit�rios para remanejamento de diretores'.
 VARIABLE LABELS MG5Q03 'A equipe da secretaria, ou institui��o contratada, elabora provas para serem aplicadas aos estudantes da sua rede? Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q03
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG5Q04_A 'Indique as etapas da Educa��o B�sica nas quais s�o aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q04_A
 'A' 'Pr�-escola'.
 VARIABLE LABELS MG5Q04_B 'Indique as etapas da Educa��o B�sica nas quais s�o aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q04_B
 'B' 'Ensino Fundamental - Anos iniciais'.
 VARIABLE LABELS MG5Q04_C 'Indique as etapas da Educa��o B�sica nas quais s�o aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q04_C
 'C' 'Ensino Fundamental - Anos finais'.
 VARIABLE LABELS MG5Q05_A 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_A
 'A' 'Mensal'.
 VARIABLE LABELS MG5Q05_B 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_B
 'B' 'Bimestral'.
 VARIABLE LABELS MG5Q05_C 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_C
 'C' 'Trimestral'.
 VARIABLE LABELS MG5Q05_D 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_D
 'D' 'Semestral'.
 VARIABLE LABELS MG5Q05_E 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_E
 'E' 'Anual'.
 VARIABLE LABELS MG5Q05_F 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_F
 'F' 'Bianual'.
 VARIABLE LABELS MG5Q05_G 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_G
 'G' 'Outra'.
 VARIABLE LABELS MG5Q06 'A Secretaria realiza monitoramento ou avalia��o da sua rede de ensino? Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q06
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG5Q07_A 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_A
 'A' 'Auto-avalia��o das escolas'.
 VARIABLE LABELS MG5Q07_B 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_B
 'B' 'Avalia��o do Projeto Pedag�gico das escolas'.
 VARIABLE LABELS MG5Q07_C 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_C
 'C' 'Desempenho dos professores'.
 VARIABLE LABELS MG5Q07_D 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_D
 'D' 'Desempenho dos diretores das escolas'.
 VARIABLE LABELS MG5Q07_E 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_E
 'E' 'Infraestrutura das escolas'.
 VARIABLE LABELS MG5Q07_F 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_F
 'F' 'Transporte escolar'.
 VARIABLE LABELS MG5Q07_G 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_G
 'G' 'Merenda escolar'.
 VARIABLE LABELS MG5Q07_H 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_H
 'H' 'Organiza��o administrativa das escolas'.
 VARIABLE LABELS MG5Q07_I 
'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_I
 'I' 'Outras'.

 VARIABLE LABELS MG5Q08 'Descreva outras a��es. Regra de depend�ncia: se Q100="Sim" e Q130="Outras", abre Q131'.

 VARIABLE LABELS MG6Q01 'Auxiliares e assistentes da Educa��o Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q01
 'A' 'Sim'
 'B' 'N�o'
 'C' 'N�o se aplica'.
 VARIABLE LABELS MG6Q02 'Professores(as) da Educa��o Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q02
 'A' 'Sim'
 'B' 'N�o'
 'C' 'N�o se aplica'.
 VARIABLE LABELS MG6Q03 'Professores(as) do Ensino Fundamental: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q03
 'A' 'Sim'
 'B' 'N�o'
 'C' 'N�o se aplica'.
 VARIABLE LABELS MG6Q04 'Profissionais n�o docentes: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q04
 'A' 'Sim'
 'B' 'N�o'
 'C' 'N�o se aplica'.
 VARIABLE LABELS MG6Q05_A 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_A
 'A' 'At� 20 horas semanais.'.
 VARIABLE LABELS MG6Q05_B 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_B
 'B' 'De 21 a 30 horas semanais.'.
 VARIABLE LABELS MG6Q05_C 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_C
 'C' 'De 31 a 40 horas semanais.'.
 VARIABLE LABELS MG6Q05_D 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_D
 'D' 'Mais de 40 horas semanais.'.
 VARIABLE LABELS MG6Q06 'Para os professores, est� previsto o limite m�ximo de 2/3 da jornada de trabalho semanal em sala de aula? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q06
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG6Q07 'Para os professores com jornada de trabalho de 40 horas semanais o VENCIMENTO INICIAL � igual ou superior a R$ 2.884,24? '.
 VALUE LABELS MG6Q07
 'A' 'Sim'
 'B' 'N�o'.
 VARIABLE LABELS MG6Q08_A 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_A
 'A' 'Tempo de efetivo exerc�cio no cargo.'.
 VARIABLE LABELS MG6Q08_B 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_B
 'B' 'Qualifica��o.'.
 VARIABLE LABELS MG6Q08_C 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_C
 'C' 'Titula��o.'.
 VARIABLE LABELS MG6Q08_D 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_D
 'D' 'Assiduidade.'.
 VARIABLE LABELS MG6Q08_E 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_E
 'E' 'Avalia��o de desempenho.'.
 VARIABLE LABELS MG6Q08_F 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_F
 'F' 'Prova de conhecimentos para professores.'.
 VARIABLE LABELS MG6Q08_G 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_G
 'G' 'Desempenho dos alunos em avalia��es externas.'.
 VARIABLE LABELS MG6Q08_H 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_H
 'H' 'Outros.'.
 VARIABLE LABELS MG6Q09 'Descreva outras a��es Regra de depend�ncia: se Q146="Outros", abre Q147'.

 VARIABLE LABELS MG6Q10 'A remunera��o dos(as) professores(as) de Educa��o Infantil, comparada com a dos(as) professores(as) com o mesmo n�vel de forma��o que atuam no Ensino Fundamental: '.
 VALUE LABELS MG6Q10
 'A' '� inferior � dos(as) professores(as) de Ensino Fundamental.'
 'B' '� equivalente � dos(as) professores(as) de Ensino Fundamental.'
 'C' '� superior � dos(as) professores(as) de Ensino Fundamental.'
 'D' 'N�o existe este profissional na rede.'.
 VARIABLE LABELS MG7Q01 'Sugest�es de melhoria para o instrumento (inclus�o de temas, estrutura do question�rio etc.) '.
?