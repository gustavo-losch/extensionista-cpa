/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*              INPUT_SAS_TS_PROFESSOR                                                 */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:  PROGRAMA PARA LEITURA DOS QUESTION�RIOS DOS PROFESSORES DO SAEB 2021   */
/*                                                                                     */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_PROFESSOR.CSV no diret�rio C:\ do computador.	                                   */
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
0 = 'Interior';

value IN_PUBLICA
0='Privada'
1='P�blica';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value ID_SERIE
2='2� ano do Ensino Fundamental'
5='5� ano do Ensino Fundamental'
9='9� ano do Ensino Fundamental'
12='3�/4� s�ries do Ensino M�dio Tradicional'
13='3�/4� s�ries do Ensino M�dio Integrado';

value IN_PREENCHIMENTO_QUESTIONARIO
0='N�o preenchido'
1='Preenchido parcial ou totalmente';

value SQ_QUESTIONARIO
1='L�ngua Portuguesa'
2='Matem�tica'
3='Reserva';

value IN_PREENCHIMENTO_OUTRA_TURMA
0='N�o'
1='Sim';

value $QPum *='Nulo' .='Branco' A='Masculino.' B='Feminino.';
value $QPdois *='Nulo' .='Branco' A='Branca.' B='Preta.' C='Parda.' D='Amarela.' E='Ind�gena.' F='N�o quero declarar.';
value $QPtres *='Nulo' .='Branco' A='At� 24 anos.' B='De 25 a 29 anos.' C='De 30 a 39 anos.' D='De 40 a 49 anos.' E='De 50 a 54 anos.' F='55 anos ou mais.';
value $QPquatro *='Nulo' .='Branco' A='N�o.' B='Sim.';
value $QPcinco *='Nulo' .='Branco' A='Menos de 1 ano.' B='De 1 a 2 anos.' C='De 3 a 5 anos.' D='De 6 a 10 anos.' E='De 11 a 15 anos.' F='De 16 a 20 anos.' G='De 21 a 25 anos.' H='Mais de 25 anos.';
value $QPseis *='Nulo' .='Branco' A='Menos de 1 ano.' B='De 1 a 2 anos.' C='De 3 a 5 anos.' D='De 6 a 10 anos.' E='De 11 a 15 anos.' F='De 16 a 20 anos.' G='Mais de 20 anos.';
value $QPsete *='Nulo' .='Branco' A='Apenas nesta.' B='Em 2.' C='Em 3.' D='Em 4 ou mais.';
value $QPoito *='Nulo' .='Branco' A='Concursado/efetivo/est�vel.' B='Contrato tempor�rio.' C='Contrato CLT.' D='Outra situa��o trabalhista.';
value $QPnove *='Nulo' .='Branco' A='At� 10 horas.' B='De 11 a 20 horas.' C='De 21 a 30 horas.' D='De 31 a 40 horas.' E='Mais de 40 horas.';
value $QPdez *='Nulo' .='Branco' A='At� R$ 1.100,00.' B='De R$ 1.100,01 at� R$ 2.200,00.' C='De R$ 2.200,01 at� R$ 3.300,00.' D='De R$ 3.300,01 at� R$ 4.400,00.' E='De R$ 4.400,01 at� R$ 5.500,00.' F='De R$ 5.500,01 at� R$ 6.600,00.' G='De R$ 6.600,01 at� R$ 7.700,00.' H='De R$ 7.700,01 a R$ 8.800,00.' I='Acima de R$ 8.800,01.';
value $QPonze *='Nulo' .='Branco' A='N�o.' B='Sim.';
value $QPdoze *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPtreze *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPcatorze *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPquinze *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPdezasseis *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPdezassete *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPdezoito *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPdezanove *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPvinte *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPvinteeum *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPvinteedois *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPvinteetres *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPvinteequatro *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPvinteecinco *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPvinteeseis *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPvinteesete *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPvinteeoito *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPvinteenove *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPtrinta *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPtrintaeum *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPtrintaedois *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPtrintaetres *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPtrintaequatro *='Nulo' .='Branco' A='Inadequado.' B='Pouco adequado.' C='Razoavelmente adequado.' D='Adequado.';
value $QPtrintaecinco *='Nulo' .='Branco' A='N�O USO / N�o tem.' B='USO E � Inadequado.' C='USO E � Pouco adequado.' D='USO E � Razoavelmente adequado.' E='USO E � Adequado.';
value $QPtrintaeseis *='Nulo' .='Branco' A='N�O USO / N�o tem.' B='USO E � Inadequado.' C='USO E � Pouco adequado.' D='USO E � Razoavelmente adequado.' E='USO E � Adequado.';
value $QPtrintaesete *='Nulo' .='Branco' A='N�O USO / N�o tem.' B='USO E � Inadequado.' C='USO E � Pouco adequado.' D='USO E � Razoavelmente adequado.' E='USO E � Adequado.';
value $QPtrintaeoito *='Nulo' .='Branco' A='N�O USO / N�o tem.' B='USO E � Inadequado.' C='USO E � Pouco adequado.' D='USO E � Razoavelmente adequado.' E='USO E � Adequado.';
value $QPtrintaenove *='Nulo' .='Branco' A='N�O USO / N�o tem.' B='USO E � Inadequado.' C='USO E � Pouco adequado.' D='USO E � Razoavelmente adequado.' E='USO E � Adequado.';
value $QPquarenta *='Nulo' .='Branco' A='N�O USO / N�o tem.' B='USO E � Inadequado.' C='USO E � Pouco adequado.' D='USO E � Razoavelmente adequado.' E='USO E � Adequado.';
value $QPquarentaeum *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaedois *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaetres *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaequatro *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaecinco *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaeseis *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaesete *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaeoito *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPquarentaenove *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPcinquenta *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPcinquentaeum *='Nulo' .='Branco' A='Nenhuma necessidade.' B='Pouca necessidade.' C='Moderada necessidade.' D='Grande necessidade.';
value $QPcinquentaedois *='Nulo' .='Branco' A='Nenhuma.' B='Uma.' C='Duas.' D='Tr�s ou mais.';
value $QPcinquentaetres *='Nulo' .='Branco' A='Nenhuma.' B='Uma.' C='Duas.' D='Tr�s ou mais.';
value $QPcinquentaequatro *='Nulo' .='Branco' A='Nenhuma.' B='Uma.' C='Duas.' D='Tr�s ou mais.';
value $QPcinquentaecinco *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='Fiz curso ou atividade. Nunca.' C='Fiz curso ou atividade. Poucas vezes.' D='Fiz curso ou atividade. Muitas vezes.' E='Fiz curso ou atividade. Sempre.';
value $QPcinquentaeseis *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='Fiz curso ou atividade. Nunca.' C='Fiz curso ou atividade. Poucas vezes.' D='Fiz curso ou atividade. Muitas vezes.' E='Fiz curso ou atividade. Sempre.';
value $QPcinquentaesete *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='Fiz curso ou atividade. Nunca.' C='Fiz curso ou atividade. Poucas vezes.' D='Fiz curso ou atividade. Muitas vezes.' E='Fiz curso ou atividade. Sempre.';
value $QPcinquentaeoito *='Nulo' .='Branco' A='N�o fiz este curso.' B='Sim, sem apoio.' C='Sim, com apoio parcial.' D='Sim, com apoio total.';
value $QPcinquentaenove *='Nulo' .='Branco' A='N�o fiz este curso.' B='Sim, sem apoio.' C='Sim, com apoio parcial.' D='Sim, com apoio total.';
value $QPsessenta *='Nulo' .='Branco' A='N�o fiz este curso.' B='Sim, sem apoio.' C='Sim, com apoio parcial.' D='Sim, com apoio total.';
value $QPsessentaeum *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='N�o contribuiu.' C='Contribuiu pouco.' D='Contribuiu razoavelmente.' E='Contribuiu muito.';
value $QPsessentaedois *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='N�o contribuiu.' C='Contribuiu pouco.' D='Contribuiu razoavelmente.' E='Contribuiu muito.';
value $QPsessentaetres *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='N�o contribuiu.' C='Contribuiu pouco.' D='Contribuiu razoavelmente.' E='Contribuiu muito.';
value $QPsessentaequatro *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='N�o contribuiu.' C='Contribuiu pouco.' D='Contribuiu razoavelmente.' E='Contribuiu muito.';
value $QPsessentaecinco *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='N�o contribuiu.' C='Contribuiu pouco.' D='Contribuiu razoavelmente.' E='Contribuiu muito.';
value $QPsessentaeseis *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='N�o contribuiu.' C='Contribuiu pouco.' D='Contribuiu razoavelmente.' E='Contribuiu muito.';
value $QPsessentaesete *='Nulo' .='Branco' A='N�o fiz curso ou atividade.' B='N�o contribuiu.' C='Contribuiu pouco.' D='Contribuiu razoavelmente.' E='Contribuiu muito.';
value $QPsessentaeoito *='Nulo' .='Branco' A='Docente da turma.' B='Todo o corpo docente da escola.' C='Equipe gestora.' D='Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).';
value $QPsessentaenove *='Nulo' .='Branco' A='Docente da turma.' B='Todo o corpo docente da escola.' C='Equipe gestora.' D='Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).';
value $QPsetenta *='Nulo' .='Branco' A='Docente da turma.' B='Todo o corpo docente da escola.' C='Equipe gestora.' D='Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).';
value $QPsetentaeum *='Nulo' .='Branco' A='Docente da turma.' B='Todo o corpo docente da escola.' C='Equipe gestora.' D='Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).';
value $QPsetentaedois *='Nulo' .='Branco' A='Docente da turma.' B='Todo o corpo docente da escola.' C='Equipe gestora.' D='Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).';
value $QPsetentaetres *='Nulo' .='Branco' A='Docente da turma.' B='Todo o corpo docente da escola.' C='Equipe gestora.' D='Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).';
value $QPsetentaequatro *='Nulo' .='Branco' A='N�o existe Conselho de Classe nesta escola.' B='Nenhuma vez.' C='Uma ou duas vezes.' D='Tr�s ou quatro vezes.' E='Mais de quatro vezes.' F='N�o sei.';
value $QPsetentaecinco *='Nulo' .='Branco' A='N�o sei.' B='N�o.' C='Sim.';
value $QPsetentaeseis *='Nulo' .='Branco' A='N�o sei.' B='N�o.' C='Sim.';
value $QPsetentaesete *='Nulo' .='Branco' A='N�o sei.' B='N�o.' C='Sim.';
value $QPsetentaeoito *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPsetentaenove *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPoitenta *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPoitentaeum *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPoitentaedois *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPoitentaetres *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPoitentaequatro *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPoitentaecinco *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPoitentaeseis *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPoitentaesete *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPoitentaeoito *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPoitentaenove *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='Muitas vezes.' D='Sempre.';
value $QPnoventa *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPnoventaeum *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPnoventaedois *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPnoventaetres *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPnoventaequatro *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPnoventaecinco *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPnoventaeseis *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPnoventaesete *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPnoventaeoito *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPnoventaenove *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcem *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoeum *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoedois *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoetres *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoequatro *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoecinco *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoeseis *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoesete *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoeoito *='Nulo' .='Branco' A='Nunca.' B='Poucas vezes.' C='V�rias vezes.';
value $QPcentoenove *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPcentoedez *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPcentoeonze *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPcentoedoze *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPcentoetreze *='Nulo' .='Branco' A='Discordo fortemente.' B='Discordo.' C='Concordo.' D='Concordo fortemente.';
value $QPcentoecatorze *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='Poucas vezes.' C='V�rias vezes.' D='Sempre ou quase sempre.';
value $QPcentoequinze *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='Poucas vezes.' C='V�rias vezes.' D='Sempre ou quase sempre.';
value $QPcentoedezasseis *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='Poucas vezes.' C='V�rias vezes.' D='Sempre ou quase sempre.';
value $QPcentoedezassete *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='Poucas vezes.' C='V�rias vezes.' D='Sempre ou quase sempre.';
value $QPcentoedezoito *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='Poucas vezes.' C='V�rias vezes.' D='Sempre ou quase sempre.';
value $QPcentoedezanove *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='Poucas vezes.' C='V�rias vezes.' D='Sempre ou quase sempre.';
value $QPcentoevinte *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='Poucas vezes.' C='V�rias vezes.' D='Sempre ou quase sempre.';
value $QPcentoevinteeum *='Nulo' .='Branco' A='N�o h� estudantes p�blico alvo da educa��o especial na(s) minha(s) turma(s).' B='A escola oferece o apoio para os estudantes p�blico alvo da educa��o especial sempre que necess�rio.' C='Em alguns casos, a escola oferece o apoio para os estudantes p�blico alvo da educa��o especial.' D='A escola n�o oferece o apoio para os estudantes p�blico alvo da educa��o especial.';


