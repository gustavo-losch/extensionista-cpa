/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos e Medidas                                        */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_9EF                                                */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO:     PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                   */
/*                     9º ANO DO ENSINO FUNDAMENTAL DO SAEB 2021                       */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ALUNO_9EF.CSV no diretório C:\ do computador.	                                   */
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
9 = '9º Ano do Ensino Fundamental';

value IN_SITUACAO_CENSO
0 = 'Não consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO_LP
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_MT
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_CH
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_CN
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA_LP
0= 'Ausente'
1= 'Presente';

value IN_PRESENCA_MT
0= 'Ausente'
1= 'Presente';

value IN_PRESENCA_CH
0= 'Ausente'
1= 'Presente';

value IN_PRESENCA_CN
0= 'Ausente'
1= 'Presente';

value $CO_CONCEITO_Q1_CH
0 = 'Nenhum crédito'
1 = 'Crédito parcial'
2 = 'Crédito total'
7 = 'Erros de impressão ou digitalização'
. = 'Branco';

value $CO_CONCEITO_Q2_CH
0 = 'Nenhum crédito'
1 = 'Crédito parcial'
2 = 'Crédito total'
7 = 'Erros de impressão ou digitalização'
. = 'Branco';

value $CO_CONCEITO_Q1_CN
0 = 'Nenhum crédito'
1 = 'Crédito parcial'
2 = 'Crédito total'
7 = 'Erros de impressão ou digitalização'
. = 'Branco';

value $CO_CONCEITO_Q2_CN
0 = 'Nenhum crédito'
1 = 'Crédito parcial'
2 = 'Crédito total'
7 = 'Erros de impressão ou digitalização'
. = 'Branco';

value IN_PROFICIENCIA_LP  
0 = 'Não'
1 = 'Sim';

value IN_PROFICIENCIA_MT
0 = 'Não'
1 = 'Sim';

value IN_PROFICIENCIA_CH
0 = 'Não'
1 = 'Sim';

value IN_PROFICIENCIA_CN
0 = 'Não'
1 = 'Sim';

value IN_AMOSTRA  
0 = 'Não' 
1 = 'Sim';

value IN_PREENCHIMENTO_QUESTIONARIO
0 = 'Não preenchido'
1 = 'Preenchido parcial ou totalmente';

value IN_INSE
0 = 'Não'
1 = 'Sim';

value NU_TIPO_NIVEL_INSE 1 = 'Nível I' 2 = 'Nível II' 3 = 'Nível III' 4 = 'Nível IV' 5 = 'Nível V' 6 = 'Nível VI' 7 = 'Nível VII' 8 = 'Nível VIII';

