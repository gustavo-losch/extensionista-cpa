/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_SECRETARIO_MUNICIPAL                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECRETARIO MUNICIPAL         */
/*				 DE EDUCAÇÃO DO SAEB 2021                                              */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                       */
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
/* Algumas variáveis do questionário do Diretor envolvem regras de validação e         */
/* dependência. O entendimento dessas questões exigem consulta ao Dicionário de        */
/* Variáveis para conhecer as regras de cada questão.                                  */
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
0 = ' Não preenchido'
1 = 'Preenchido parcial ou totalmente';

value CO_TRATAMENTO
0 = 'Sem tratamento'
1 = 'Tratamento de duplicidade de resposta'
2 = 'Imputação do  CO_MUNICIPIO.';

value $QMGdoisQzeroum A='Sim' B='Não';
value $QMGdoisQzerodois A='Sim' B='Não';
value $QMGdoisQzerotres A='Sim' B='Não';
value $QMGdoisQzeroquatro A='Sim' B='Não';
value $QMGdoisQzerocinco A='Sim' B='Não';
value $QMGdoisQzeroseis A='Servidores.';
value $QMGdoisQzerosete A='Sim' B='Não';
value $QMGdoisQzerooito A='Sim' B='Não';
value $QMGdoisQzeronove A='Sim' B='Não';
value $QMGdoisQumzero A='Sim' B='Não';
value $QMGdoisQumum A='Sim' B='Não';
value $QMGdoisQumdois A='Sim' B='Não';
value $QMGdoisQumtres A='Sim' B='Não';
value $QMGdoisQumcinco A='Sim' B='Não';
value $QMGdoisQumseis A='Sim' B='Não';
value $QMGdoisQumsete A='Sim' B='Não';
value $QMGdoisQumoito A='Sim' B='Não';
value $QMGdoisQumnove A='Sim' B='Não';
value $QMGdoisQdoiszero A='Sim' B='Não';
value $QMGdoisQdoisum A='Sim' B='Não';
value $QMGdoisQdoistres A='Sim, a legislação contempla todos os critérios utilizados.' B='Sim, a legislação contempla uma parte dos critérios utilizados.' C='Não, não há legislação municipal para escolha dos diretores.';
value $QMGdoisQdoisquatro A='Sim' B='Não';
value $QMGdoisQdoiscinco A='Sim' B='Não';
value $QMGdoisQdoisseis A='Sim' B='Não';
value $QMGdoisQdoissete A='Sim' B='Não';
value $QMGdoisQdoisoito A='Sim' B='Não';
value $QMGdoisQdoisnove A='Sim' B='Não';
value $QMGdoisQtreszero A='Sim' B='Não';
value $QMGdoisQtresum A='Sim' B='Não';
value $QMGdoisQtresdois A='Sim' B='Não';
value $QMGdoisQtrestres A='Sim' B='Não';
value $QMGdoisQtrescinco_A A='Construção de escolas.';
value $QMGdoisQtrescinco_B B='Reforma de escolas (melhoria e/ou adequação do espaço físico etc.).';
value $QMGdoisQtrescinco_C C='Aquisição de mobiliário para as escolas (carteiras, armários etc.).';
value $QMGdoisQtrescinco_D D='Aquisição de material de higiene, limpeza e equipamento de proteção individual (álcool, sabonete, máscara etc).';
value $QMGdoisQtrescinco_E E='Aquisição de material pedagógico (livros, software, material audiovisual etc.).';
value $QMGdoisQtrescinco_F F='Aquisição de equipamentos para alunos e ou professores (computador, tablet, celular, chip para internet etc.).';
value $QMGdoisQtrescinco_G G='Produção de material didático audiovisual ou impresso para aulas remotas.';
value $QMGdoisQtrescinco_H H='Contratação de profissionais para a educação.';
value $QMGdoisQtrescinco_I I='Distribuição da alimentação para os estudantes.';
value $QMGdoisQtrescinco_J J='Outra prioridade.';
value $QMGdoisQtressete A='Sim' B='Não';
value $QMGdoisQtresoito A='Sim' B='Não';
value $QMGdoisQtresnove A='Sim' B='Não';
value $QMGdoisQquatrozero A='Sim' B='Não';
value $QMGdoisQquatroum A='Sim' B='Não';
value $QMGdoisQquatrodois A='Sim' B='Não';
value $QMGtresQzeroum A='Sim' B='Não';
value $QMGtresQzerodois A='Preencha com zero caso não haja nenhum.';
value $QMGtresQzerotres A='Sim' B='Não';
value $QMGtresQzeroquatro A='Sim' B='Não';
value $QMGtresQzerocinco A='Sim' B='Não';
value $QMGtresQzeroseis A='Sim' B='Não';
value $QMGtresQzerosete A='Sim' B='Não';
value $QMGtresQzerooito A='Sim' B='Não';
value $QMGtresQzeronove A='Sim' B='Não';
value $QMGtresQumzero A='Sim' B='Não';
value $QMGtresQumum A='Sim' B='Não';
value $QMGtresQumdois A='Sim' B='Não';
value $QMGtresQumtres A='Sim' B='Não';
value $QMGtresQumquatro A='Sim' B='Não';
value $QMGtresQumcinco A='Município' B='Instituições';
value $QMGtresQumseis A='Município' B='Instituições';
value $QMGtresQumsete A='Município' B='Instituições';
value $QMGtresQumoito A='Município' B='Instituições';
value $QMGtresQumnove A='Município' B='Instituições';
value $QMGtresQdoiszero A='Município' B='Instituições';
value $QMGtresQdoisum A='Município' B='Instituições';
value $QMGquatroQzeroum A='Sim' B='Não';
value $QMGquatroQzerodois A='Sim' B='Não';
value $QMGquatroQzerotres A='Sim' B='Não';
value $QMGquatroQzeroquatro A='Preencha com zero caso não haja nenhum.';
value $QMGquatroQzerocinco A='Sim' B='Não';
value $QMGquatroQzeroseis A='Sim' B='Não';
value $QMGquatroQzerosete A='Sim' B='Não';
value $QMGquatroQzerooito A='Sim' B='Não';
value $QMGquatroQzeronove A='Sim' B='Não';
value $QMGquatroQumzero A='Sim' B='Não';
value $QMGcincoQzeroum A='Sim' B='Não';
value $QMGcincoQzerodois_A A='Subsídios para a formação continuada de professores';
value $QMGcincoQzerodois_B B='Subsídios para a avaliação de programas ou projetos da Secretaria de Educação';
value $QMGcincoQzerodois_C C='Produção de materiais didáticos e pedagógicos';
value $QMGcincoQzerodois_D D='Recompensa para escolas com melhores resultados';
value $QMGcincoQzerodois_E E='Auxílio para unidades escolares com resultados inferiores';
value $QMGcincoQzerodois_F F='Subsídios para pagamento de bonificação para professores';
value $QMGcincoQzerodois_G G='Criação de critérios para remanejamento de diretores';
value $QMGcincoQzerotres A='Sim' B='Não';
value $QMGcincoQzeroquatro_A A='Pré-escola';
value $QMGcincoQzeroquatro_B B='Ensino Fundamental - Anos iniciais';
value $QMGcincoQzeroquatro_C C='Ensino Fundamental - Anos finais';
value $QMGcincoQzerocinco_A A='Mensal';
value $QMGcincoQzerocinco_B B='Bimestral';
value $QMGcincoQzerocinco_C C='Trimestral';
value $QMGcincoQzerocinco_D D='Semestral';
value $QMGcincoQzerocinco_E E='Anual';
value $QMGcincoQzerocinco_F F='Bianual';
value $QMGcincoQzerocinco_G G='Outra';
value $QMGcincoQzeroseis A='Sim' B='Não';
value $QMGcincoQzerosete_A A='Auto-avaliação das escolas';
value $QMGcincoQzerosete_B B='Avaliação do Projeto Pedagógico das escolas';
value $QMGcincoQzerosete_C C='Desempenho dos professores';
value $QMGcincoQzerosete_D D='Desempenho dos diretores das escolas';
value $QMGcincoQzerosete_E E='Infraestrutura das escolas';
value $QMGcincoQzerosete_F F='Transporte escolar';
value $QMGcincoQzerosete_G G='Merenda escolar';
value $QMGcincoQzerosete_H H='Organização administrativa das escolas';
value $QMGcincoQzerosete_I I='Outras';
value $QMGseisQzeroum A='Sim' B='Não' C='Não se aplica';
value $QMGseisQzerodois A='Sim' B='Não' C='Não se aplica';
value $QMGseisQzerotres A='Sim' B='Não' C='Não se aplica';
value $QMGseisQzeroquatro A='Sim' B='Não' C='Não se aplica';
value $QMGseisQzerocinco_A A='Até 20 horas semanais.';
value $QMGseisQzerocinco_B B='De 21 a 30 horas semanais.';
value $QMGseisQzerocinco_C C='De 31 a 40 horas semanais.';
value $QMGseisQzerocinco_D D='Mais de 40 horas semanais.';
value $QMGseisQzeroseis A='Sim' B='Não';
value $QMGseisQzerosete A='Sim' B='Não';
value $QMGseisQzerooito_A A='Tempo de efetivo exercício no cargo.';
value $QMGseisQzerooito_B B='Qualificação.';
value $QMGseisQzerooito_C C='Titulação.';
value $QMGseisQzerooito_D D='Assiduidade.';
value $QMGseisQzerooito_E E='Avaliação de desempenho.';
value $QMGseisQzerooito_F F='Prova de conhecimentos para professores.';
value $QMGseisQzerooito_G G='Desempenho dos alunos em avaliações externas.';
value $QMGseisQzerooito_H H='Outros.';
value $QMGseisQumzero A='É inferior à dos(as) professores(as) de Ensino Fundamental.' B='É equivalente à dos(as) professores(as) de Ensino Fundamental.' C='É superior à dos(as) professores(as) de Ensino Fundamental.' D='Não existe este profissional na rede.';