run;

DATA WORK.TS_PROFESSOR;

INFILE 'C:\TS_PROFESSOR.csv' /*Endere�o do arquivo*/
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
ID_TURMA         : 6.
ID_PROFESSOR	 : 10.
ID_SERIE         : 2.
SQ_QUESTIONARIO : 1.
IN_PREENCHIMENTO_QUESTIONARIO : 1.
IN_PREENCHIMENTO_OUTRA_TURMA : 1.
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : $CHAR1.
TX_RESP_Q003 : $CHAR1.
TX_RESP_Q004 : $CHAR1.
TX_RESP_Q005 : $CHAR1.
TX_RESP_Q006 : $CHAR1.
TX_RESP_Q007 : $CHAR1.
TX_RESP_Q008 : $CHAR1.
TX_RESP_Q009 : $CHAR1.
TX_RESP_Q010 : $CHAR1.
TX_RESP_Q011 : $CHAR1.
TX_RESP_Q012 : $CHAR1.
TX_RESP_Q013 : $CHAR1.
TX_RESP_Q014 : $CHAR1.
TX_RESP_Q015 : $CHAR1.
TX_RESP_Q016 : $CHAR1.
TX_RESP_Q017 : $CHAR1.
TX_RESP_Q018 : $CHAR1.
TX_RESP_Q019 : $CHAR1.
TX_RESP_Q020 : $CHAR1.
TX_RESP_Q021 : $CHAR1.
TX_RESP_Q022 : $CHAR1.
TX_RESP_Q023 : $CHAR1.
TX_RESP_Q024 : $CHAR1.
TX_RESP_Q025 : $CHAR1.
TX_RESP_Q026 : $CHAR1.
TX_RESP_Q027 : $CHAR1.
TX_RESP_Q028 : $CHAR1.
TX_RESP_Q029 : $CHAR1.
TX_RESP_Q030 : $CHAR1.
TX_RESP_Q031 : $CHAR1.
TX_RESP_Q032 : $CHAR1.
TX_RESP_Q033 : $CHAR1.
TX_RESP_Q034 : $CHAR1.
TX_RESP_Q035 : $CHAR1.
TX_RESP_Q036 : $CHAR1.
TX_RESP_Q037 : $CHAR1.
TX_RESP_Q038 : $CHAR1.
TX_RESP_Q039 : $CHAR1.
TX_RESP_Q040 : $CHAR1.
TX_RESP_Q041 : $CHAR1.
TX_RESP_Q042 : $CHAR1.
TX_RESP_Q043 : $CHAR1.
TX_RESP_Q044 : $CHAR1.
TX_RESP_Q045 : $CHAR1.
TX_RESP_Q046 : $CHAR1.
TX_RESP_Q047 : $CHAR1.
TX_RESP_Q048 : $CHAR1.
TX_RESP_Q049 : $CHAR1.
TX_RESP_Q050 : $CHAR1.
TX_RESP_Q051 : $CHAR1.
TX_RESP_Q052 : $CHAR1.
TX_RESP_Q053 : $CHAR1.
TX_RESP_Q054 : $CHAR1.
TX_RESP_Q055 : $CHAR1.
TX_RESP_Q056 : $CHAR1.
TX_RESP_Q057 : $CHAR1.
TX_RESP_Q058 : $CHAR1.
TX_RESP_Q059 : $CHAR1.
TX_RESP_Q060 : $CHAR1.
TX_RESP_Q061 : $CHAR1.
TX_RESP_Q062 : $CHAR1.
TX_RESP_Q063 : $CHAR1.
TX_RESP_Q064 : $CHAR1.
TX_RESP_Q065 : $CHAR1.
TX_RESP_Q066 : $CHAR1.
TX_RESP_Q067 : $CHAR1.
TX_RESP_Q068 : $CHAR1.
TX_RESP_Q069 : $CHAR1.
TX_RESP_Q070 : $CHAR1.
TX_RESP_Q071 : $CHAR1.
TX_RESP_Q072 : $CHAR1.
TX_RESP_Q073 : $CHAR1.
TX_RESP_Q074 : $CHAR1.
TX_RESP_Q075 : $CHAR1.
TX_RESP_Q076 : $CHAR1.
TX_RESP_Q077 : $CHAR1.
TX_RESP_Q078 : $CHAR1.
TX_RESP_Q079 : $CHAR1.
TX_RESP_Q080 : $CHAR1.
TX_RESP_Q081 : $CHAR1.
TX_RESP_Q082 : $CHAR1.
TX_RESP_Q083 : $CHAR1.
TX_RESP_Q084 : $CHAR1.
TX_RESP_Q085 : $CHAR1.
TX_RESP_Q086 : $CHAR1.
TX_RESP_Q087 : $CHAR1.
TX_RESP_Q088 : $CHAR1.
TX_RESP_Q089 : $CHAR1.
TX_RESP_Q090 : $CHAR1.
TX_RESP_Q091 : $CHAR1.
TX_RESP_Q092 : $CHAR1.
TX_RESP_Q093 : $CHAR1.
TX_RESP_Q094 : $CHAR1.
TX_RESP_Q095 : $CHAR1.
TX_RESP_Q096 : $CHAR1.
TX_RESP_Q097 : $CHAR1.
TX_RESP_Q098 : $CHAR1.
TX_RESP_Q099 : $CHAR1.
TX_RESP_Q100 : $CHAR1.
TX_RESP_Q101 : $CHAR1.
TX_RESP_Q102 : $CHAR1.
TX_RESP_Q103 : $CHAR1.
TX_RESP_Q104 : $CHAR1.
TX_RESP_Q105 : $CHAR1.
TX_RESP_Q106 : $CHAR1.
TX_RESP_Q107 : $CHAR1.
TX_RESP_Q108 : $CHAR1.
TX_RESP_Q109 : $CHAR1.
TX_RESP_Q110 : $CHAR1.
TX_RESP_Q111 : $CHAR1.
TX_RESP_Q112 : $CHAR1.
TX_RESP_Q113 : $CHAR1.
TX_RESP_Q114 : $CHAR1.
TX_RESP_Q115 : $CHAR1.
TX_RESP_Q116 : $CHAR1.
TX_RESP_Q117 : $CHAR1.
TX_RESP_Q118 : $CHAR1.
TX_RESP_Q119 : $CHAR1.
TX_RESP_Q120 : $CHAR1.
TX_RESP_Q121 : $CHAR1.
;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_SERIE FORMAT=ID_SERIE40.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO27.;
ATTRIB SQ_QUESTIONARIO FORMAT=SQ_QUESTIONARIO17.;
ATTRIB IN_PREENCHIMENTO_OUTRA_TURMA FORMAT=IN_PREENCHIMENTO_OUTRA_TURMA3.;
ATTRIB TX_RESP_Q001 FORMAT=$QPum.;
ATTRIB TX_RESP_Q002 FORMAT=$QPdois.;
ATTRIB TX_RESP_Q003 FORMAT=$QPtres.;
ATTRIB TX_RESP_Q004 FORMAT=$QPquatro.;
ATTRIB TX_RESP_Q005 FORMAT=$QPcinco.;
ATTRIB TX_RESP_Q006 FORMAT=$QPseis.;
ATTRIB TX_RESP_Q007 FORMAT=$QPsete.;
ATTRIB TX_RESP_Q008 FORMAT=$QPoito.;
ATTRIB TX_RESP_Q009 FORMAT=$QPnove.;
ATTRIB TX_RESP_Q010 FORMAT=$QPdez.;
ATTRIB TX_RESP_Q011 FORMAT=$QPonze.;
ATTRIB TX_RESP_Q012 FORMAT=$QPdoze.;
ATTRIB TX_RESP_Q013 FORMAT=$QPtreze.;
ATTRIB TX_RESP_Q014 FORMAT=$QPcatorze.;
ATTRIB TX_RESP_Q015 FORMAT=$QPquinze.;
ATTRIB TX_RESP_Q016 FORMAT=$QPdezasseis.;
ATTRIB TX_RESP_Q017 FORMAT=$QPdezassete.;
ATTRIB TX_RESP_Q018 FORMAT=$QPdezoito.;
ATTRIB TX_RESP_Q019 FORMAT=$QPdezanove.;
ATTRIB TX_RESP_Q020 FORMAT=$QPvinte.;
ATTRIB TX_RESP_Q021 FORMAT=$QPvinteeum.;
ATTRIB TX_RESP_Q022 FORMAT=$QPvinteedois.;
ATTRIB TX_RESP_Q023 FORMAT=$QPvinteetres.;
ATTRIB TX_RESP_Q024 FORMAT=$QPvinteequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$QPvinteecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QPvinteeseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QPvinteesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QPvinteeoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QPvinteenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QPtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QPtrintaeum.;
ATTRIB TX_RESP_Q032 FORMAT=$QPtrintaedois.;
ATTRIB TX_RESP_Q033 FORMAT=$QPtrintaetres.;
ATTRIB TX_RESP_Q034 FORMAT=$QPtrintaequatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QPtrintaecinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QPtrintaeseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QPtrintaesete.;
ATTRIB TX_RESP_Q038 FORMAT=$QPtrintaeoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QPtrintaenove.;
ATTRIB TX_RESP_Q040 FORMAT=$QPquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QPquarentaeum.;
ATTRIB TX_RESP_Q042 FORMAT=$QPquarentaedois.;
ATTRIB TX_RESP_Q043 FORMAT=$QPquarentaetres.;
ATTRIB TX_RESP_Q044 FORMAT=$QPquarentaequatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QPquarentaecinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QPquarentaeseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QPquarentaesete.;
ATTRIB TX_RESP_Q048 FORMAT=$QPquarentaeoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QPquarentaenove.;
ATTRIB TX_RESP_Q050 FORMAT=$QPcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QPcinquentaeum.;
ATTRIB TX_RESP_Q052 FORMAT=$QPcinquentaedois.;
ATTRIB TX_RESP_Q053 FORMAT=$QPcinquentaetres.;
ATTRIB TX_RESP_Q054 FORMAT=$QPcinquentaequatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QPcinquentaecinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QPcinquentaeseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QPcinquentaesete.;
ATTRIB TX_RESP_Q058 FORMAT=$QPcinquentaeoito.;
ATTRIB TX_RESP_Q059 FORMAT=$QPcinquentaenove.;
ATTRIB TX_RESP_Q060 FORMAT=$QPsessenta.;
ATTRIB TX_RESP_Q061 FORMAT=$QPsessentaeum.;
ATTRIB TX_RESP_Q062 FORMAT=$QPsessentaedois.;
ATTRIB TX_RESP_Q063 FORMAT=$QPsessentaetres.;
ATTRIB TX_RESP_Q064 FORMAT=$QPsessentaequatro.;
ATTRIB TX_RESP_Q065 FORMAT=$QPsessentaecinco.;
ATTRIB TX_RESP_Q066 FORMAT=$QPsessentaeseis.;
ATTRIB TX_RESP_Q067 FORMAT=$QPsessentaesete.;
ATTRIB TX_RESP_Q068 FORMAT=$QPsessentaeoito.;
ATTRIB TX_RESP_Q069 FORMAT=$QPsessentaenove.;
ATTRIB TX_RESP_Q070 FORMAT=$QPsetenta.;
ATTRIB TX_RESP_Q071 FORMAT=$QPsetentaeum.;
ATTRIB TX_RESP_Q072 FORMAT=$QPsetentaedois.;
ATTRIB TX_RESP_Q073 FORMAT=$QPsetentaetres.;
ATTRIB TX_RESP_Q074 FORMAT=$QPsetentaequatro.;
ATTRIB TX_RESP_Q075 FORMAT=$QPsetentaecinco.;
ATTRIB TX_RESP_Q076 FORMAT=$QPsetentaeseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QPsetentaesete.;
ATTRIB TX_RESP_Q078 FORMAT=$QPsetentaeoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QPsetentaenove.;
ATTRIB TX_RESP_Q080 FORMAT=$QPoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QPoitentaeum.;
ATTRIB TX_RESP_Q082 FORMAT=$QPoitentaedois.;
ATTRIB TX_RESP_Q083 FORMAT=$QPoitentaetres.;
ATTRIB TX_RESP_Q084 FORMAT=$QPoitentaequatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QPoitentaecinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QPoitentaeseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QPoitentaesete.;
ATTRIB TX_RESP_Q088 FORMAT=$QPoitentaeoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QPoitentaenove.;
ATTRIB TX_RESP_Q090 FORMAT=$QPnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QPnoventaeum.;
ATTRIB TX_RESP_Q092 FORMAT=$QPnoventaedois.;
ATTRIB TX_RESP_Q093 FORMAT=$QPnoventaetres.;
ATTRIB TX_RESP_Q094 FORMAT=$QPnoventaequatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QPnoventaecinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QPnoventaeseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QPnoventaesete.;
ATTRIB TX_RESP_Q098 FORMAT=$QPnoventaeoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QPnoventaenove.;
ATTRIB TX_RESP_Q100 FORMAT=$QPcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QPcentoeum.;
ATTRIB TX_RESP_Q102 FORMAT=$QPcentoedois.;
ATTRIB TX_RESP_Q103 FORMAT=$QPcentoetres.;
ATTRIB TX_RESP_Q104 FORMAT=$QPcentoequatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QPcentoecinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QPcentoeseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QPcentoesete.;
ATTRIB TX_RESP_Q108 FORMAT=$QPcentoeoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QPcentoenove.;
ATTRIB TX_RESP_Q110 FORMAT=$QPcentoedez.;
ATTRIB TX_RESP_Q111 FORMAT=$QPcentoeonze.;
ATTRIB TX_RESP_Q112 FORMAT=$QPcentoedoze.;
ATTRIB TX_RESP_Q113 FORMAT=$QPcentoetreze.;
ATTRIB TX_RESP_Q114 FORMAT=$QPcentoecatorze.;
ATTRIB TX_RESP_Q115 FORMAT=$QPcentoequinze.;
ATTRIB TX_RESP_Q116 FORMAT=$QPcentoedezasseis.;
ATTRIB TX_RESP_Q117 FORMAT=$QPcentoedezassete.;
ATTRIB TX_RESP_Q118 FORMAT=$QPcentoedezoito.;
ATTRIB TX_RESP_Q119 FORMAT=$QPcentoedezanove.;
ATTRIB TX_RESP_Q120 FORMAT=$QPcentoevinte.;
ATTRIB TX_RESP_Q121 FORMAT=$QPcentoevinteeum.;

