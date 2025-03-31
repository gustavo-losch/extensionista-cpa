/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_SECRETARIO_MUNICIPAL                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTION�RIO DO SECRETARIO MUNICIPAL         */
/*				 DE EDUCA��O DO SAEB 2021                                              */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_SECRETARIO_MUNICIPAL.CSV no diret�rio C:\ do computador.	                       */
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
/* Algumas vari�veis do question�rio do Diretor envolvem regras de valida��o e         */
/* depend�ncia. O entendimento dessas quest�es exigem consulta ao Dicion�rio de        */
/* Vari�veis para conhecer as regras de cada quest�o.                                  */
/* 							                                                           */                                                           
/***************************************************************************************/

proc format;	

value CO_UF
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

value IN_CAPITAL
1 = 'Capital'
0 = 'Interior';

value IN_PREENCHIMENTO
0 = ' N�o preenchido'
1 = 'Preenchido parcial ou totalmente';

value CO_TRATAMENTO
0 = 'Sem tratamento'
1 = 'Tratamento de duplicidade de resposta'
2 = 'Imputa��o do  CO_MUNICIPIO.';

value $QMGdoisQzeroum A='Sim' B='N�o';
value $QMGdoisQzerodois A='Sim' B='N�o';
value $QMGdoisQzerotres A='Sim' B='N�o';
value $QMGdoisQzeroquatro A='Sim' B='N�o';
value $QMGdoisQzerocinco A='Sim' B='N�o';
value $QMGdoisQzeroseis A='Servidores.';
value $QMGdoisQzerosete A='Sim' B='N�o';
value $QMGdoisQzerooito A='Sim' B='N�o';
value $QMGdoisQzeronove A='Sim' B='N�o';
value $QMGdoisQumzero A='Sim' B='N�o';
value $QMGdoisQumum A='Sim' B='N�o';
value $QMGdoisQumdois A='Sim' B='N�o';
value $QMGdoisQumtres A='Sim' B='N�o';
value $QMGdoisQumcinco A='Sim' B='N�o';
value $QMGdoisQumseis A='Sim' B='N�o';
value $QMGdoisQumsete A='Sim' B='N�o';
value $QMGdoisQumoito A='Sim' B='N�o';
value $QMGdoisQumnove A='Sim' B='N�o';
value $QMGdoisQdoiszero A='Sim' B='N�o';
value $QMGdoisQdoisum A='Sim' B='N�o';
value $QMGdoisQdoistres A='Sim, a legisla��o contempla todos os crit�rios utilizados.' B='Sim, a legisla��o contempla uma parte dos crit�rios utilizados.' C='N�o, n�o h� legisla��o municipal para escolha dos diretores.';
value $QMGdoisQdoisquatro A='Sim' B='N�o';
value $QMGdoisQdoiscinco A='Sim' B='N�o';
value $QMGdoisQdoisseis A='Sim' B='N�o';
value $QMGdoisQdoissete A='Sim' B='N�o';
value $QMGdoisQdoisoito A='Sim' B='N�o';
value $QMGdoisQdoisnove A='Sim' B='N�o';
value $QMGdoisQtreszero A='Sim' B='N�o';
value $QMGdoisQtresum A='Sim' B='N�o';
value $QMGdoisQtresdois A='Sim' B='N�o';
value $QMGdoisQtrestres A='Sim' B='N�o';
value $QMGdoisQtrescinco_A A='Constru��o de escolas.';
value $QMGdoisQtrescinco_B B='Reforma de escolas (melhoria e/ou adequa��o do espa�o f�sico etc.).';
value $QMGdoisQtrescinco_C C='Aquisi��o de mobili�rio para as escolas (carteiras, arm�rios etc.).';
value $QMGdoisQtrescinco_D D='Aquisi��o de material de higiene, limpeza e equipamento de prote��o individual (�lcool, sabonete, m�scara etc).';
value $QMGdoisQtrescinco_E E='Aquisi��o de material pedag�gico (livros, software, material audiovisual etc.).';
value $QMGdoisQtrescinco_F F='Aquisi��o de equipamentos para alunos e ou professores (computador, tablet, celular, chip para internet etc.).';
value $QMGdoisQtrescinco_G G='Produ��o de material did�tico audiovisual ou impresso para aulas remotas.';
value $QMGdoisQtrescinco_H H='Contrata��o de profissionais para a educa��o.';
value $QMGdoisQtrescinco_I I='Distribui��o da alimenta��o para os estudantes.';
value $QMGdoisQtrescinco_J J='Outra prioridade.';
value $QMGdoisQtressete A='Sim' B='N�o';
value $QMGdoisQtresoito A='Sim' B='N�o';
value $QMGdoisQtresnove A='Sim' B='N�o';
value $QMGdoisQquatrozero A='Sim' B='N�o';
value $QMGdoisQquatroum A='Sim' B='N�o';
value $QMGdoisQquatrodois A='Sim' B='N�o';
value $QMGtresQzeroum A='Sim' B='N�o';
value $QMGtresQzerodois A='Preencha com zero caso n�o haja nenhum.';
value $QMGtresQzerotres A='Sim' B='N�o';
value $QMGtresQzeroquatro A='Sim' B='N�o';
value $QMGtresQzerocinco A='Sim' B='N�o';
value $QMGtresQzeroseis A='Sim' B='N�o';
value $QMGtresQzerosete A='Sim' B='N�o';
value $QMGtresQzerooito A='Sim' B='N�o';
value $QMGtresQzeronove A='Sim' B='N�o';
value $QMGtresQumzero A='Sim' B='N�o';
value $QMGtresQumum A='Sim' B='N�o';
value $QMGtresQumdois A='Sim' B='N�o';
value $QMGtresQumtres A='Sim' B='N�o';
value $QMGtresQumquatro A='Sim' B='N�o';
value $QMGtresQumcinco A='Munic�pio' B='Institui��es';
value $QMGtresQumseis A='Munic�pio' B='Institui��es';
value $QMGtresQumsete A='Munic�pio' B='Institui��es';
value $QMGtresQumoito A='Munic�pio' B='Institui��es';
value $QMGtresQumnove A='Munic�pio' B='Institui��es';
value $QMGtresQdoiszero A='Munic�pio' B='Institui��es';
value $QMGtresQdoisum A='Munic�pio' B='Institui��es';
value $QMGquatroQzeroum A='Sim' B='N�o';
value $QMGquatroQzerodois A='Sim' B='N�o';
value $QMGquatroQzerotres A='Sim' B='N�o';
value $QMGquatroQzeroquatro A='Preencha com zero caso n�o haja nenhum.';
value $QMGquatroQzerocinco A='Sim' B='N�o';
value $QMGquatroQzeroseis A='Sim' B='N�o';
value $QMGquatroQzerosete A='Sim' B='N�o';
value $QMGquatroQzerooito A='Sim' B='N�o';
value $QMGquatroQzeronove A='Sim' B='N�o';
value $QMGquatroQumzero A='Sim' B='N�o';
value $QMGcincoQzeroum A='Sim' B='N�o';
value $QMGcincoQzerodois_A A='Subs�dios para a forma��o continuada de professores';
value $QMGcincoQzerodois_B B='Subs�dios para a avalia��o de programas ou projetos da Secretaria de Educa��o';
value $QMGcincoQzerodois_C C='Produ��o de materiais did�ticos e pedag�gicos';
value $QMGcincoQzerodois_D D='Recompensa para escolas com melhores resultados';
value $QMGcincoQzerodois_E E='Aux�lio para unidades escolares com resultados inferiores';
value $QMGcincoQzerodois_F F='Subs�dios para pagamento de bonifica��o para professores';
value $QMGcincoQzerodois_G G='Cria��o de crit�rios para remanejamento de diretores';
value $QMGcincoQzerotres A='Sim' B='N�o';
value $QMGcincoQzeroquatro_A A='Pr�-escola';
value $QMGcincoQzeroquatro_B B='Ensino Fundamental - Anos iniciais';
value $QMGcincoQzeroquatro_C C='Ensino Fundamental - Anos finais';
value $QMGcincoQzerocinco_A A='Mensal';
value $QMGcincoQzerocinco_B B='Bimestral';
value $QMGcincoQzerocinco_C C='Trimestral';
value $QMGcincoQzerocinco_D D='Semestral';
value $QMGcincoQzerocinco_E E='Anual';
value $QMGcincoQzerocinco_F F='Bianual';
value $QMGcincoQzerocinco_G G='Outra';
value $QMGcincoQzeroseis A='Sim' B='N�o';
value $QMGcincoQzerosete_A A='Auto-avalia��o das escolas';
value $QMGcincoQzerosete_B B='Avalia��o do Projeto Pedag�gico das escolas';
value $QMGcincoQzerosete_C C='Desempenho dos professores';
value $QMGcincoQzerosete_D D='Desempenho dos diretores das escolas';
value $QMGcincoQzerosete_E E='Infraestrutura das escolas';
value $QMGcincoQzerosete_F F='Transporte escolar';
value $QMGcincoQzerosete_G G='Merenda escolar';
value $QMGcincoQzerosete_H H='Organiza��o administrativa das escolas';
value $QMGcincoQzerosete_I I='Outras';
value $QMGseisQzeroum A='Sim' B='N�o' C='N�o se aplica';
value $QMGseisQzerodois A='Sim' B='N�o' C='N�o se aplica';
value $QMGseisQzerotres A='Sim' B='N�o' C='N�o se aplica';
value $QMGseisQzeroquatro A='Sim' B='N�o' C='N�o se aplica';
value $QMGseisQzerocinco_A A='At� 20 horas semanais.';
value $QMGseisQzerocinco_B B='De 21 a 30 horas semanais.';
value $QMGseisQzerocinco_C C='De 31 a 40 horas semanais.';
value $QMGseisQzerocinco_D D='Mais de 40 horas semanais.';
value $QMGseisQzeroseis A='Sim' B='N�o';
value $QMGseisQzerosete A='Sim' B='N�o';
value $QMGseisQzerooito_A A='Tempo de efetivo exerc�cio no cargo.';
value $QMGseisQzerooito_B B='Qualifica��o.';
value $QMGseisQzerooito_C C='Titula��o.';
value $QMGseisQzerooito_D D='Assiduidade.';
value $QMGseisQzerooito_E E='Avalia��o de desempenho.';
value $QMGseisQzerooito_F F='Prova de conhecimentos para professores.';
value $QMGseisQzerooito_G G='Desempenho dos alunos em avalia��es externas.';
value $QMGseisQzerooito_H H='Outros.';
value $QMGseisQumzero A='� inferior � dos(as) professores(as) de Ensino Fundamental.' B='� equivalente � dos(as) professores(as) de Ensino Fundamental.' C='� superior � dos(as) professores(as) de Ensino Fundamental.' D='N�o existe este profissional na rede.';