value $Q9um *='Nulo' .='Branco' A='Masculino.' B='Feminino.';
value $Q9dois *='Nulo' .='Branco' A='13 anos ou menos.' B='14 anos.' C='15 anos.' D='16 anos.' E='17 anos.' F='18 anos ou mais.';
value $Q9tres *='Nulo' .='Branco' A='Português.' B='Espanhol.' C='Outra língua.';
value $Q9quatro *='Nulo' .='Branco' A='Branca.' B='Preta.' C='Parda.' D='Amarela.' E='Indígena.' F='Não quero declarar.';
value $Q9cinco *='Nulo' .='Branco' A='Sim.' B='Não.';
value $Q9seisa *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9seisb *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9seisc *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9seisd *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9seise *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9sete *='Nulo' .='Branco' A='Não completou o 5º ano do Ensino Fundamental.' B='Ensino Fundamental, até o 5º ano.' C='Ensino Fundamental completo.' D='Ensino Médio completo.' E='Ensino Superior completo (faculdade ou graduação).' F='Não sei.';
value $Q9oito *='Nulo' .='Branco' A='Não completou o 5º ano do Ensino Fundamental.' B='Ensino Fundamental, até o 5º ano.' C='Ensino Fundamental completo.' D='Ensino Médio completo.' E='Ensino Superior completo (faculdade ou graduação).' F='Não sei.';
value $Q9novea *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q9noveb *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q9novec *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q9noved *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q9novee *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q9novef *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q9deza *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dezb *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dezc *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9onzea *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9onzeb *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9onzec *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9onzed *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9onzee *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9onzef *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9onzeg *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9onzeh *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q9dozea *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozeb *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozec *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozed *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozee *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozef *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozeg *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozeh *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dozei *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9treze *='Nulo' .='Branco' A='Menos de 30 minutos.' B='Entre 30 minutos e uma hora.' C='Mais de uma hora.';
value $Q9catorze *='Nulo' .='Branco' A='À pé.' B='De bicicleta.' C='De Van (ou Kombi).' D='De ônibus.' E='De metrô (ou trem urbano).' F='De carro.' G='Outros meios de transporte (barco, motocicleta, etc.)';
value $Q9quinze *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q9dezasseis *='Nulo' .='Branco' A='3 anos ou menos.' B='4 ou 5 anos.' C='6 ou 7 anos.' D='8 anos ou mais.';
value $Q9dezassete *='Nulo' .='Branco' A='Somente em escola pública.' B='Somente em escola particular.' C='Em escola pública e em escola particular.';
value $Q9dezoito *='Nulo' .='Branco' A='Não.' B='Sim, uma vez.' C='Sim, duas vezes ou mais.';
value $Q9dezanove *='Nulo' .='Branco' A='Nunca.' B='Sim, uma vez.' C='Sim, duas vezes ou mais.';
value $Q9vintea *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q9vinteb *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q9vintec *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q9vinted *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q9vintee *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q9vinteeum *='Nulo' .='Branco' A='Somente continuar estudando.' B='Somente trabalhar.' C='Continuar estudando e trabalhar.' D='Ainda não sei.';
value $Q9vinteedoisa *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoisb *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoisc *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoisd *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoise *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoisf *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoisg *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoish *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q9vinteedoisi *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';

DATA WORK.TS_ALUNO_9EF;

INFILE 'C:/TS_ALUNO_9EF.csv' /*Endereço do arquivo*/
		LRECL=4096
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