LABEL

ID_SAEB = 'Ano de Aplica��o do Saeb'                                                                                                    
ID_REGIAO = 'C�digo da Regi�o'                                                                                                                         
ID_UF = 'C�digo da Unidade da Federa��o'                                                                                                               
ID_MUNICIPIO = 'C�digo do Munic�pio'                                                                                                                   
ID_AREA = '�rea'
ID_ESCOLA= 'C�digo da Escola'
IN_PUBLICA= 'Depend�ncia Administrativa'
ID_LOCALIZACAO= 'Localiza��o'
ID_TURMA= 'C�digo da turma no Saeb'
ID_SERIE= 'S�rie'
IN_PREENCHIMENTO_QUESTIONARIO= 'Indicador de preenchimento do question�rio'
SQ_QUESTIONARIO = 'Sequencial do question�rio na turma'
IN_PREENCHIMENTO_OUTRA_TURMA = 'Indicador de preenchimento do question�rio para outra turma, pelo mesmo professor'
TX_RESP_Q001 = 'Qual � o seu sexo?'
TX_RESP_Q002 = 'Qual a sua cor ou ra�a?'
TX_RESP_Q003 = 'Qual � a sua idade? Indique a faixa et�ria que contenha a sua idade.'
TX_RESP_Q004 = 'Voc� possui necessidade especial, defici�ncia, transtorno do espectro autista, ou superdota��o?'
TX_RESP_Q005 = 'H� quantos anos voc� trabalha como professor(a)?'
TX_RESP_Q006 = 'H� quantos anos voc� trabalha como professor(a) nesta escola?'
TX_RESP_Q007 = 'Em quantas escolas voc� trabalha?'
TX_RESP_Q008 = 'Qual o seu tipo de v�nculo trabalhista nesta escola?'
TX_RESP_Q009 = 'Em uma semana normal de trabalho, quantas horas voc� trabalha para esta escola? Considere que a semana normal de trabalho deste ano � aquela sem paraliza��es, feriados ou qualquer tipo de licen�a. Considere tamb�m tarefas realizadas nos fins de semana ou noites.'
TX_RESP_Q010 = 'Qual � o seu sal�rio bruto como professor(a)? Considere como sal�rio bruto os valores recebidos somente como professor(a) nas diversas escolas em que atua, sem descontos previdenci�rio ou de qualquer outra ordem e acrescido de eventuais gratifica��es. Indique a faixa salarial em que seu sal�rio se encontra.'
TX_RESP_Q011 = 'Al�m de ser professor(a) da Educa��o B�sica, voc� exerce outra atividade remunerada?'
TX_RESP_Q012 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O �S SEGUINTES AFIRMA��ES SOBRE O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA:  - Tornar-me professor(a) foi a realiza��o de um dos meus sonhos.'
TX_RESP_Q013 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - A profiss�o de professor(a) � valorizada pela sociedade.'
TX_RESP_Q014 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - As vantagens de ser professor(a) superam claramente as desvantagens.'
TX_RESP_Q015 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - No geral, estou satisfeito com o meu trabalho de professor(a).'
TX_RESP_Q016 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - Tenho vontade de desistir da profiss�o.'
TX_RESP_Q017 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio not�cias por meio de jornais, revistas, internet etc.'
TX_RESP_Q018 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio livros n�o relacionados � Educa��o.'
TX_RESP_Q019 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Acesso blogs, Youtube, redes sociais (Twitter, Instagram, Facebook etc.).'
TX_RESP_Q020 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a filmes.'
TX_RESP_Q021 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Vou a exposi��es (museus, centros culturais).'
TX_RESP_Q022 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a espet�culos (teatro, shows, circo, etc).'
TX_RESP_Q023 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Estudo.'
TX_RESP_Q024 = 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a telejornal'
TX_RESP_Q025 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA(S) SALA(S) DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Tamanho da sala com rela��o ao n�mero de alunos.'
TX_RESP_Q026 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ac�stica.'
TX_RESP_Q027 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ilumina��o natural.'
TX_RESP_Q028 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ventila��o natural.'
TX_RESP_Q029 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Temperatura.'
TX_RESP_Q030 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Limpeza.'
TX_RESP_Q031 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Acessibilidade f�sica.'
TX_RESP_Q032 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Mobili�rio (mesas e carteiras).'
TX_RESP_Q033 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Infraestrutura (paredes, teto, assoalho, portas).'
TX_RESP_Q034 = 'TENDO COMO REFER�NCIA UMA SALA DE AULA QUE CONSIDERE IDEAL, AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Lousa (quadro de giz ou quadro branco).'
TX_RESP_Q035 = 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Livro did�tico'
TX_RESP_Q036 = 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Projetor multim�dia (datashow)'
TX_RESP_Q037 = 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Computador (de mesa, port�til, tablet)'
TX_RESP_Q038 = 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Software'
TX_RESP_Q039 = 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Internet'
TX_RESP_Q040 = 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Recursos pedag�gicos para o atendimento educacional especializado.'
TX_RESP_Q041 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Ensino do conte�do que leciono.'
TX_RESP_Q042 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Desenvolvimento da aprendizagem.'
TX_RESP_Q043 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Utiliza��o de elementos da cultura local na pr�tica pedag�gica.'
TX_RESP_Q044 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Gest�o democr�tica.'
TX_RESP_Q045 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Planejamento pedag�gico.'
TX_RESP_Q046 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Desenvolvimento de instrumentos de avalia��o em sala de aula.'
TX_RESP_Q047 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Recursos e pr�ticas pedag�gicas.'
TX_RESP_Q048 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Metodologia de ensino para o p�blico-alvo da educa��o especial.'
TX_RESP_Q049 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Utilizar conhecimentos sobre o desenvolvimento da aprendizagem.'
TX_RESP_Q050 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Uso de tecnologias de informa��o e comunica��o.'
TX_RESP_Q051 = 'PARA CADA UM DOS TEMAS RELACIONADOS ABAIXO, AVALIE O GRAU DE NECESSIDADE DE REALIZA��O DE ATIVIDADES/CURSOS VOLTADOS PARA O SEU DESENVOLVIMENTO PROFISSIONAL: - Gest�o de conflitos.'
TX_RESP_Q052 = 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Atividades formativas com menos de 20 horas'
TX_RESP_Q053 = 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Cursos de 20 at� 180 horas'
TX_RESP_Q054 = 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Cursos de aperfei�oamento de 180 a 360 horas'
TX_RESP_Q055 = 'CONSIDERANDO TODAS AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Participa��o de professor(es) da(s) escola(s) em que leciono?'
TX_RESP_Q056 = 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades colaborativas de aprendizado?'
TX_RESP_Q057 = 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades intercaladas com seu trabalho normal de sala de aula?'
TX_RESP_Q058 = 'DURANTE ESTE ANO, INDIQUE O(S) N�VEL(IS) DE CURSOS DE P�S-GRADUA��O QUE VOC� CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Especializa��o (m�nimo de 360 horas)'
TX_RESP_Q059 = 'DURANTE ESTE ANO, INDIQUE O(S) N�VEL(IS) DE CURSOS DE P�S-GRADUA��O QUE VOC� CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Mestrado (acad�mico ou profissional)'
TX_RESP_Q060 = 'DURANTE ESTE ANO, INDIQUE O(S) N�VEL(IS) DE CURSOS DE P�S-GRADUA��O QUE VOC� CURSOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Doutorado'
TX_RESP_Q061 = 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprofundar seus conhecimentos sobre as disciplinas que leciona.'
TX_RESP_Q062 = 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Compreender o processo de aprendizagem.'
TX_RESP_Q063 = 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar os processos avaliativos de sala de aula.'
TX_RESP_Q064 = 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Utilizar novas tecnologias para apoiar minhas atividades.'
TX_RESP_Q065 = 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Colaborar com meus colegas na prepara��o de atividades e projetos.'
TX_RESP_Q066 = 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar as metodologias de ensino.'
TX_RESP_Q067 = 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Auxiliar na media��o de conflitos em sala de aula.'
TX_RESP_Q068 = 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Escolha do material did�tico.'
TX_RESP_Q069 = 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Metodologia de ensino.'
TX_RESP_Q070 = 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS - Conte�dos trabalhados em sala.'
TX_RESP_Q071 = 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Instrumentos para avaliar os(as) alunos(as).'
TX_RESP_Q072 = 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Peso de cada instrumento de avalia��o na nota final do(a) aluno(a).'
TX_RESP_Q073 = 'NESTE ANO E PARA ESTA ESCOLA, QUAL DOS ATORES LISTADOS ABAIXO FOI O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES PEDAG�GICAS: - Sele��o de conte�dos usados nas provas.'
TX_RESP_Q074 = 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/s�rie. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q075 = 'SOBRE O PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Seu conte�do � discutido em reuni�es?'
TX_RESP_Q076 = 'SOBRE O PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Os(As) professores(as) participaram da sua elabora��o?'
TX_RESP_Q077 = 'SOBRE O PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Os pais participam da sua elabora��o?'
TX_RESP_Q078 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) debate com frequ�ncia metas educacionais com os(as) professores(as) nas reuni�es.'
TX_RESP_Q079 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) e os(as) professores(as) sempre tratam a qualidade de ensino como uma responsabilidade coletiva.'
TX_RESP_Q080 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) informa aos(�s) professores(as) sobre as possibilidades de aperfei�oamento profissional.'
TX_RESP_Q081 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) d� aten��o especial a aspectos relacionados � aprendizagem dos alunos.'
TX_RESP_Q082 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) d� aten��o especial a aspectos relacionados �s normas administrativas.'
TX_RESP_Q083 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) com frequ�ncia me anima e me motiva para o trabalho.'
TX_RESP_Q084 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - Tenho confian�a no(a) diretor(a) como profissional.'
TX_RESP_Q085 = 'NESTE ANO, EM RELA��O A ESTA ESCOLA, INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) e os(as) professores(as) sempre asseguram que as quest�es relacionadas � qualidade da conviv�ncia e gest�o de conflitos sejam uma responsabilidade coletiva.'
TX_RESP_Q086 = 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o das fam�lias para superar problemas que interferem na aprendizagem dos(as) alunos(as) (aus�ncias, indisciplinas, acompanhamento das tarefas escolares etc.)'
TX_RESP_Q087 = 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o entre professores (feedback, trocas, projetos interdisciplinares).'
TX_RESP_Q088 = 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o da gest�o da institui��o (equipe gestora, equipe pedag�gica) para superar dificuldades de sala de aula.'
TX_RESP_Q089 = 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Apoio da Secretaria de Educa��o para superar as dificuldades da escola.'
TX_RESP_Q090 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Respeitam os acordos estabelecidos em sala.'
TX_RESP_Q091 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Chegam pontualmente.'
TX_RESP_Q092 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Est�o sempre presentes �s minhas aulas.'
TX_RESP_Q093 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - S�o respeitosos(as) comigo.'
TX_RESP_Q094 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - S�o respeitosos(as) com os(as) colegas da turma.'
TX_RESP_Q095 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Interessam-se pela disciplina que leciono.'
TX_RESP_Q096 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Atentado � vida.'
TX_RESP_Q097 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Les�o corporal'
TX_RESP_Q098 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Roubo ou furto.'
TX_RESP_Q099 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Tr�fico de drogas.'
TX_RESP_Q100 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Perman�ncia de pessoas sob efeito de �lcool.'
TX_RESP_Q101 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Perman�ncia de pessoas sob efeito de drogas.'
TX_RESP_Q102 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Porte de arma (rev�lver, faca, canivete etc.).'
TX_RESP_Q103 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Ass�dio sexual.'
TX_RESP_Q104 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Discrimina��o.'
TX_RESP_Q105 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Bullying (amea�as ou ofensas verbais).'
TX_RESP_Q106 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Invas�o do espa�o escolar.'
TX_RESP_Q107 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Depreda��o do patrim�nio escolar (vandalismo).'
TX_RESP_Q108 = 'NESTA ESCOLA, NESTE ANO E COM RELA��O AOS EPIS�DIOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM: - Tiroteio ou bala perdida.'
TX_RESP_Q109 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - Repetir de ano � bom para o(a) aluno(a) que n�o apresentou desempenho satisfat�rio.'
TX_RESP_Q110 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - A quantidade de avalia��es externas (municipais, estaduais ou federais) � excessiva.'
TX_RESP_Q111 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - As avalia��es externas (municipais, estaduais ou federais) t�m direcionado o que deve ser ensinado na escola.'
TX_RESP_Q112 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - As avalia��es externas t�m ajudado a melhorar o processo de ensino e aprendizagem desta escola.'
TX_RESP_Q113 = 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS: - A maior parte dos estudantes apresentam problemas de aprendizagem.'
TX_RESP_Q114 = 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Propor dever de casa.'
TX_RESP_Q115 = 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Corrigir com os(as) alunos(as) o dever de casa.'
TX_RESP_Q116 = 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Desenvolver atividades em grupo para que os(as) alunos(as) busquem solu��es de problemas.'
TX_RESP_Q117 = 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Desenvolver projetos tem�ticos com o objetivo de aprimorar as habilidades de trabalho em equipe'
TX_RESP_Q118 = 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Solicitar que os(as) alunos(as) copiem textos e atividades do livro did�tico ou da lousa (quadro de giz ou quadro branco).'
TX_RESP_Q119 = 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Estimular os(as) alunos(as) a expressarem suas opini�es e a desenvolverem argumentos a partir de temas diversos.'
TX_RESP_Q120 = 'NESTE ANO E NESTA ESCOLA, INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS: - Propor situa��es de aprendizagem que sejam familiares ou de interesse dos(as) alunos(as).'
TX_RESP_Q121 = 'NESTE ANO, SOBRE O ATENDIMENTO DOS ESTUDANTES P�BLICO ALVO DA EDUCA��O ESPECIAL, NA(S) SUA(S) TURMA(S) DESTA ESCOLA, INDIQUE A SITUA��O QUE MAIS SE APROCIMA DE SUA REALIDADE:';
run;quit;