run;

DATA WORK.TS_SECRETARIO_MUNICIPAL;

 INFILE 'C:\TS_SECRETARIO_MUNICIPAL.csv' /*Endere�o do arquivo*/
        LRECL=4096
		firstobs=2
        DLM="|"
        MISSOVER
        DSD ;

INPUT
ID_SAEB : 4.                         
CO_UF : 2.
CO_MUNICIPIO : 7.
IN_CAPITAL : 1.
IN_PREENCHIMENTO : 1.
CO_TRATAMENTO : 1.
DT_PREENCHIMENTO : $CHAR10.
MG2Q01 : $CHAR1.
MG2Q02 : $CHAR1.
MG2Q03 : $CHAR1.
MG2Q04 : $CHAR1.
MG2Q05 : $CHAR1.
MG2Q06 : 4.
MG2Q07 : $CHAR1.
MG2Q08 : $CHAR1.
MG2Q09 : $CHAR1.
MG2Q10 : $CHAR1.
MG2Q11 : $CHAR1.
MG2Q12 : $CHAR1.
MG2Q13 : $CHAR1.
MG2Q14 : $CHAR2000.
MG2Q15 : $CHAR1.
MG2Q16 : $CHAR1.
MG2Q17 : $CHAR1.
MG2Q18 : $CHAR1.
MG2Q19 : $CHAR1.
MG2Q20 : $CHAR1.
MG2Q21 : $CHAR1.
MG2Q22 : $CHAR2000.
MG2Q23 : $CHAR1.
MG2Q24 : $CHAR1.
MG2Q25 : $CHAR1.
MG2Q26 : $CHAR1.
MG2Q27 : $CHAR1.
MG2Q28 : $CHAR1.
MG2Q29 : $CHAR1.
MG2Q30 : $CHAR1.
MG2Q31 : $CHAR1.
MG2Q32 : $CHAR1.
MG2Q33 : $CHAR1.
MG2Q34 : $CHAR2000.
MG2Q35_A : $CHAR1.
MG2Q35_B : $CHAR1.
MG2Q35_C : $CHAR1.
MG2Q35_D : $CHAR1.
MG2Q35_E : $CHAR1.
MG2Q35_F : $CHAR1.
MG2Q35_G : $CHAR1.
MG2Q35_H : $CHAR1.
MG2Q35_I : $CHAR1.
MG2Q35_J : $CHAR1.
MG2Q36 : $CHAR2000.
MG2Q37 : $CHAR1.
MG2Q38 : $CHAR1.
MG2Q39 : $CHAR1.
MG2Q40 : $CHAR1.
MG2Q41 : $CHAR1.
MG2Q42 : $CHAR1.
MG3Q01 : $CHAR1.
MG3Q02 : 4.
MG3Q03 : $CHAR1.
MG3Q04 : $CHAR1.
MG3Q05 : $CHAR1.
MG3Q06 : $CHAR1.
MG3Q07 : $CHAR1.
MG3Q08 : $CHAR1.
MG3Q09 : $CHAR1.
MG3Q10 : $CHAR1.
MG3Q11 : $CHAR1.
MG3Q12 : $CHAR1.
MG3Q13 : $CHAR1.
MG3Q14 : $CHAR1.
MG3Q15 : $CHAR1.
MG3Q16 : $CHAR1.
MG3Q17 : $CHAR1.
MG3Q18 : $CHAR1.
MG3Q19 : $CHAR1.
MG3Q20 : $CHAR1.
MG3Q21 : $CHAR1.
MG4Q01 : $CHAR1.
MG4Q02 : $CHAR1.
MG4Q03 : $CHAR1.
MG4Q04 : 4.
MG4Q05 : $CHAR1.
MG4Q06 : $CHAR1.
MG4Q07 : $CHAR1.
MG4Q08 : $CHAR1.
MG4Q09 : $CHAR1.
MG4Q10 : $CHAR1.
MG5Q01 : $CHAR1.
MG5Q02_A : $CHAR1.
MG5Q02_B : $CHAR1.
MG5Q02_C : $CHAR1.
MG5Q02_D : $CHAR1.
MG5Q02_E : $CHAR1.
MG5Q02_F : $CHAR1.
MG5Q02_G : $CHAR1.
MG5Q03 : $CHAR1.
MG5Q04_A : $CHAR1.
MG5Q04_B : $CHAR1.
MG5Q04_C : $CHAR1.
MG5Q05_A : $CHAR1.
MG5Q05_B : $CHAR1.
MG5Q05_C : $CHAR1.
MG5Q05_D : $CHAR1.
MG5Q05_E : $CHAR1.
MG5Q05_F : $CHAR1.
MG5Q05_G : $CHAR1.
MG5Q06 : $CHAR1.
MG5Q07_A : $CHAR1.
MG5Q07_B : $CHAR1.
MG5Q07_C : $CHAR1.
MG5Q07_D : $CHAR1.
MG5Q07_E : $CHAR1.
MG5Q07_F : $CHAR1.
MG5Q07_G : $CHAR1.
MG5Q07_H : $CHAR1.
MG5Q07_I : $CHAR1.
MG5Q08 : $CHAR2000.
MG6Q01 : $CHAR1.
MG6Q02 : $CHAR1.
MG6Q03 : $CHAR1.
MG6Q04 : $CHAR1.
MG6Q05_A : $CHAR1.
MG6Q05_B : $CHAR1.
MG6Q05_C : $CHAR1.
MG6Q05_D : $CHAR1.
MG6Q06 : $CHAR1.
MG6Q07 : $CHAR1.
MG6Q08_A : $CHAR1.
MG6Q08_B : $CHAR1.
MG6Q08_C : $CHAR1.
MG6Q08_D : $CHAR1.
MG6Q08_E : $CHAR1.
MG6Q08_F : $CHAR1.
MG6Q08_G : $CHAR1.
MG6Q08_H : $CHAR1.
MG6Q09 : $CHAR2000.
MG6Q10 : $CHAR1.
MG7Q01 : $CHAR2000.
;  