INPUT
ID_SAEB : 4.
ID_REGIAO : 1.
ID_UF : 2.
ID_MUNICIPIO : 7.
ID_AREA : 1.
ID_ESCOLA : 8.
IN_PUBLICA : 1.
ID_LOCALIZACAO : 1.
ID_TURMA : 6.
ID_SERIE : 1.
ID_ALUNO : 8.
IN_SITUACAO_CENSO : 1.
IN_PREENCHIMENTO_LP : 1. 
IN_PREENCHIMENTO_MT : 1.
IN_PREENCHIMENTO_CH : 1.
IN_PREENCHIMENTO_CN : 1.
IN_PRESENCA_LP : 1.
IN_PRESENCA_MT : 1.
IN_PRESENCA_CH : 1.
IN_PRESENCA_CN : 1.
ID_CADERNO_LP : 2. 
ID_BLOCO_1_LP : 1.
ID_BLOCO_2_LP : 1.
ID_CADERNO_MT : 2. 
ID_BLOCO_1_MT : 1.
ID_BLOCO_2_MT : 1.
ID_CADERNO_CH : 2. 
ID_BLOCO_1_CH : 1.
ID_BLOCO_2_CH : 1.
ID_BLOCO_3_CH : 1.
NU_BLOCO_1_ABERTA_CH : 1.
NU_BLOCO_2_ABERTA_CH : 1.
ID_CADERNO_CN : 2. 
ID_BLOCO_1_CN : 1.
ID_BLOCO_2_CN : 1.
ID_BLOCO_3_CN : 1.
NU_BLOCO_1_ABERTA_CN : 1.
NU_BLOCO_2_ABERTA_CN : 1.
TX_RESP_BLOCO1_LP : $CHAR13.
TX_RESP_BLOCO2_LP : $CHAR13.
TX_RESP_BLOCO1_MT : $CHAR13.
TX_RESP_BLOCO2_MT : $CHAR13.
TX_RESP_BLOCO1_CH : $CHAR10.
TX_RESP_BLOCO2_CH : $CHAR10.
TX_RESP_BLOCO3_CH : $CHAR10.
CO_CONCEITO_Q1_CH : $CHAR1.
CO_CONCEITO_Q2_CH : $CHAR1.
TX_RESP_BLOCO1_CN : $CHAR9.
TX_RESP_BLOCO2_CN : $CHAR9.
TX_RESP_BLOCO3_CN : $CHAR9.
CO_CONCEITO_Q1_CN : $CHAR1.
CO_CONCEITO_Q2_CN : $CHAR1.
IN_PROFICIENCIA_LP : 1.
IN_PROFICIENCIA_MT : 1.
IN_PROFICIENCIA_CH : 1.
IN_PROFICIENCIA_CN : 1.
IN_AMOSTRA : 1.
ESTRATO : $CHAR14.
ESTRATO_CIENCIAS : $CHAR14.
PESO_ALUNO_LP : 12.
PROFICIENCIA_LP : 10.
ERRO_PADRAO_LP : 10.
PROFICIENCIA_LP_SAEB : 12.
ERRO_PADRAO_LP_SAEB : 10.
PESO_ALUNO_MT : 12.
PROFICIENCIA_MT : 10.
ERRO_PADRAO_MT : 10.
PROFICIENCIA_MT_SAEB : 12.
ERRO_PADRAO_MT_SAEB : 10.
PESO_ALUNO_CH : 12.
PROFICIENCIA_CH : 10.
ERRO_PADRAO_CH : 10.
PROFICIENCIA_CH_SAEB : 12.
ERRO_PADRAO_CH_SAEB : 10.
PESO_ALUNO_CN : 12.
PROFICIENCIA_CN : 10.
ERRO_PADRAO_CN : 10.
PROFICIENCIA_CN_SAEB : 12.
ERRO_PADRAO_CN_SAEB : 10.
IN_PREENCHIMENTO_QUESTIONARIO : 1.
IN_INSE : 1.
INSE_ALUNO : 4.
NU_TIPO_NIVEL_INSE : 1.
PESO_ALUNO_INSE : 12.
TX_RESP_Q01 : $CHAR1.
TX_RESP_Q02 : $CHAR1.
TX_RESP_Q03 : $CHAR1.
TX_RESP_Q04 : $CHAR1.
TX_RESP_Q05 : $CHAR1.
TX_RESP_Q06a : $CHAR1.
TX_RESP_Q06b : $CHAR1.
TX_RESP_Q06c : $CHAR1.
TX_RESP_Q06d : $CHAR1.
TX_RESP_Q06e : $CHAR1.
TX_RESP_Q07 : $CHAR1.
TX_RESP_Q08 : $CHAR1.
TX_RESP_Q09a : $CHAR1.
TX_RESP_Q09b : $CHAR1.
TX_RESP_Q09c : $CHAR1.
TX_RESP_Q09d : $CHAR1.
TX_RESP_Q09e : $CHAR1.
TX_RESP_Q09f : $CHAR1.
TX_RESP_Q10a : $CHAR1.
TX_RESP_Q10b : $CHAR1.
TX_RESP_Q10c : $CHAR1.
TX_RESP_Q11a : $CHAR1.
TX_RESP_Q11b : $CHAR1.
TX_RESP_Q11c : $CHAR1.
TX_RESP_Q11d : $CHAR1.
TX_RESP_Q11e : $CHAR1.
TX_RESP_Q11f : $CHAR1.
TX_RESP_Q11g : $CHAR1.
TX_RESP_Q11h : $CHAR1.
TX_RESP_Q12a : $CHAR1.
TX_RESP_Q12b : $CHAR1.
TX_RESP_Q12c : $CHAR1.
TX_RESP_Q12d : $CHAR1.
TX_RESP_Q12e : $CHAR1.
TX_RESP_Q12f : $CHAR1.
TX_RESP_Q12g : $CHAR1.
TX_RESP_Q12h : $CHAR1.
TX_RESP_Q12i : $CHAR1.
TX_RESP_Q13 : $CHAR1.
TX_RESP_Q14 : $CHAR1.
TX_RESP_Q15 : $CHAR1.
TX_RESP_Q16 : $CHAR1.
TX_RESP_Q17 : $CHAR1.
TX_RESP_Q18 : $CHAR1.
TX_RESP_Q19 : $CHAR1.
TX_RESP_Q20a : $CHAR1.
TX_RESP_Q20b : $CHAR1.
TX_RESP_Q20c : $CHAR1.
TX_RESP_Q20d : $CHAR1.
TX_RESP_Q20e : $CHAR1.
TX_RESP_Q21 : $CHAR1.
TX_RESP_Q22a : $CHAR1.
TX_RESP_Q22b : $CHAR1.
TX_RESP_Q22c : $CHAR1.
TX_RESP_Q22d : $CHAR1.
TX_RESP_Q22e : $CHAR1.
TX_RESP_Q22f : $CHAR1.
TX_RESP_Q22g : $CHAR1.
TX_RESP_Q22h : $CHAR1.
TX_RESP_Q22i : $CHAR1.
;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_SERIE FORMAT=ID_SERIE37.;
ATTRIB IN_SITUACAO_CENSO FORMAT=IN_SITUACAO_CENSO15.;
ATTRIB IN_PREENCHIMENTO_LP FORMAT=IN_PREENCHIMENTO_LP20.; 
ATTRIB IN_PREENCHIMENTO_MT FORMAT=IN_PREENCHIMENTO_MT20.; 
ATTRIB IN_PREENCHIMENTO_CH FORMAT=IN_PREENCHIMENTO_CH20.; 
ATTRIB IN_PREENCHIMENTO_CN FORMAT=IN_PREENCHIMENTO_CN20.; 
ATTRIB IN_PRESENCA_LP FORMAT=IN_PRESENCA_LP20.; 
ATTRIB IN_PRESENCA_MT FORMAT=IN_PRESENCA_MT20.; 
ATTRIB IN_PRESENCA_CH FORMAT=IN_PRESENCA_CH20.; 
ATTRIB IN_PRESENCA_CN FORMAT=IN_PRESENCA_CN20.; 
ATTRIB CO_CONCEITO_Q1_CH FORMAT=$CO_CONCEITO_Q1_CH.;
ATTRIB CO_CONCEITO_Q2_CH FORMAT=$CO_CONCEITO_Q2_CH.;
ATTRIB CO_CONCEITO_Q1_CN FORMAT=$CO_CONCEITO_Q1_CN.;
ATTRIB CO_CONCEITO_Q2_CN FORMAT=$CO_CONCEITO_Q2_CN.;
ATTRIB IN_PROFICIENCIA_LP FORMAT=IN_PROFICIENCIA_LP3.;
ATTRIB IN_PROFICIENCIA_MT FORMAT=IN_PROFICIENCIA_MT3.;
ATTRIB IN_PROFICIENCIA_CH FORMAT=IN_PROFICIENCIA_CH3.;
ATTRIB IN_PROFICIENCIA_CN FORMAT=IN_PROFICIENCIA_CN3.;
ATTRIB IN_AMOSTRA FORMAT=IN_AMOSTRA3.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO33.;
ATTRIB IN_INSE FORMAT=IN_INSE3.;
ATTRIB NU_TIPO_NIVEL_INSE FORMAT=NU_TIPO_NIVEL_INSE10.;
ATTRIB TX_RESP_Q01 FORMAT=$Q9um.;
ATTRIB TX_RESP_Q02 FORMAT=$Q9dois.;
ATTRIB TX_RESP_Q03 FORMAT=$Q9tres.;
ATTRIB TX_RESP_Q04 FORMAT=$Q9quatro.;
ATTRIB TX_RESP_Q05 FORMAT=$Q9cinco.;
ATTRIB TX_RESP_Q06a FORMAT=$Q9seisa.;
ATTRIB TX_RESP_Q06b FORMAT=$Q9seisb.;
ATTRIB TX_RESP_Q06c FORMAT=$Q9seisc.;
ATTRIB TX_RESP_Q06d FORMAT=$Q9seisd.;
ATTRIB TX_RESP_Q06e FORMAT=$Q9seise.;
ATTRIB TX_RESP_Q07 FORMAT=$Q9sete.;
ATTRIB TX_RESP_Q08 FORMAT=$Q9oito.;
ATTRIB TX_RESP_Q09a FORMAT=$Q9novea.;
ATTRIB TX_RESP_Q09b FORMAT=$Q9noveb.;
ATTRIB TX_RESP_Q09c FORMAT=$Q9novec.;
ATTRIB TX_RESP_Q09d FORMAT=$Q9noved.;
ATTRIB TX_RESP_Q09e FORMAT=$Q9novee.;
ATTRIB TX_RESP_Q09f FORMAT=$Q9novef.;
ATTRIB TX_RESP_Q10a FORMAT=$Q9deza.;
ATTRIB TX_RESP_Q10b FORMAT=$Q9dezb.;
ATTRIB TX_RESP_Q10c FORMAT=$Q9dezc.;
ATTRIB TX_RESP_Q11a FORMAT=$Q9onzea.;
ATTRIB TX_RESP_Q11b FORMAT=$Q9onzeb.;
ATTRIB TX_RESP_Q11c FORMAT=$Q9onzec.;
ATTRIB TX_RESP_Q11d FORMAT=$Q9onzed.;
ATTRIB TX_RESP_Q11e FORMAT=$Q9onzee.;
ATTRIB TX_RESP_Q11f FORMAT=$Q9onzef.;
ATTRIB TX_RESP_Q11g FORMAT=$Q9onzeg.;
ATTRIB TX_RESP_Q11h FORMAT=$Q9onzeh.;
ATTRIB TX_RESP_Q12a FORMAT=$Q9dozea.;
ATTRIB TX_RESP_Q12b FORMAT=$Q9dozeb.;
ATTRIB TX_RESP_Q12c FORMAT=$Q9dozec.;
ATTRIB TX_RESP_Q12d FORMAT=$Q9dozed.;
ATTRIB TX_RESP_Q12e FORMAT=$Q9dozee.;
ATTRIB TX_RESP_Q12f FORMAT=$Q9dozef.;
ATTRIB TX_RESP_Q12g FORMAT=$Q9dozeg.;
ATTRIB TX_RESP_Q12h FORMAT=$Q9dozeh.;
ATTRIB TX_RESP_Q12i FORMAT=$Q9dozei.;
ATTRIB TX_RESP_Q13 FORMAT=$Q9treze.;
ATTRIB TX_RESP_Q14 FORMAT=$Q9catorze.;
ATTRIB TX_RESP_Q15 FORMAT=$Q9quinze.;
ATTRIB TX_RESP_Q16 FORMAT=$Q9dezasseis.;
ATTRIB TX_RESP_Q17 FORMAT=$Q9dezassete.;
ATTRIB TX_RESP_Q18 FORMAT=$Q9dezoito.;
ATTRIB TX_RESP_Q19 FORMAT=$Q9dezanove.;
ATTRIB TX_RESP_Q20a FORMAT=$Q9vintea.;
ATTRIB TX_RESP_Q20b FORMAT=$Q9vinteb.;
ATTRIB TX_RESP_Q20c FORMAT=$Q9vintec.;
ATTRIB TX_RESP_Q20d FORMAT=$Q9vinted.;
ATTRIB TX_RESP_Q20e FORMAT=$Q9vintee.;
ATTRIB TX_RESP_Q21 FORMAT=$Q9vinteeum.;
ATTRIB TX_RESP_Q22a FORMAT=$Q9vinteedoisa.;
ATTRIB TX_RESP_Q22b FORMAT=$Q9vinteedoisb.;
ATTRIB TX_RESP_Q22c FORMAT=$Q9vinteedoisc.;
ATTRIB TX_RESP_Q22d FORMAT=$Q9vinteedoisd.;
ATTRIB TX_RESP_Q22e FORMAT=$Q9vinteedoise.;
ATTRIB TX_RESP_Q22f FORMAT=$Q9vinteedoisf.;
ATTRIB TX_RESP_Q22g FORMAT=$Q9vinteedoisg.;
ATTRIB TX_RESP_Q22h FORMAT=$Q9vinteedoish.;
ATTRIB TX_RESP_Q22i FORMAT=$Q9vinteedoisi.;

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
ID_SERIE = 'Série'                                                                                                                                     
ID_ALUNO = 'Código do aluno no Saeb'                                                                                                           
IN_SITUACAO_CENSO = 'Indicador de consistência com o Censo Escolar 2021'                                                                              
IN_PREENCHIMENTO_LP = 'Indicador de preenchimento da prova de Língua Portuguesa'  
IN_PREENCHIMENTO_MT = 'Indicador de preenchimento da prova de Matemática'
IN_PREENCHIMENTO_CH = 'Indicador de preenchimento da prova de Ciências Humanas'
IN_PREENCHIMENTO_CN = 'Indicador de preenchimento da prova de Ciências da Natureza'
IN_PRESENCA_LP = 'Indicador de presença na prova de Língua Portuguesa'   
IN_PRESENCA_MT = 'Indicador de presença na prova de Matemática' 
IN_PRESENCA_CH = 'Indicador de presença na prova de Ciências Humanas' 
IN_PRESENCA_CN = 'Indicador de presença na prova de Ciências da Natureza' 
ID_CADERNO_LP = 'Número do caderno de prova de Língua Portuguesa'
ID_BLOCO_1_LP = 'Identificador do Bloco 1 de Língua Portuguesa'
ID_BLOCO_2_LP = 'Identificador do Bloco 2 de Língua Portuguesa'
ID_CADERNO_MT = 'Número do caderno de prova de Matemática'
ID_BLOCO_1_MT = 'Identificador do Bloco 1 de Matemática'
ID_BLOCO_2_MT = 'Identificador do Bloco 2 de Matemática'
ID_CADERNO_CH = 'Número do caderno de prova de Ciências Humanas'
ID_BLOCO_1_CH = 'Identificador do Bloco 1 de Ciências Humanas'
ID_BLOCO_2_CH = 'Identificador do Bloco 2 de Ciências Humanas'
ID_BLOCO_3_CH = 'Identificador do Bloco 3 de Ciências Humanas'
NU_BLOCO_1_ABERTA_CH = 'Identificador do Bloco 1 de resposta construída em Ciências Humanas'
NU_BLOCO_2_ABERTA_CH = 'Identificador do Bloco 2 de resposta construída em Ciências Humanas'
ID_CADERNO_CN = 'Número do caderno de prova de Ciências da Natureza'
ID_BLOCO_1_CN = 'Identificador do Bloco 1 de Ciências da Natureza'
ID_BLOCO_2_CN = 'Identificador do Bloco 2 de Ciências da Natureza'
ID_BLOCO_3_CN = 'Identificador do Bloco 3 de Ciências da Natureza'
NU_BLOCO_1_ABERTA_CN = 'Identificador do Bloco 1 de resposta construída em Ciências da Natureza'
NU_BLOCO_2_ABERTA_CN = 'Identificador do Bloco 2 de resposta construída em Ciências da Natureza'
TX_RESP_BLOCO1_LP = 'Resposta do aluno ao Bloco 1 da prova de Língua Portuguesa'                                                                     
TX_RESP_BLOCO2_LP = 'Resposta do aluno ao Bloco 2 da prova de Língua Portuguesa'                                                                     
TX_RESP_BLOCO1_MT = 'Resposta do aluno ao Bloco 1 da prova de Matemática'                                                                            
TX_RESP_BLOCO2_MT = 'Resposta do aluno ao Bloco 2 da prova de Matemática' 
TX_RESP_BLOCO1_CH = 'Resposta do aluno ao Bloco 1 da prova de Ciências Humanas'                                                                            
TX_RESP_BLOCO2_CH = 'Resposta do aluno ao Bloco 2 da prova de Ciências Humanas' 
TX_RESP_BLOCO3_CH = 'Resposta do aluno ao Bloco 3 da prova de Ciências Humanas' 
CO_CONCEITO_Q1_CH = 'Conceito obtido na questão 1 de resposta construída em Ciências Humanas'
CO_CONCEITO_Q2_CH = 'Conceito obtido na questão 2 de resposta construída em Ciências Humanas'
TX_RESP_BLOCO1_CN = 'Resposta do aluno ao Bloco 1 da prova de Ciências da Natureza'                                                                            
TX_RESP_BLOCO2_CN = 'Resposta do aluno ao Bloco 2 da prova de Ciências da Natureza' 
TX_RESP_BLOCO3_CN = 'Resposta do aluno ao Bloco 3 da prova de Ciências da Natureza' 
CO_CONCEITO_Q1_CN = 'Conceito obtido na questão 1 de resposta construída em Ciências da Natureza'
CO_CONCEITO_Q2_CN = 'Conceito obtido na questão 2 de resposta construída em Ciências da Natureza'
IN_PROFICIENCIA_LP = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de provas de Língua Portuguesa e Matemática)' 
IN_PROFICIENCIA_MT = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de provas de Língua Portuguesa e Matemática)' 
IN_PROFICIENCIA_CH = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Ciências Humanas)' 
IN_PROFICIENCIA_CN = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Ciências da Natureza)' 
IN_AMOSTRA = 'Indicador de participação na amostra do Saeb'
ESTRATO = 'Descrição dos estratos do Saeb'
ESTRATO_CIENCIAS = 'Descrição dos estratos para amostra de Ciências Humanas e Ciências da Natureza'
PESO_ALUNO_LP = 'Peso do aluno em Língua Portuguesa'
PROFICIENCIA_LP = 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_LP = 'Erro padrão da proficiência em Língua Portuguesa'
PROFICIENCIA_LP_SAEB = 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_LP_SAEB = 'Erro padrão da proficiência transformada em Língua Portuguesa'
PESO_ALUNO_MT = 'Peso do aluno em Matemática'
PROFICIENCIA_MT = 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_MT = 'Erro padrão da proficiência em Matemática'
PROFICIENCIA_MT_SAEB = 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_MT_SAEB = 'Erro padrão da proficiência transformada em Matemática'                                                                    
PESO_ALUNO_CH = 'Peso do aluno em Ciências Humanas'
PROFICIENCIA_CH = 'Proficiência do aluno em Ciências Humanas calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_CH = 'Erro padrão da proficiência em Ciências Humanas'
PROFICIENCIA_CH_SAEB = 'Proficiência do aluno em Ciências Humanas transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/19)'
ERRO_PADRAO_CH_SAEB = 'Erro padrão da proficiência transformada em Ciências Humanas'                                                                    
PESO_ALUNO_CN = 'Peso do aluno em Ciências da Natureza'
PROFICIENCIA_CN = 'Proficiência do aluno em Ciências da Natureza calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_CN = 'Erro padrão da proficiência em Ciências da Natureza'
PROFICIENCIA_CN_SAEB = 'Proficiência do aluno em Ciências da Natureza transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/19)'
ERRO_PADRAO_CN_SAEB = 'Erro padrão da proficiência transformada em Ciências da Natureza'                                                                    
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
IN_INSE = 'Indicador para cálculo do INSE (São considerados válidos os estudantes que responderam pelo menos 8 itens, dentre os 17 utilizados para o cálculo do indicador)'
INSE_ALUNO = 'Resultado individual do INSE para o aluno'
NU_TIPO_NIVEL_INSE = 'Classificação do Indicador de Nível Socioeconômico em 8 Grupos'
PESO_ALUNO_INSE = 'Peso do Aluno para cálculo do INSE 2021'
TX_RESP_Q01 = 'Qual é o seu sexo?'
TX_RESP_Q02 = 'Qual é a sua idade? (Questionário de aluno do 9º ano)'
TX_RESP_Q03 = 'Qual língua que seus pais falam com mais frequência em casa?'
TX_RESP_Q04 = 'Qual é a sua cor ou raça?'
TX_RESP_Q05 = 'Você possui algum tipo de necessidade especial?'
TX_RESP_Q06a = 'Normalmente, quem mora na sua casa? - Mãe ou madrasta.'
TX_RESP_Q06b = 'Normalmente, quem mora na sua casa? - Pai ou padrasto.'
TX_RESP_Q06c = 'Normalmente, quem mora na sua casa? - Irmão(s) ou irmã(s).'
TX_RESP_Q06d = 'Normalmente, quem mora na sua casa? - Avô ou avó.'
TX_RESP_Q06e = 'Normalmente, quem mora na sua casa? - Outros (tios, primos etc.).'
TX_RESP_Q07 = 'Qual é a maior escolaridade da sua mãe (ou mulher responsável por você)?'
TX_RESP_Q08 = 'Qual é a maior escolaridade de seu pai (ou homem responsável por você)?'
TX_RESP_Q09a = 'Com que frequência seus pais ou responsáveis costumam: - Ler em casa.'
TX_RESP_Q09b = 'Com que frequência seus pais ou responsáveis costumam: - Conversar com você sobre o que acontece na escola.'
TX_RESP_Q09c = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a estudar.'
TX_RESP_Q09d = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a fazer a tarefa de casa.'
TX_RESP_Q09e = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a comparecer às aulas.'
TX_RESP_Q09f = 'Com que frequência seus pais ou responsáveis costumam: - Ir às reuniões de pais na escola.'
TX_RESP_Q10a = 'Na rua em que você mora tem: - Asfalto ou calçamento.'
TX_RESP_Q10b = 'Na rua em que você mora tem: - Água tratada.'
TX_RESP_Q10c = 'Na rua em que você mora tem: - Iluminação.'
TX_RESP_Q11a = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Geladeira.'
TX_RESP_Q11b = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Tablet.'
TX_RESP_Q11c = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Computador (ou notebook).'
TX_RESP_Q11d = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Quartos para dormir.'
TX_RESP_Q11e = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televisão.'
TX_RESP_Q11f = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Banheiro.'
TX_RESP_Q11g = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Carro.'
TX_RESP_Q11h = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Celular com internet (smartphone).'
TX_RESP_Q12a = 'Na sua casa tem: - Tv por internet (Netflix, GloboPlay, etc.).'
TX_RESP_Q12b = 'Na sua casa tem: - Rede Wi-Fi.'
TX_RESP_Q12c = 'Na sua casa tem: - Um quarto só seu.'
TX_RESP_Q12d = 'Na sua casa tem: - Mesa para estudar.'
TX_RESP_Q12e = 'Na sua casa tem: - Forno de microondas.'
TX_RESP_Q12f = 'Na sua casa tem: - Aspirador de pó.'
TX_RESP_Q12g = 'Na sua casa tem: - Máquina de lavar roupa.'
TX_RESP_Q12h = 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'
TX_RESP_Q12i = 'Na sua casa tem: - Garagem.'
TX_RESP_Q13 = 'Quanto tempo você demora para chegar à sua escola?'
TX_RESP_Q14 = 'Considerando a maior distância percorrida, normalmente de que forma você chega à sua escola?'
TX_RESP_Q15 = 'Você se utiliza de transporte escolar, ou passe escolar, para ir à escola?'
TX_RESP_Q16 = 'Com que idade você entrou na escola?'
TX_RESP_Q17 = 'A partir do primeiro ano do ensino fundamental, em que tipo de escola você estudou?'
TX_RESP_Q18 = 'Você já foi reprovado(a)?'
TX_RESP_Q19 = 'Alguma vez você abandonou a escola deixando de frequentá-la até o final do ano escolar?'
TX_RESP_Q20a = 'Fora da escola em dias de aula, quanto tempo você usa para: - Estudar (lição de casa, trabalhos escolares, etc.).'
TX_RESP_Q20b = 'Fora da escola em dias de aula, quanto tempo você usa para: - Fazer cursos.'
TX_RESP_Q20c = 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar em casa (lavar louça, limpar quintal, cuidar dos irmãos).'
TX_RESP_Q20d = 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar fora de casa (recebendo ou não um salário).'
TX_RESP_Q20e = 'Fora da escola em dias de aula, quanto tempo você usa para: - Lazer (TV, internet, brincar, música etc.).'
TX_RESP_Q21 = 'Quando terminar o Ensino Fundamental você pretende: (Questionário de aluno do 9º ano)'
TX_RESP_Q22a = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu possuía equipamento adequado para acompanhar o ensino remoto.'
TX_RESP_Q22b = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu tive conexão de internet adequada para acesso às aulas remotas.'
TX_RESP_Q22c = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Tive facilidade em usar os programas de comunicação nas aulas remotas.'
TX_RESP_Q22d = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Recebi material impresso da escola (livros, apostilas, atividades em folha etc.).'
TX_RESP_Q22e = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Os professores me auxiliaram a entender o conteúdo.'
TX_RESP_Q22f = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu compreendi o conteúdo das aulas remotas.'
TX_RESP_Q22g = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Em casa havia um lugar tranquilo para eu assistir às aulas.'
TX_RESP_Q22h = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Meus familiares apoiaram o meu estudo.'
TX_RESP_Q22i = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Meus colegas me apoiaram durante o ensino remoto.'
;

RUN;QUIT;