run;

DATA WORK.TS_SECRETARIO_MUNICIPAL;

 INFILE 'C:\TS_SECRETARIO_MUNICIPAL.csv' /*Endereço do arquivo*/
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

ID_SAEB = 'Ano de aplicação do Saeb'                                                                                                                                                                                                                         
CO_UF = 'Código da Unidade da Federação'  
CO_MUNICIPIO = 'Código do Município'
IN_CAPITAL = 'Indicador se o municipio é uma capital ou não'
IN_PREENCHIMENTO = 'Indicador de preenchimento válido do questionário'
CO_TRATAMENTO = 'Indicador se o municipio é uma capital ou não'
DT_PREENCHIMENTO = 'Data de preenchimento do questionário'
MG2Q01 = 'Sistema Municipal de Ensino? O município possui:'
MG2Q02 = 'Plano Municipal de Educação? O município possui:'
MG2Q03 = 'Fórum Permanente de Educação? O município possui:'
MG2Q04 = 'Conselho Municipal de Educação? O município possui:'
MG2Q05 = 'Autonomia em relação ao Conselho Estadual de Educação? O município possui:'
MG2Q06 = 'Quantos servidores/funcionários estão lotados na sede da Secretaria de Educação? Para responder essa questão, considere APENAS os servidores que estão lotados na sede da secretaria, desconsiderando aqueles que trabalham em escolas ou outros locais.'
MG2Q07 = 'A Secretaria de Educação é gestora dos recursos da educação?'
MG2Q08 = 'Os serviços de saúde A Secretaria de Educação desenvolve trabalhos em conjunto com:'
MG2Q09 = 'Os serviços de assistência social A Secretaria de Educação desenvolve trabalhos em conjunto com:'
MG2Q10 = 'A segurança pública A Secretaria de Educação desenvolve trabalhos em conjunto com:'
MG2Q11 = 'O conselho tutelar A Secretaria de Educação desenvolve trabalhos em conjunto com:'
MG2Q12 = 'Instituições de apoio ao público alvo da educação especial A Secretaria de Educação desenvolve trabalhos em conjunto com:'
MG2Q13 = 'Outros A Secretaria de Educação desenvolve trabalhos em conjunto com:'
MG2Q14 = 'Indique com que outro órgão você está desenvolvendo trabalho conjunto Regra de dependência: se Q032="Sim", abre Q033'
MG2Q15 = 'Livre indicação pelo executivo municipal Quais critérios são utilizados para a escolha dos diretores sas escolas?'
MG2Q16 = 'Titulação acadêmica Quais critérios são utilizados para a escolha dos diretores sas escolas?'
MG2Q17 = 'Curso de formação para gestores escolares Quais critérios são utilizados para a escolha dos diretores sas escolas?'
MG2Q18 = 'Tempo de serviço Quais critérios são utilizados para a escolha dos diretores sas escolas?'
MG2Q19 = 'Experiência em gestão Quais critérios são utilizados para a escolha dos diretores sas escolas?'
MG2Q20 = 'Consulta pública/eleição com participação da comunidade Quais critérios são utilizados para a escolha dos diretores sas escolas?'
MG2Q21 = 'Outros Quais critérios são utilizados para a escolha dos diretores sas escolas?'
MG2Q22 = 'Indique quais os outros critérios para a escolha de diretor Regra de dependência: se Q040=1, abre Q041.'
MG2Q23 = 'Os critérios utilizados para a escolha dos diretores das escolas estão definidos em legislação municipal?'
MG2Q24 = 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q25 = 'Avaliação da aprendizagem: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q26 = 'Avaliação em larga escala: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q27 = 'Metodologias de ensino: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q28 = 'Base Nacional Comum Curricular - BNCC: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q29 = 'Gestão da sala de aula: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q30 = 'Educação especial: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q31 = 'Novas tecnologias: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q32 = 'Gestão e administração escolar: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q33 = 'Outros: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'
MG2Q34 = 'Descreva outros cursos de formação continuada Regra de dependência: se Q052=1, abre Q053'
MG2Q35_A = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_B = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_C = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_D = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_E = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_F = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_G = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_H = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_I = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q35_J = 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'
MG2Q36 = 'Descreva outra prioridade do município Regra de dependência: se Q063=1, abre Q064'
MG2Q37 = 'Garantia da liberdade religiosa. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'
MG2Q38 = 'Inclusão das pessoas com deficiência. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'
MG2Q39 = 'Combate ao abuso e à violência sexual. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'
MG2Q40 = 'Promoção da cultura da paz e da não violência. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'
MG2Q41 = 'Combate aos preconceitos (racismo, homofobia etc.). Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'
MG2Q42 = 'Incentivo às discussões sobre as diferenças de gênero. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'
MG3Q01 = 'A Secretaria possui instituições de Educação Infantil sob sua responsabilidade direta ou indireta?'
MG3Q02 = 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE à Educação infantil? Preencha com zero caso não haja nenhum.Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q03 = 'Cálculo da demanda por vagas? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q04 = 'Supervisão escolar? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q05 = 'Programa de formação de professores? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q06 = 'Busca ativa de crianças para a pré-escola? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q07 = 'Comitê Intersetorial de Políticas Públicas para a Primeira Infância? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q08 = 'Transporte escolar? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q09 = 'O município possui currículo municipal para a educação infantil? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'
MG3Q10 = 'O currículo municipal da educação infantil está atualizado conforme a BNCC - Base Nacional Comum Curricular? Regra de dependência: se Q071="Sim" e Q079="Sim" abre Q080'
MG3Q11 = 'Creche - Crianças de 0 a 3 anos? O município firma convênios e/ou parcerias com instituições para o atendimento de:Regra de dependência: se Q071="Sim", abre itens Q081 a Q082'
MG3Q12 = 'Pré-escola - Crianças 4 a 5 anos? O município firma convênios e/ou parcerias com instituições para o atendimento de:Regra de dependência: se Q071="Sim", abre itens Q081 a Q082'
MG3Q13 = 'As instituições conveniadas e/ou que celebram parcerias com o município são selecionadas através de chamada pública? Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q14 = 'Existem normas para o funcionamento das conveniadas e/ou que celebram parcerias com o município? Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q15 = 'Propriedade das instalações. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q16 = 'Manutenção das instalações. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q17 = 'Pagamento dos professores. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q18 = 'Capacitação dos professores. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q19 = 'Fornecimento de recursos pedagógicos. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q20 = 'Oferta de merenda Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG3Q21 = 'Transporte escolar Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'
MG4Q01 = 'A Secretaria possui escolas de Ensino Fundamental? Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha'
MG4Q02 = 'O Ensino Fundamental é oferecido em ciclos? Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha'
MG4Q03 = 'As escolas do município adotam um sistema apostilado? Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha'
MG4Q04 = 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE ao Ensino Fundamental? Preencha com zero caso não haja nenhum.'
MG4Q05 = 'Cálculo da demanda por vagas? Com relação ao Ensino Fundamental, a Secretaria possui:'
MG4Q06 = 'Supervisão escolar? Com relação ao Ensino Fundamental, a Secretaria possui:'
MG4Q07 = 'Programa de formação de professores? Com relação ao Ensino Fundamental, a Secretaria possui:'
MG4Q08 = 'Busca ativa de crianças e jovens? Com relação ao Ensino Fundamental, a Secretaria possui:'
MG4Q09 = 'O município possui currículo municipal para o Ensino Fundamental? Com relação ao Ensino Fundamental, a Secretaria possui:Regra de dependência: se Q100="Sim", abre Q101'
MG4Q10 = 'O currículo municipal do ensino fundamental  está atualizado conforme a BNCC - Base Nacional Comum Curricular?'
MG5Q01 = 'A Secretaria utiliza os resultados do IDEB? Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q02_A = 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q02_B = 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q02_C = 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q02_D = 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q02_E = 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q02_F = 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q02_G = 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'
MG5Q03 = 'A equipe da secretaria, ou instituição contratada, elabora provas para serem aplicadas aos estudantes da sua rede? Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q04_A = 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q04_B = 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q04_C = 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q05_A = 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q05_B = 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q05_C = 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q05_D = 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q05_E = 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q05_F = 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q05_G = 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'
MG5Q06 = 'A Secretaria realiza monitoramento ou avaliação da sua rede de ensino? Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_A = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_B = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_C = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_D = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_E = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_F = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_G = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_H = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q07_I = 'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'
MG5Q08 = 'Descreva outras ações. Regra de dependência: se Q100="Sim" e Q130="Outras", abre Q131'
MG6Q01 = 'Auxiliares e assistentes da Educação Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q02 = 'Professores(as) da Educação Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q03 = 'Professores(as) do Ensino Fundamental: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q04 = 'Profissionais não docentes: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'
MG6Q05_A = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q05_B = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q05_C = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q05_D = 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'
MG6Q06 = 'Para os professores, está previsto o limite máximo de 2/3 da jornada de trabalho semanal em sala de aula? Selecione todas as que se aplicarem'
MG6Q07 = 'Para os professores com jornada de trabalho de 40 horas semanais o VENCIMENTO INICIAL é igual ou superior a R$ 2.884,24?'
MG6Q08_A = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q08_B = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q08_C = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q08_D = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q08_E = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q08_F = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q08_G = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q08_H = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'
MG6Q09 = 'Descreva outras ações Regra de dependência: se Q146="Outros", abre Q147'
MG6Q10 = 'A remuneração dos(as) professores(as) de Educação Infantil, comparada com a dos(as) professores(as) com o mesmo nível de formação que atuam no Ensino Fundamental:'
MG7Q01 = 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.)'

;
run;quit;