ATTRIB CO_UF FORMAT= CO_UF2.;
ATTRIB IN_CAPITAL FORMAT= IN_CAPITAL8.;
ATTRIB IN_PREENCHIMENTO FORMAT= IN_PREENCHIMENTO32.;
ATTRIB CO_TRATAMENTO FORMAT= CO_TRATAMENTO37.;
ATTRIB MG2Q01 FORMAT=$QMGdoisQzeroum.;
ATTRIB MG2Q02 FORMAT=$QMGdoisQzerodois.;
ATTRIB MG2Q03 FORMAT=$QMGdoisQzerotres.;
ATTRIB MG2Q04 FORMAT=$QMGdoisQzeroquatro.;
ATTRIB MG2Q05 FORMAT=$QMGdoisQzerocinco.;
ATTRIB MG2Q07 FORMAT=$QMGdoisQzerosete.;
ATTRIB MG2Q08 FORMAT=$QMGdoisQzerooito.;
ATTRIB MG2Q09 FORMAT=$QMGdoisQzeronove.;
ATTRIB MG2Q10 FORMAT=$QMGdoisQumzero.;
ATTRIB MG2Q11 FORMAT=$QMGdoisQumum.;
ATTRIB MG2Q12 FORMAT=$QMGdoisQumdois.;
ATTRIB MG2Q13 FORMAT=$QMGdoisQumtres.;
ATTRIB MG2Q15 FORMAT=$QMGdoisQumcinco.;
ATTRIB MG2Q16 FORMAT=$QMGdoisQumseis.;
ATTRIB MG2Q17 FORMAT=$QMGdoisQumsete.;
ATTRIB MG2Q18 FORMAT=$QMGdoisQumoito.;
ATTRIB MG2Q19 FORMAT=$QMGdoisQumnove.;
ATTRIB MG2Q20 FORMAT=$QMGdoisQdoiszero.;
ATTRIB MG2Q21 FORMAT=$QMGdoisQdoisum.;
ATTRIB MG2Q23 FORMAT=$QMGdoisQdoistres.;
ATTRIB MG2Q24 FORMAT=$QMGdoisQdoisquatro.;
ATTRIB MG2Q25 FORMAT=$QMGdoisQdoiscinco.;
ATTRIB MG2Q26 FORMAT=$QMGdoisQdoisseis.;
ATTRIB MG2Q27 FORMAT=$QMGdoisQdoissete.;
ATTRIB MG2Q28 FORMAT=$QMGdoisQdoisoito.;
ATTRIB MG2Q29 FORMAT=$QMGdoisQdoisnove.;
ATTRIB MG2Q30 FORMAT=$QMGdoisQtreszero.;
ATTRIB MG2Q31 FORMAT=$QMGdoisQtresum.;
ATTRIB MG2Q32 FORMAT=$QMGdoisQtresdois.;
ATTRIB MG2Q33 FORMAT=$QMGdoisQtrestres.;
ATTRIB MG2Q35_A FORMAT=$QMGdoisQtrescinco_A.;
ATTRIB MG2Q35_B FORMAT=$QMGdoisQtrescinco_B.;
ATTRIB MG2Q35_C FORMAT=$QMGdoisQtrescinco_C.;
ATTRIB MG2Q35_D FORMAT=$QMGdoisQtrescinco_D.;
ATTRIB MG2Q35_E FORMAT=$QMGdoisQtrescinco_E.;
ATTRIB MG2Q35_F FORMAT=$QMGdoisQtrescinco_F.;
ATTRIB MG2Q35_G FORMAT=$QMGdoisQtrescinco_G.;
ATTRIB MG2Q35_H FORMAT=$QMGdoisQtrescinco_H.;
ATTRIB MG2Q35_I FORMAT=$QMGdoisQtrescinco_I.;
ATTRIB MG2Q35_J FORMAT=$QMGdoisQtrescinco_J.;
ATTRIB MG2Q37 FORMAT=$QMGdoisQtressete.;
ATTRIB MG2Q38 FORMAT=$QMGdoisQtresoito.;
ATTRIB MG2Q39 FORMAT=$QMGdoisQtresnove.;
ATTRIB MG2Q40 FORMAT=$QMGdoisQquatrozero.;
ATTRIB MG2Q41 FORMAT=$QMGdoisQquatroum.;
ATTRIB MG2Q42 FORMAT=$QMGdoisQquatrodois.;
ATTRIB MG3Q01 FORMAT=$QMGtresQzeroum.;
ATTRIB MG3Q03 FORMAT=$QMGtresQzerotres.;
ATTRIB MG3Q04 FORMAT=$QMGtresQzeroquatro.;
ATTRIB MG3Q05 FORMAT=$QMGtresQzerocinco.;
ATTRIB MG3Q06 FORMAT=$QMGtresQzeroseis.;
ATTRIB MG3Q07 FORMAT=$QMGtresQzerosete.;
ATTRIB MG3Q08 FORMAT=$QMGtresQzerooito.;
ATTRIB MG3Q09 FORMAT=$QMGtresQzeronove.;
ATTRIB MG3Q10 FORMAT=$QMGtresQumzero.;
ATTRIB MG3Q11 FORMAT=$QMGtresQumum.;
ATTRIB MG3Q12 FORMAT=$QMGtresQumdois.;
ATTRIB MG3Q13 FORMAT=$QMGtresQumtres.;
ATTRIB MG3Q14 FORMAT=$QMGtresQumquatro.;
ATTRIB MG3Q15 FORMAT=$QMGtresQumcinco.;
ATTRIB MG3Q16 FORMAT=$QMGtresQumseis.;
ATTRIB MG3Q17 FORMAT=$QMGtresQumsete.;
ATTRIB MG3Q18 FORMAT=$QMGtresQumoito.;
ATTRIB MG3Q19 FORMAT=$QMGtresQumnove.;
ATTRIB MG3Q20 FORMAT=$QMGtresQdoiszero.;
ATTRIB MG3Q21 FORMAT=$QMGtresQdoisum.;
ATTRIB MG4Q01 FORMAT=$QMGquatroQzeroum.;
ATTRIB MG4Q02 FORMAT=$QMGquatroQzerodois.;
ATTRIB MG4Q03 FORMAT=$QMGquatroQzerotres.;
ATTRIB MG4Q05 FORMAT=$QMGquatroQzerocinco.;
ATTRIB MG4Q06 FORMAT=$QMGquatroQzeroseis.;
ATTRIB MG4Q07 FORMAT=$QMGquatroQzerosete.;
ATTRIB MG4Q08 FORMAT=$QMGquatroQzerooito.;
ATTRIB MG4Q09 FORMAT=$QMGquatroQzeronove.;
ATTRIB MG4Q10 FORMAT=$QMGquatroQumzero.;
ATTRIB MG5Q01 FORMAT=$QMGcincoQzeroum.;
ATTRIB MG5Q02_A FORMAT=$QMGcincoQzerodois_A.;
ATTRIB MG5Q02_B FORMAT=$QMGcincoQzerodois_B.;
ATTRIB MG5Q02_C FORMAT=$QMGcincoQzerodois_C.;
ATTRIB MG5Q02_D FORMAT=$QMGcincoQzerodois_D.;
ATTRIB MG5Q02_E FORMAT=$QMGcincoQzerodois_E.;
ATTRIB MG5Q02_F FORMAT=$QMGcincoQzerodois_F.;
ATTRIB MG5Q02_G FORMAT=$QMGcincoQzerodois_G.;
ATTRIB MG5Q03 FORMAT=$QMGcincoQzerotres.;
ATTRIB MG5Q04_A FORMAT=$QMGcincoQzeroquatro_A.;
ATTRIB MG5Q04_B FORMAT=$QMGcincoQzeroquatro_B.;
ATTRIB MG5Q04_C FORMAT=$QMGcincoQzeroquatro_C.;
ATTRIB MG5Q05_A FORMAT=$QMGcincoQzerocinco_A.;
ATTRIB MG5Q05_B FORMAT=$QMGcincoQzerocinco_B.;
ATTRIB MG5Q05_C FORMAT=$QMGcincoQzerocinco_C.;
ATTRIB MG5Q05_D FORMAT=$QMGcincoQzerocinco_D.;
ATTRIB MG5Q05_E FORMAT=$QMGcincoQzerocinco_E.;
ATTRIB MG5Q05_F FORMAT=$QMGcincoQzerocinco_F.;
ATTRIB MG5Q05_G FORMAT=$QMGcincoQzerocinco_G.;
ATTRIB MG5Q06 FORMAT=$QMGcincoQzeroseis.;
ATTRIB MG5Q07_A FORMAT=$QMGcincoQzerosete_A.;
ATTRIB MG5Q07_B FORMAT=$QMGcincoQzerosete_B.;
ATTRIB MG5Q07_C FORMAT=$QMGcincoQzerosete_C.;
ATTRIB MG5Q07_D FORMAT=$QMGcincoQzerosete_D.;
ATTRIB MG5Q07_E FORMAT=$QMGcincoQzerosete_E.;
ATTRIB MG5Q07_F FORMAT=$QMGcincoQzerosete_F.;
ATTRIB MG5Q07_G FORMAT=$QMGcincoQzerosete_G.;
ATTRIB MG5Q07_H FORMAT=$QMGcincoQzerosete_H.;
ATTRIB MG5Q07_I FORMAT=$QMGcincoQzerosete_I.;
ATTRIB MG6Q01 FORMAT=$QMGseisQzeroum.;
ATTRIB MG6Q02 FORMAT=$QMGseisQzerodois.;
ATTRIB MG6Q03 FORMAT=$QMGseisQzerotres.;
ATTRIB MG6Q04 FORMAT=$QMGseisQzeroquatro.;
ATTRIB MG6Q05_A FORMAT=$QMGseisQzerocinco_A.;
ATTRIB MG6Q05_B FORMAT=$QMGseisQzerocinco_B.;
ATTRIB MG6Q05_C FORMAT=$QMGseisQzerocinco_C.;
ATTRIB MG6Q05_D FORMAT=$QMGseisQzerocinco_D.;
ATTRIB MG6Q06 FORMAT=$QMGseisQzeroseis.;
ATTRIB MG6Q07 FORMAT=$QMGseisQzerosete.;
ATTRIB MG6Q08_A FORMAT=$QMGseisQzerooito_A.;
ATTRIB MG6Q08_B FORMAT=$QMGseisQzerooito_B.;
ATTRIB MG6Q08_C FORMAT=$QMGseisQzerooito_C.;
ATTRIB MG6Q08_D FORMAT=$QMGseisQzerooito_D.;
ATTRIB MG6Q08_E FORMAT=$QMGseisQzerooito_E.;
ATTRIB MG6Q08_F FORMAT=$QMGseisQzerooito_F.;
ATTRIB MG6Q08_G FORMAT=$QMGseisQzerooito_G.;
ATTRIB MG6Q08_H FORMAT=$QMGseisQzerooito_H.;
ATTRIB MG6Q10 FORMAT=$QMGseisQumzero.;

LABEL

ID_SAEB = 'Ano de aplica��o do Saeb'                                                                                                                                                                                                                         
CO_UF = 'C�digo da Unidade da Federa��o'  
CO_MUNICIPIO = 'C�digo do Munic�pio'
IN_CAPITAL = 'Indicador se o municipio � uma capital ou n�o'
IN_PREENCHIMENTO = 'Indicador de preenchimento v�lido do question�rio'
CO_TRATAMENTO = 'Indicador se o municipio � uma capital ou n�o'
DT_PREENCHIMENTO = 'Data de preenchimento do question�rio'
MG2Q01 = 'Sistema Municipal de Ensino? O munic�pio possui:'
MG2Q02 = 'Plano Municipal de Educa��o? O munic�pio possui:'
MG2Q03 = 'F�rum Permanente de Educa��o? O munic�pio possui:'
MG2Q04 = 'Conselho Municipal de Educa��o? O munic�pio possui:'
MG2Q05 = 'Autonomia em rela��o ao Conselho Estadual de Educa��o? O munic�pio possui:'
MG2Q06 = 'Quantos servidores/funcion�rios est�o lotados na sede da Secretaria de Educa��o? Para responder essa quest�o, considere APENAS os servidores que est�o lotados na sede da secretaria, desconsiderando aqueles que trabalham em escolas ou outros locais.'
MG2Q07 = 'A Secretaria de Educa��o � gestora dos recursos da educa��o?'
MG2Q08 = 'Os servi�os de sa�de A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'
MG2Q09 = 'Os servi�os de assist�ncia social A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'
MG2Q10 = 'A seguran�a p�blica A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'
MG2Q11 = 'O conselho tutelar A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'
MG2Q12 = 'Institui��es de apoio ao p�blico alvo da educa��o especial A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'
MG2Q13 = 'Outros A Secretaria de Educa��o desenvolve trabalhos em conjunto com:'
MG2Q14 = 'Indique com que outro �rg�o voc� est� desenvolvendo trabalho conjunto Regra de depend�ncia: se Q032="Sim", abre Q033'
MG2Q15 = 'Livre indica��o pelo executivo municipal Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas?'
MG2Q16 = 'Titula��o acad�mica Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas?'
MG2Q17 = 'Curso de forma��o para gestores escolares Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas?'
MG2Q18 = 'Tempo de servi�o Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas?'
MG2Q19 = 'Experi�ncia em gest�o Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas?'
MG2Q20 = 'Consulta p�blica/elei��o com participa��o da comunidade Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas?'
MG2Q21 = 'Outros Quais crit�rios s�o utilizados para a escolha dos diretores sas escolas?'
MG2Q22 = 'Indique quais os outros crit�rios para a escolha de diretor Regra de depend�ncia: se Q040=1, abre Q041.'
MG2Q23 = 'Os crit�rios utilizados para a escolha dos diretores das escolas est�o definidos em legisla��o municipal?'
MG2Q24 = 'Conte�do e compreens�o dos conceitos da(s) �rea(s) de ensino: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q25 = 'Avalia��o da aprendizagem: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q26 = 'Avalia��o em larga escala: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q27 = 'Metodologias de ensino: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q28 = 'Base Nacional Comum Curricular - BNCC: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q29 = 'Gest�o da sala de aula: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q30 = 'Educa��o especial: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q31 = 'Novas tecnologias: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q32 = 'Gest�o e administra��o escolar: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q33 = 'Outros: Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede (atualiza��o, treninamento, capacita��o etc.).'
MG2Q34 = 'Descreva outros cursos de forma��o continuada Regra de depend�ncia: se Q052=1, abre Q053'
MG2Q35_A = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_B = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_C = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_D = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_E = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_F = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_G = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_H = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_I = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q35_J = 'Neste ano, dentre as despesas listadas abaixo, indique tr�s consideradas priorit�rias pelo munic�pio: Marque at� tr�s despesas.'
MG2Q36 = 'Descreva outra prioridade do munic�pio Regra de depend�ncia: se Q063=1, abre Q064'
MG2Q37 = 'Garantia da liberdade religiosa. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'
MG2Q38 = 'Inclus�o das pessoas com defici�ncia. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'
MG2Q39 = 'Combate ao abuso e � viol�ncia sexual. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'
MG2Q40 = 'Promo��o da cultura da paz e da n�o viol�ncia. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'
MG2Q41 = 'Combate aos preconceitos (racismo, homofobia etc.). Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'
MG2Q42 = 'Incentivo �s discuss�es sobre as diferen�as de g�nero. Neste ano, dentre as a��es listadas a seguir, indique quais foram desenvolvidas, ou n�o, pela secretaria junto �s escolas: Marque "Sim" ou "N�o" em cada linha.'
MG3Q01 = 'A Secretaria possui institui��es de Educa��o Infantil sob sua responsabilidade direta ou indireta?'
MG3Q02 = 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE � Educa��o infantil? Preencha com zero caso n�o haja nenhum.Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q03 = 'C�lculo da demanda por vagas? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q04 = 'Supervis�o escolar? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q05 = 'Programa de forma��o de professores? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q06 = 'Busca ativa de crian�as para a pr�-escola? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q07 = 'Comit� Intersetorial de Pol�ticas P�blicas para a Primeira Inf�ncia? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q08 = 'Transporte escolar? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q09 = 'O munic�pio possui curr�culo municipal para a educa��o infantil? Para a EDUCA��O INFANTIL, o Munic�pio possui:Regra de depend�ncia: se Q071="Sim", abre itens Q072 a Q079'
MG3Q10 = 'O curr�culo municipal da educa��o infantil est� atualizado conforme a BNCC - Base Nacional Comum Curricular? Regra de depend�ncia: se Q071="Sim" e Q079="Sim" abre Q080'
MG3Q11 = 'Creche - Crian�as de 0 a 3 anos? O munic�pio firma conv�nios e/ou parcerias com institui��es para o atendimento de:Regra de depend�ncia: se Q071="Sim", abre itens Q081 a Q082'
MG3Q12 = 'Pr�-escola - Crian�as 4 a 5 anos? O munic�pio firma conv�nios e/ou parcerias com institui��es para o atendimento de:Regra de depend�ncia: se Q071="Sim", abre itens Q081 a Q082'
MG3Q13 = 'As institui��es conveniadas e/ou que celebram parcerias com o munic�pio s�o selecionadas atrav�s de chamada p�blica? Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q14 = 'Existem normas para o funcionamento das conveniadas e/ou que celebram parcerias com o munic�pio? Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q15 = 'Propriedade das instala��es. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q16 = 'Manuten��o das instala��es. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q17 = 'Pagamento dos professores. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q18 = 'Capacita��o dos professores. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q19 = 'Fornecimento de recursos pedag�gicos. Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q20 = 'Oferta de merenda Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q21 = 'Transporte escolar Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha Regra de depend�ncia: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG4Q01 = 'A Secretaria possui escolas de Ensino Fundamental? Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha'
MG4Q02 = 'O Ensino Fundamental � oferecido em ciclos? Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha'
MG4Q03 = 'As escolas do munic�pio adotam um sistema apostilado? Com rela��o � maior parte das institui��es conveniadas e/ou que celebram parcerias com o munic�pio, indique o principal respons�vel pelas a��es abaixo: Marque apenas uma alternativa por linha'
MG4Q04 = 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE ao Ensino Fundamental? Preencha com zero caso n�o haja nenhum.'
MG4Q05 = 'C�lculo da demanda por vagas? Com rela��o ao Ensino Fundamental, a Secretaria possui:'
MG4Q06 = 'Supervis�o escolar? Com rela��o ao Ensino Fundamental, a Secretaria possui:'
MG4Q07 = 'Programa de forma��o de professores? Com rela��o ao Ensino Fundamental, a Secretaria possui:'
MG4Q08 = 'Busca ativa de crian�as e jovens? Com rela��o ao Ensino Fundamental, a Secretaria possui:'
MG4Q09 = 'O munic�pio possui curr�culo municipal para o Ensino Fundamental? Com rela��o ao Ensino Fundamental, a Secretaria possui:Regra de depend�ncia: se Q100="Sim", abre Q101'
MG4Q10 = 'O curr�culo municipal do ensino fundamental  est� atualizado conforme a BNCC - Base Nacional Comum Curricular?'
MG5Q01 = 'A Secretaria utiliza os resultados do IDEB? Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q02_A = 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q02_B = 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q02_C = 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q02_D = 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q02_E = 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q02_F = 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q02_G = 'Dentre as poss�veis formas de utiliza��o do IDEB, indique quais s�o utilizadas no munic�pio: Regra de depend�ncia: se Q102="Sim", abre Q103 a Q109'
MG5Q03 = 'A equipe da secretaria, ou institui��o contratada, elabora provas para serem aplicadas aos estudantes da sua rede? Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q04_A = 'Indique as etapas da Educa��o B�sica nas quais s�o aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q04_B = 'Indique as etapas da Educa��o B�sica nas quais s�o aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q04_C = 'Indique as etapas da Educa��o B�sica nas quais s�o aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q05_A = 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q05_B = 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q05_C = 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q05_D = 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q05_E = 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q05_F = 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q05_G = 'Indique a periodicidade da aplica��o das provas elaboradas pela secretaria ou institui��o contratada: Regra de depend�ncia: se Q110="Sim", abre Q111 a Q120'
MG5Q06 = 'A Secretaria realiza monitoramento ou avalia��o da sua rede de ensino? Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_A = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_B = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_C = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_D = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_E = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_F = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_G = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_H = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q07_I = 'Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Quais das a��es a seguir s�o realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de depend�ncia: se Q121="Sim", abre Q122 a Q130'
MG5Q08 = 'Descreva outras a��es. Regra de depend�ncia: se Q100="Sim" e Q130="Outras", abre Q131'
MG6Q01 = 'Auxiliares e assistentes da Educa��o Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q02 = 'Professores(as) da Educa��o Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q03 = 'Professores(as) do Ensino Fundamental: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q04 = 'Profissionais n�o docentes: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q05_A = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q05_B = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q05_C = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q05_D = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q06 = 'Para os professores, est� previsto o limite m�ximo de 2/3 da jornada de trabalho semanal em sala de aula? Selecione todas as que se aplicarem'
MG6Q07 = 'Para os professores com jornada de trabalho de 40 horas semanais o VENCIMENTO INICIAL � igual ou superior a R$ 2.884,24?'
MG6Q08_A = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q08_B = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q08_C = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q08_D = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q08_E = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q08_F = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q08_G = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q08_H = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Selecione todas as que se aplicarem'
MG6Q09 = 'Descreva outras a��es Regra de depend�ncia: se Q146="Outros", abre Q147'
MG6Q10 = 'A remunera��o dos(as) professores(as) de Educa��o Infantil, comparada com a dos(as) professores(as) com o mesmo n�vel de forma��o que atuam no Ensino Fundamental:'
MG7Q01 = 'Sugest�es de melhoria para o instrumento (inclus�o de temas, estrutura do question�rio etc.)'

;
run;quit;