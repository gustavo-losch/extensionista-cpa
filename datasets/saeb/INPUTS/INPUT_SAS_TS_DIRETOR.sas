/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_DIRETOR                                                  */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTION�RIO DO DIRETOR DO SAEB 2021         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_DIRETOR.CSV no diret�rio C:\ do computador.	                                   */
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
0='N�o p�blica'
1='P�blica';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value IN_PREENCHIMENTO_QUESTIONARIO
0='N�o preenchido'
1='Preenchido parcial ou totalmente';

value $QDum
A = 'SIM'
B = 'N�O';

value $QDois
A = 'SIM'
B = 'N�O';

value $QDtres
A = 'SIM'
B = 'N�O';

value $QDquatro
A = 'SIM'
B = 'N�O';

value $QDcinco
A = 'SIM'
B = 'N�O';

value $QDseis
A = 'P�blica.'
B = 'Privada.';

value $QDsete
A = 'Masculino.'
B = 'Feminino.';

value $QDnove
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Ind�gena'
F = 'N�o quero declarar';

value $QDdez
A = 'Sim'
B = 'N�o';

value $QDonze
1.0 = '1.0'
10.0 = '10.0'
11.0 = '11.0'
12.0 = '12.0'
13.0 = '13.0'
14.0 = '14.0'
15.0 = '15.0'
16.0 = '16.0'
17.0 = '17.0'
18.0 = '18.0'
19.0 = '19.0'
2.0 = '2.0'
20.0 = '20.0'
21.0 = '21.0'
22.0 = '22.0'
23.0 = '23.0'
24.0 = '24.0'
25.0 = '25.0'
26.0 = '26.0'
27.0 = '27.0'
28.0 = '28.0'
29.0 = '29.0'
3.0 = '3.0'
30.0 = '30.0'
4.0 = '4.0'
5.0 = '5.0'
6.0 = '6.0'
7.0 = '7.0'
8.0 = '8.0'
9.0 = '9.0'
B = 'Nunca trabalhei';

value $QDvintequatro
A = 'Sim'
B = 'N�o';

value $QDvintecinco
A = 'Sim'
B = 'N�o';

value $QDvinteseis
A = 'Sim'
B = 'N�o';

value $QDvintesete
A = 'Sim'
B = 'N�o';

value $QDvinteoito
A = 'Sim'
B = 'N�o';

value $QDvintenove
A = 'Sim'
B = 'N�o';

value $QDtrinta
A = 'Sim'
B = 'N�o';

value $QDtrintaum
A = 'Sim'
B = 'N�o';

value $QDtrintadois
A = 'Sim'
B = 'N�o';

value $QDtrintatres
A = 'Sim'
B = 'N�o';

value $QDtrintaquatro
A = 'Sim'
B = 'N�o';

value $QDtrintacinco
A = 'Sim'
B = 'N�o';

value $QDtrintaseis
A = 'Sim'
B = 'N�o';

value $QDtrintasete
A = 'Sim'
B = 'N�o';

value $QDtrintaoito
A = 'Sim'
B = 'N�o';

value $QDtrintanove
A = 'Sim'
B = 'N�o';

value $QDquarenta
A = 'Sim'
B = 'N�o';

value $QDquarentaum
A = 'Sim'
B = 'N�o';

value $QDquarentadois
A = 'A escola n�o oferece ensino fundamental ou m�dio'
B = 'Os (As) alunos (as) da educa��o infantil utilizam a �rea externa em hor�rio diferenciado.'
C = 'Os (As) alunos (as) da educa��o infantil utilizam a �rea externa';

value $QDquarentatres
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDquarentaquatro
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDquarentacinco
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDquarentaseis
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDquarentasete
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDquarentaoito
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDquarentanove
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquenta
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquentaum
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquentadois
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquentatres
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquentaquatro
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquentacinco
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquentaseis
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcinquentasete
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecess�ria';

value $QDcinquentaoito
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecess�ria';

value $QDcinquentanove
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecess�ria';

value $QDsessenta
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecess�ria';

value $QDsessentaum
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecess�ria';

value $QDsessentadois
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecess�ria';

value $QDsessentatres
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecess�ria';

value $QDsessentaquatro
A = 'Sim'
B = 'N�o';

value $QDsessentacinco
A = 'Sim'
B = 'N�o';

value $QDsessentaseis
A = 'Sim'
B = 'N�o';

value $QDsessentasete
A = 'Sim'
B = 'N�o';

value $QDsessentaoito
A = 'Sim'
B = 'N�o';

value $QDsessentanove
A = 'Sim'
B = 'N�o';

value $QDsetenta
A = 'Sim'
B = 'N�o';

value $QDsetentaum
A = 'Sim'
B = 'N�o';

value $QDsetentadois
A = 'Sim'
B = 'N�o';

value $QDsetentatres
A = 'Sim'
B = 'N�o';

value $QDsetentaquatro
A = 'Sim'
B = 'N�o';

value $QDsetentaseis
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDsetentasete
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDsetentaoito
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDsetentanove
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitenta
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentaum
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentadois
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentatres
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentaquatro
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentacinco
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentaseis
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentasete
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentaoito
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes';

value $QDoitentanove
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $QDnoventa
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $QDnoventaum
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $QDnoventadois
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $QDnoventatres
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $QDnoventaquatro
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $QDnoventacinco
1.0 = '1.0'
10.0 = '10.0'
11.0 = '11.0'
12.0 = '12.0'
2.0 = '2.0'
3.0 = '3.0'
4.0 = '4.0'
5.0 = '5.0'
6.0 = '6.0'
7.0 = '7.0'
8.0 = '8.0'
9.0 = '9.0'
B = 'N�o existe Conselho';

value $QDnoventaseis
1.0 = '1.0'
10.0 = '10.0'
11.0 = '11.0'
12.0 = '12.0'
2.0 = '2.0'
3.0 = '3.0'
4.0 = '4.0'
5.0 = '5.0'
6.0 = '6.0'
7.0 = '7.0'
8.0 = '8.0'
9.0 = '9.0'
B = 'N�o existe Conselho';

value $QDnoventasete
1.0 = '1.0'
10.0 = '10.0'
11.0 = '11.0'
12.0 = '12.0'
2.0 = '2.0'
3.0 = '3.0'
4.0 = '4.0'
5.0 = '5.0'
6.0 = '6.0'
7.0 = '7.0'
8.0 = '8.0'
9.0 = '9.0'
B = 'N�o existe APM (ou Caixa escolar).';

value $QDnoventaoito
A = 'Sim, existe e est� ativo.'
B = 'Sim, existe, mas est� inativo.'
C = 'N�o existe Gr�mio Estudantil.';

value $QDnoventanove
A = 'Sim'
B = 'N�o';

value $QDcem
A = 'Sim'
B = 'N�o';

value $QDcemum
A = 'os servi�os de sa�de';

value $QDcemdois
B = 'os servi�os de assist�ncia social';

value $QDcemtres
C = 'a seguran�a p�blica';

value $QDcemquatro
D = 'o conselho tutelar';

value $QDcemcinco
E = 'institui��es de apoio ao p�blico alvo da educa��o especial';

value $QDcemseis
F = 'organiza��es n�o governamentais/institui��es privadas';

value $QDcemsete
A = 'Sim'
B = 'N�o';

value $QDcemoito
A = 'Sim'
B = 'N�o';

value $QDcemnove
A = 'Sim'
B = 'N�o';

value $QDcemdez
A = 'Sim'
B = 'N�o';

value $QDcemonze
A = 'Sim'
B = 'N�o';

value $QDcemdoze
A = 'Sim'
B = 'N�o';

value $QDcemtreze
A = 'Sim'
B = 'N�o';

value $QDcemcatorze
A = 'Sim'
B = 'N�o';

value $QDcemquinze
A = 'Aquisi��o pela escola ou Secretaria de Educa��o.';

value $QDcemdezesseis
B = 'Campanhas de doa��o.';

value $QDcemdezessete
C = 'Solicita��o �s fam�lias.';

value $QDcemdezoito
A = 'Aquisi��o pela escola ou Secretaria de Educa��o.';

value $QDcemdezenove
B = 'Campanhas de doa��o.';

value $QDcemvinte
C = 'Solicita��o �s fam�lias.';

value $QDcemvinteum
A = 'Aquisi��o pela escola ou Secretaria de Educa��o.';

value $QDcemvintedois
B = 'Campanhas de doa��o.';

value $QDcemvintetres
C = 'Solicita��o �s fam�lias.';

value $QDcemvintequatro
A = 'Sim'
B = 'N�o';

value $QDcemvintecinco
A = 'Uma vez.'
B = 'Duas vezes.'
C = 'Tr�s vezes ou mais.'
D = 'N�o se aplica.';

value $QDcemvinteseis
A = 'Uma vez.'
B = 'Duas vezes.'
C = 'Tr�s vezes ou mais.'
D = 'N�o se aplica.';

value $QDcemvintesete
A = 'Uma vez.'
B = 'Duas vezes.'
C = 'Tr�s vezes ou mais.'
D = 'N�o se aplica.';

value $QDcemvinteoito
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcemvintenove
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcemtrinta
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcemtrintaum
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcemtrintadois
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcemtrintatres
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcemtrintaquatro
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QDcemtrintacinco
A = 'Sim'
B = 'N�o';

value $QDcemtrintaseis
A = 'Sim'
B = 'N�o';

value $QDcemtrintasete
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica.';

value $QDcemtrintaoito
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica.';

value $QDcemtrintanove
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica.';

value $QDcemquarenta
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica.';

value $QDcemquarentaum
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica.';

value $QDcemquarentadois
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica.';

value $QDcemquarentatres
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica.';

value $QDcemquarentaquatro
A = 'Sim'
B = 'N�o';

value $QDcemquarentacinco
A = 'Sorteio.';

value $QDcemquarentaseis
B = 'Local de moradia.';

value $QDcemquarentasete
C = 'Prova de conhecimentos.';

value $QDcemquarentaoito
D = 'Ordem de chegada.';

value $QDcemquarentanove
E = 'Caracter�sticas socioecon�micas.';

value $QDcemcinquenta
F = 'Desempenho do(a) estudante no ano anterior.';

value $QDcemcinquentaum
G = 'Crit�rios definidos pela Secretaria de Educa��o.';

value $QDcemcinquentadois
H = 'Outros.';

value $QDcemcinquentaquatro
A = 'Afinidade entre os(as) estudantes.';

value $QDcemcinquentacinco
B = 'Idade.';

value $QDcemcinquentaseis
C = 'Equil�brio de meninos e meninas.';

value $QDcemcinquentasete
D = 'Manter as turmas existentes do ano anterior.';

value $QDcemcinquentaoito
E = 'Crit�rios disciplinares.';

value $QDcemcinquentanove
F = 'Desempenho escolar.';

value $QDcemsessenta
G = 'Outros.';

value $QDcemsessentadois
A = 'Sim'
B = 'N�o';

value $QDcemsessentatres
A = 'Sim'
B = 'N�o';

value $QDcemsessentaquatro
A = 'Sim'
B = 'N�o';

value $QDcemsessentacinco
A = 'Sim'
B = 'N�o';

value $QDcemsessentaseis
A = 'Sim'
B = 'N�o';

value $QDcemsessentasete
A = 'Sim'
B = 'N�o';

value $QDcemsessentaoito
A = 'Sim'
B = 'N�o';

value $QDcemsessentanove
A = 'Sim'
B = 'N�o';

value $QDcemsetenta
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaum
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentadois
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentatres
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaquatro
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentacinco
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaseis
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentasete
A = 'N�o foi realizada esta a��o.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaoito
A = 'Viol�ncia.';

value $QDcemsetentanove
B = 'Bullying.';

value $QDcemoitenta
C = 'Machismo.';

value $QDcemoitentaum
D = 'Homofobia.';

value $QDcemoitentadois
E = 'Sexualidade.';

value $QDcemoitentatres
F = 'Uso de drogas.';

value $QDcemoitentaquatro
G = 'Direitos dos idosos.';

value $QDcemoitentacinco
H = 'Educa��o ambiental.';

value $QDcemoitentaseis
I = 'Ci�ncia e tecnologia.';

value $QDcemoitentasete
J = 'Diversidade religiosa.';

value $QDcemoitentaoito
K = 'Desigualdades sociais.';

value $QDcemoitentanove
L = 'Nutri��o e alimenta��o.';

value $QDcemnoventa
M = 'Educa��o para o tr�nsito.';

value $QDcemnoventaum
N = 'Rela��es �tnico-raciais/racismo.';

value $QDcemnoventadois
O = 'Direitos das pessoas com defici�ncia.';

value $QDcemnoventatres
P = 'Direitos da crian�a e do adolescente.';

value $QDcemnoventaquatro
Q = 'Mundo do trabalho (direitos, rela��es etc.).';

value $QDcemnoventacinco
R = 'Educa��o financeira e consumo sustent�vel.';

value $QDcemnoventaseis
A = 'Sim'
B = 'N�o';

value $QDcemnoventasete
A = 'Sim'
B = 'N�o';

value $QDcemnoventaoito
A = 'Sim'
B = 'N�o';

value $QDcemnoventanove
A = 'Sim'
B = 'N�o';

value $QDduzentos
A = 'Sim'
B = 'N�o';

value $QDduzentosum
A = 'Sim'
B = 'N�o';

value $QDduzentosdois
A = 'Sim'
B = 'N�o';

value $QDduzentostres
A = 'Sim'
B = 'N�o';

value $QDduzentosquatro
A = 'Sim'
B = 'N�o';

value $QDduzentoscinco
A = 'Sim'
B = 'N�o';

value $QDduzentosseis
A = 'Sim'
B = 'N�o';

value $QDduzentossete
A = 'Sim'
B = 'N�o';

value $QDduzentosoito
A = 'Sim'
B = 'N�o';

value $QDduzentosnove
A = 'Sim'
B = 'N�o';
 
run;

DATA WORK.TS_DIRETOR;

 INFILE 'C:/TS_DIRETOR.csv' /*Endere�o do arquivo*/
        LRECL=4096
		firstobs=2
        DLM="|"
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
IN_PREENCHIMENTO_QUESTIONARIO : 1.
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : $CHAR1.
TX_RESP_Q003 : $CHAR1.
TX_RESP_Q004 : $CHAR1.
TX_RESP_Q005 : $CHAR1.
TX_RESP_Q006 : $CHAR1.
TX_RESP_Q007 : $CHAR1.
TX_RESP_Q008 : BEST4.
TX_RESP_Q009 : $CHAR1.
TX_RESP_Q010 : $CHAR1.
TX_RESP_Q011 : $CHAR4.
TX_RESP_Q012 : BEST4.
TX_RESP_Q013 : BEST4.
TX_RESP_Q014 : BEST4.
TX_RESP_Q015 : BEST4.
TX_RESP_Q016 : BEST4.
TX_RESP_Q017 : BEST4.
TX_RESP_Q018 : BEST4.
TX_RESP_Q019 : BEST4.
TX_RESP_Q020 : BEST4.
TX_RESP_Q021 : BEST4.
TX_RESP_Q022 : BEST4.
TX_RESP_Q023 : BEST4.
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
TX_RESP_Q075 : BEST4.
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
TX_RESP_Q095 : $CHAR4.
TX_RESP_Q096 : $CHAR4.
TX_RESP_Q097 : $CHAR4.
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
TX_RESP_Q122 : $CHAR1.
TX_RESP_Q123 : $CHAR1.
TX_RESP_Q124 : $CHAR1.
TX_RESP_Q125 : $CHAR1.
TX_RESP_Q126 : $CHAR1.
TX_RESP_Q127 : $CHAR1.
TX_RESP_Q128 : $CHAR1.
TX_RESP_Q129 : $CHAR1.
TX_RESP_Q130 : $CHAR1.
TX_RESP_Q131 : $CHAR1.
TX_RESP_Q132 : $CHAR1.
TX_RESP_Q133 : $CHAR1.
TX_RESP_Q134 : $CHAR1.
TX_RESP_Q135 : $CHAR1.
TX_RESP_Q136 : $CHAR1.
TX_RESP_Q137 : $CHAR1.
TX_RESP_Q138 : $CHAR1.
TX_RESP_Q139 : $CHAR1.
TX_RESP_Q140 : $CHAR1.
TX_RESP_Q141 : $CHAR1.
TX_RESP_Q142 : $CHAR1.
TX_RESP_Q143 : $CHAR1.
TX_RESP_Q144 : $CHAR1.
TX_RESP_Q145 : $CHAR1.
TX_RESP_Q146 : $CHAR1.
TX_RESP_Q147 : $CHAR1.
TX_RESP_Q148 : $CHAR1.
TX_RESP_Q149 : $CHAR1.
TX_RESP_Q150 : $CHAR1.
TX_RESP_Q151 : $CHAR1.
TX_RESP_Q152 : $CHAR1.
TX_RESP_Q153 : $CHAR713.
TX_RESP_Q154 : $CHAR1.
TX_RESP_Q155 : $CHAR1.
TX_RESP_Q156 : $CHAR1.
TX_RESP_Q157 : $CHAR1.
TX_RESP_Q158 : $CHAR1.
TX_RESP_Q159 : $CHAR1.
TX_RESP_Q160 : $CHAR1.
TX_RESP_Q161 : $CHAR653.
TX_RESP_Q162 : $CHAR1.
TX_RESP_Q163 : $CHAR1.
TX_RESP_Q164 : $CHAR1.
TX_RESP_Q165 : $CHAR1.
TX_RESP_Q166 : $CHAR1.
TX_RESP_Q167 : $CHAR1.
TX_RESP_Q168 : $CHAR1.
TX_RESP_Q169 : $CHAR1.
TX_RESP_Q170 : $CHAR1.
TX_RESP_Q171 : $CHAR1.
TX_RESP_Q172 : $CHAR1.
TX_RESP_Q173 : $CHAR1.
TX_RESP_Q174 : $CHAR1.
TX_RESP_Q175 : $CHAR1.
TX_RESP_Q176 : $CHAR1.
TX_RESP_Q177 : $CHAR1.
TX_RESP_Q178 : $CHAR1.
TX_RESP_Q179 : $CHAR1.
TX_RESP_Q180 : $CHAR1.
TX_RESP_Q181 : $CHAR1.
TX_RESP_Q182 : $CHAR1.
TX_RESP_Q183 : $CHAR1.
TX_RESP_Q184 : $CHAR1.
TX_RESP_Q185 : $CHAR1.
TX_RESP_Q186 : $CHAR1.
TX_RESP_Q187 : $CHAR1.
TX_RESP_Q188 : $CHAR1.
TX_RESP_Q189 : $CHAR1.
TX_RESP_Q190 : $CHAR1.
TX_RESP_Q191 : $CHAR1.
TX_RESP_Q192 : $CHAR1.
TX_RESP_Q193 : $CHAR1.
TX_RESP_Q194 : $CHAR1.
TX_RESP_Q195 : $CHAR1.
TX_RESP_Q196 : $CHAR1.
TX_RESP_Q197 : $CHAR1.
TX_RESP_Q198 : $CHAR1.
TX_RESP_Q199 : $CHAR1.
TX_RESP_Q200 : $CHAR1.
TX_RESP_Q201 : $CHAR1.
TX_RESP_Q202 : $CHAR1.
TX_RESP_Q203 : $CHAR1.
TX_RESP_Q204 : $CHAR1.
TX_RESP_Q205 : $CHAR1.
TX_RESP_Q206 : $CHAR1.
TX_RESP_Q207 : $CHAR1.
TX_RESP_Q208 : $CHAR1.
TX_RESP_Q209 : $CHAR1.
TX_RESP_Q210 : $CHAR1024.
;  

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO32.;
ATTRIB TX_RESP_Q001 FORMAT=$QDum.;
ATTRIB TX_RESP_Q002 FORMAT=$QDois.;
ATTRIB TX_RESP_Q003 FORMAT=$QDtres.;
ATTRIB TX_RESP_Q004 FORMAT=$QDquatro.;
ATTRIB TX_RESP_Q005 FORMAT=$QDcinco.;
ATTRIB TX_RESP_Q006 FORMAT=$QDseis.;
ATTRIB TX_RESP_Q007 FORMAT=$QDsete.;
ATTRIB TX_RESP_Q009 FORMAT=$QDnove.;
ATTRIB TX_RESP_Q010 FORMAT=$QDdez.;
ATTRIB TX_RESP_Q011 FORMAT=$QDonze.;
ATTRIB TX_RESP_Q024 FORMAT=$QDvintequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$QDvintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QDvinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QDvintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QDvinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QDvintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QDtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QDtrintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$QDtrintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$QDtrintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$QDtrintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QDtrintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QDtrintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QDtrintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$QDtrintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QDtrintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$QDquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QDquarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$QDquarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$QDquarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$QDquarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QDquarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QDquarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QDquarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$QDquarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QDquarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$QDcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QDcinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$QDcinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$QDcinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$QDcinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QDcinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QDcinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QDcinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$QDcinquentaoito.;
ATTRIB TX_RESP_Q059 FORMAT=$QDcinquentanove.;
ATTRIB TX_RESP_Q060 FORMAT=$QDsessenta.;
ATTRIB TX_RESP_Q061 FORMAT=$QDsessentaum.;
ATTRIB TX_RESP_Q062 FORMAT=$QDsessentadois.;
ATTRIB TX_RESP_Q063 FORMAT=$QDsessentatres.;
ATTRIB TX_RESP_Q064 FORMAT=$QDsessentaquatro.;
ATTRIB TX_RESP_Q065 FORMAT=$QDsessentacinco.;
ATTRIB TX_RESP_Q066 FORMAT=$QDsessentaseis.;
ATTRIB TX_RESP_Q067 FORMAT=$QDsessentasete.;
ATTRIB TX_RESP_Q068 FORMAT=$QDsessentaoito.;
ATTRIB TX_RESP_Q069 FORMAT=$QDsessentanove.;
ATTRIB TX_RESP_Q070 FORMAT=$QDsetenta.;
ATTRIB TX_RESP_Q071 FORMAT=$QDsetentaum.;
ATTRIB TX_RESP_Q072 FORMAT=$QDsetentadois.;
ATTRIB TX_RESP_Q073 FORMAT=$QDsetentatres.;
ATTRIB TX_RESP_Q074 FORMAT=$QDsetentaquatro.;
ATTRIB TX_RESP_Q076 FORMAT=$QDsetentaseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QDsetentasete.;
ATTRIB TX_RESP_Q078 FORMAT=$QDsetentaoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QDsetentanove.;
ATTRIB TX_RESP_Q080 FORMAT=$QDoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QDoitentaum.;
ATTRIB TX_RESP_Q082 FORMAT=$QDoitentadois.;
ATTRIB TX_RESP_Q083 FORMAT=$QDoitentatres.;
ATTRIB TX_RESP_Q084 FORMAT=$QDoitentaquatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QDoitentacinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QDoitentaseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QDoitentasete.;
ATTRIB TX_RESP_Q088 FORMAT=$QDoitentaoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QDoitentanove.;
ATTRIB TX_RESP_Q090 FORMAT=$QDnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QDnoventaum.;
ATTRIB TX_RESP_Q092 FORMAT=$QDnoventadois.;
ATTRIB TX_RESP_Q093 FORMAT=$QDnoventatres.;
ATTRIB TX_RESP_Q094 FORMAT=$QDnoventaquatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QDnoventacinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QDnoventaseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QDnoventasete.;
ATTRIB TX_RESP_Q098 FORMAT=$QDnoventaoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QDnoventanove.;
ATTRIB TX_RESP_Q100 FORMAT=$QDcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QDcemum.;
ATTRIB TX_RESP_Q102 FORMAT=$QDcemdois.;
ATTRIB TX_RESP_Q103 FORMAT=$QDcemtres.;
ATTRIB TX_RESP_Q104 FORMAT=$QDcemquatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QDcemcinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QDcemseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QDcemsete.;
ATTRIB TX_RESP_Q108 FORMAT=$QDcemoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QDcemnove.;
ATTRIB TX_RESP_Q110 FORMAT=$QDcemdez.;
ATTRIB TX_RESP_Q111 FORMAT=$QDcemonze.;
ATTRIB TX_RESP_Q112 FORMAT=$QDcemdoze.;
ATTRIB TX_RESP_Q113 FORMAT=$QDcemtreze.;
ATTRIB TX_RESP_Q114 FORMAT=$QDcemcatorze.;
ATTRIB TX_RESP_Q115 FORMAT=$QDcemquinze.;
ATTRIB TX_RESP_Q116 FORMAT=$QDcemdezesseis.;
ATTRIB TX_RESP_Q117 FORMAT=$QDcemdezessete.;
ATTRIB TX_RESP_Q118 FORMAT=$QDcemdezoito.;
ATTRIB TX_RESP_Q119 FORMAT=$QDcemdezenove.;
ATTRIB TX_RESP_Q120 FORMAT=$QDcemvinte.;
ATTRIB TX_RESP_Q121 FORMAT=$QDcemvinteum.;
ATTRIB TX_RESP_Q122 FORMAT=$QDcemvintedois.;
ATTRIB TX_RESP_Q123 FORMAT=$QDcemvintetres.;
ATTRIB TX_RESP_Q124 FORMAT=$QDcemvintequatro.;
ATTRIB TX_RESP_Q125 FORMAT=$QDcemvintecinco.;
ATTRIB TX_RESP_Q126 FORMAT=$QDcemvinteseis.;
ATTRIB TX_RESP_Q127 FORMAT=$QDcemvintesete.;
ATTRIB TX_RESP_Q128 FORMAT=$QDcemvinteoito.;
ATTRIB TX_RESP_Q129 FORMAT=$QDcemvintenove.;
ATTRIB TX_RESP_Q130 FORMAT=$QDcemtrinta.;
ATTRIB TX_RESP_Q131 FORMAT=$QDcemtrintaum.;
ATTRIB TX_RESP_Q132 FORMAT=$QDcemtrintadois.;
ATTRIB TX_RESP_Q133 FORMAT=$QDcemtrintatres.;
ATTRIB TX_RESP_Q134 FORMAT=$QDcemtrintaquatro.;
ATTRIB TX_RESP_Q135 FORMAT=$QDcemtrintacinco.;
ATTRIB TX_RESP_Q136 FORMAT=$QDcemtrintaseis.;
ATTRIB TX_RESP_Q137 FORMAT=$QDcemtrintasete.;
ATTRIB TX_RESP_Q138 FORMAT=$QDcemtrintaoito.;
ATTRIB TX_RESP_Q139 FORMAT=$QDcemtrintanove.;
ATTRIB TX_RESP_Q140 FORMAT=$QDcemquarenta.;
ATTRIB TX_RESP_Q141 FORMAT=$QDcemquarentaum.;
ATTRIB TX_RESP_Q142 FORMAT=$QDcemquarentadois.;
ATTRIB TX_RESP_Q143 FORMAT=$QDcemquarentatres.;
ATTRIB TX_RESP_Q144 FORMAT=$QDcemquarentaquatro.;
ATTRIB TX_RESP_Q145 FORMAT=$QDcemquarentacinco.;
ATTRIB TX_RESP_Q146 FORMAT=$QDcemquarentaseis.;
ATTRIB TX_RESP_Q147 FORMAT=$QDcemquarentasete.;
ATTRIB TX_RESP_Q148 FORMAT=$QDcemquarentaoito.;
ATTRIB TX_RESP_Q149 FORMAT=$QDcemquarentanove.;
ATTRIB TX_RESP_Q150 FORMAT=$QDcemcinquenta.;
ATTRIB TX_RESP_Q151 FORMAT=$QDcemcinquentaum.;
ATTRIB TX_RESP_Q152 FORMAT=$QDcemcinquentadois.;
ATTRIB TX_RESP_Q154 FORMAT=$QDcemcinquentaquatro.;
ATTRIB TX_RESP_Q155 FORMAT=$QDcemcinquentacinco.;
ATTRIB TX_RESP_Q156 FORMAT=$QDcemcinquentaseis.;
ATTRIB TX_RESP_Q157 FORMAT=$QDcemcinquentasete.;
ATTRIB TX_RESP_Q158 FORMAT=$QDcemcinquentaoito.;
ATTRIB TX_RESP_Q159 FORMAT=$QDcemcinquentanove.;
ATTRIB TX_RESP_Q160 FORMAT=$QDcemsessenta.;
ATTRIB TX_RESP_Q162 FORMAT=$QDcemsessentadois.;
ATTRIB TX_RESP_Q163 FORMAT=$QDcemsessentatres.;
ATTRIB TX_RESP_Q164 FORMAT=$QDcemsessentaquatro.;
ATTRIB TX_RESP_Q165 FORMAT=$QDcemsessentacinco.;
ATTRIB TX_RESP_Q166 FORMAT=$QDcemsessentaseis.;
ATTRIB TX_RESP_Q167 FORMAT=$QDcemsessentasete.;
ATTRIB TX_RESP_Q168 FORMAT=$QDcemsessentaoito.;
ATTRIB TX_RESP_Q169 FORMAT=$QDcemsessentanove.;
ATTRIB TX_RESP_Q170 FORMAT=$QDcemsetenta.;
ATTRIB TX_RESP_Q171 FORMAT=$QDcemsetentaum.;
ATTRIB TX_RESP_Q172 FORMAT=$QDcemsetentadois.;
ATTRIB TX_RESP_Q173 FORMAT=$QDcemsetentatres.;
ATTRIB TX_RESP_Q174 FORMAT=$QDcemsetentaquatro.;
ATTRIB TX_RESP_Q175 FORMAT=$QDcemsetentacinco.;
ATTRIB TX_RESP_Q176 FORMAT=$QDcemsetentaseis.;
ATTRIB TX_RESP_Q177 FORMAT=$QDcemsetentasete.;
ATTRIB TX_RESP_Q178 FORMAT=$QDcemsetentaoito.;
ATTRIB TX_RESP_Q179 FORMAT=$QDcemsetentanove.;
ATTRIB TX_RESP_Q180 FORMAT=$QDcemoitenta.;
ATTRIB TX_RESP_Q181 FORMAT=$QDcemoitentaum.;
ATTRIB TX_RESP_Q182 FORMAT=$QDcemoitentadois.;
ATTRIB TX_RESP_Q183 FORMAT=$QDcemoitentatres.;
ATTRIB TX_RESP_Q184 FORMAT=$QDcemoitentaquatro.;
ATTRIB TX_RESP_Q185 FORMAT=$QDcemoitentacinco.;
ATTRIB TX_RESP_Q186 FORMAT=$QDcemoitentaseis.;
ATTRIB TX_RESP_Q187 FORMAT=$QDcemoitentasete.;
ATTRIB TX_RESP_Q188 FORMAT=$QDcemoitentaoito.;
ATTRIB TX_RESP_Q189 FORMAT=$QDcemoitentanove.;
ATTRIB TX_RESP_Q190 FORMAT=$QDcemnoventa.;
ATTRIB TX_RESP_Q191 FORMAT=$QDcemnoventaum.;
ATTRIB TX_RESP_Q192 FORMAT=$QDcemnoventadois.;
ATTRIB TX_RESP_Q193 FORMAT=$QDcemnoventatres.;
ATTRIB TX_RESP_Q194 FORMAT=$QDcemnoventaquatro.;
ATTRIB TX_RESP_Q195 FORMAT=$QDcemnoventacinco.;
ATTRIB TX_RESP_Q196 FORMAT=$QDcemnoventaseis.;
ATTRIB TX_RESP_Q197 FORMAT=$QDcemnoventasete.;
ATTRIB TX_RESP_Q198 FORMAT=$QDcemnoventaoito.;
ATTRIB TX_RESP_Q199 FORMAT=$QDcemnoventanove.;
ATTRIB TX_RESP_Q200 FORMAT=$QDduzentos.;
ATTRIB TX_RESP_Q201 FORMAT=$QDduzentosum.;
ATTRIB TX_RESP_Q202 FORMAT=$QDduzentosdois.;
ATTRIB TX_RESP_Q203 FORMAT=$QDduzentostres.;
ATTRIB TX_RESP_Q204 FORMAT=$QDduzentosquatro.;
ATTRIB TX_RESP_Q205 FORMAT=$QDduzentoscinco.;
ATTRIB TX_RESP_Q206 FORMAT=$QDduzentosseis.;
ATTRIB TX_RESP_Q207 FORMAT=$QDduzentossete.;
ATTRIB TX_RESP_Q208 FORMAT=$QDduzentosoito.;
ATTRIB TX_RESP_Q209 FORMAT=$QDduzentosnove.;

LABEL

ID_SAEB = 'Ano de aplica��o do Saeb'                                                                                                    
ID_REGIAO = 'C�digo da Regi�o'                                                                                                                         
ID_UF = 'C�digo da Unidade da Federa��o'                                                                                                               
ID_MUNICIPIO = 'C�digo do Munic�pio'                                                                                                                   
ID_AREA = '�rea'
ID_ESCOLA= 'C�digo da Escola'
IN_PUBLICA= 'Indica se a escola � p�blica ou n�o'
ID_LOCALIZACAO= 'Localiza��o'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do question�rio'
ID_SAEB = 'Ano de aplica��o do Saeb'
ID_REGIAO = 'C�digo da Regi�o'
ID_UF = 'C�digo da Unidade da Federa��o'
ID_MUNICIPIO = 'C�digo do Munic�pio'
ID_AREA = '�rea'
ID_ESCOLA = 'C�digo da Escola'
IN_PUBLICA = 'Indica se a escola � p�blica ou n�o'
ID_LOCALIZACAO = 'Localiza��o'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do question�rio'
TX_RESP_Q001 = 'Educa��o Infantil  -  Creche  (0 a 3 anos).'
TX_RESP_Q002 = 'Educa��o Infantil  -  Pr�-escola  (4 e 5 anos) .'
TX_RESP_Q003 = 'Anos Iniciais do Ensino Fundamental.'
TX_RESP_Q004 = 'Anos Finais do Ensino Fundamental.'
TX_RESP_Q005 = 'Ensino M�dio.'
TX_RESP_Q006 = 'Sua escola �:'
TX_RESP_Q007 = 'Qual � o seu sexo?'
TX_RESP_Q008 = 'Qual � a sua idade?'
TX_RESP_Q009 = 'Qual � a sua cor ou ra�a?'
TX_RESP_Q010 = 'Voc� possui necessidade especial, defici�ncia , transtorno do espectro autista ou superdota��o?'
TX_RESP_Q011 = 'Quanto anos voc� trabalhou como professor(a) antes de se tornar diretor(a)?'
TX_RESP_Q012 = 'H� quantos anos voc� � diretor(a) desta escola?'
TX_RESP_Q013 = 'Em uma semana normal de trabalho, quantas HORAS, no total, voc� gasta com TODAS as atividades de dire��o da escola?'
TX_RESP_Q014 = 'Mobilizar a comunidade para auxiliar a escola.'
TX_RESP_Q015 = 'Coordenar a gest�o curricular, dos m�todos de aprendizagem e da avalia��o.'
TX_RESP_Q016 = 'Conduzir o planejamento pedag�gico.'
TX_RESP_Q017 = 'Coordenar as atividades administrativas (merenda, seguran�a, manuten��o predial, etc.).'
TX_RESP_Q018 = 'Liderar as equipes de trabalho (reunir com professores, delegar tarefas para outros profissionais, etc.).'
TX_RESP_Q019 = 'Gerenciar os recursos financeiros (presta��o de contas, etc).'
TX_RESP_Q020 = 'Atender aos pais ou respons�veis.'
TX_RESP_Q021 = 'Atender individualmente aos(�s) professores(as).'
TX_RESP_Q022 = 'Atender aos(�s) alunos(as).'
TX_RESP_Q023 = 'Outras atividades.'
TX_RESP_Q024 = 'Antes desta escola, voc� trabalhou como diretor em outra escola?'
TX_RESP_Q025 = 'Voc� possui outra atividade remunerada?'
TX_RESP_Q026 = 'Bebedouro ao alcance das crian�as.'
TX_RESP_Q027 = 'Chuveiro para as crian�as'
TX_RESP_Q028 = '�rea sombreada.'
TX_RESP_Q029 = '�rea externa coberta.'
TX_RESP_Q030 = 'Vegeta��o e jardim.'
TX_RESP_Q031 = 'Horta.'
TX_RESP_Q032 = 'Tanque de areia.'
TX_RESP_Q033 = 'Gira-gira.'
TX_RESP_Q034 = 'Gangorra.'
TX_RESP_Q035 = 'Escorregador.'
TX_RESP_Q036 = 'Casinha.'
TX_RESP_Q037 = 'Balan�o.'
TX_RESP_Q038 = 'Brinquedo para escalar.'
TX_RESP_Q039 = 'Espa�o destinado � amamenta��o.'
TX_RESP_Q040 = 'Condi��es para armazenamento de leite materno.'
TX_RESP_Q041 = 'Banheiro infantil.'
TX_RESP_Q042 = 'Caso sua escola ofere�a Ensino Fundamental e/ou M�dio, a �rea externa (p�tio, �rea verde e parque) � utilizada em hor�rios diferenciados pelos(as) alunos(as) da Educa��o Infantil?'
TX_RESP_Q043 = 'Os recursos financeiros foram suficientes.'
TX_RESP_Q044 = 'O quadro de professores estava completo.'
TX_RESP_Q045 = 'Havia quantidade suficiente de pessoal administrativo.'
TX_RESP_Q046 = 'Havia quantidade suficiente de pessoal para apoio pedag�gico (coordenador, orientador etc.).'
TX_RESP_Q047 = 'Os recursos pedag�gicos foram suficientes.'
TX_RESP_Q048 = 'Recebi apoio da Secretaria de Educa��o.'
TX_RESP_Q049 = 'Os(As) professores(as) foram ass�duos(as).'
TX_RESP_Q050 = 'As substitui��es das aus�ncias de professores(as) foram facilmente realizadas.'
TX_RESP_Q051 = 'Os(As) alunos(as) foram ass�duos(as).'
TX_RESP_Q052 = 'A comunidade apoiou a gest�o da escola.'
TX_RESP_Q053 = 'A comunidade executou trabalhos volunt�rios na escola.'
TX_RESP_Q054 = 'As fam�lias contribu�ram com o trabalho pedag�gico.'
TX_RESP_Q055 = 'Os alunos com defici�ncia, transtornos espectro autista ou com altas habilidades/superdota��o receberam atendimento educacional especializado (AEE)'
TX_RESP_Q056 = 'No in�cio do ano letivo, todos(as) os(as) alunos(as) receberam os livros did�ticos.'
TX_RESP_Q057 = 'Professor(a) de Braille.'
TX_RESP_Q058 = 'Professor(a) bil�ngue para surdos.'
TX_RESP_Q059 = 'Professor ou Instrutor de Libras'
TX_RESP_Q060 = 'Guia-interprete'
TX_RESP_Q061 = 'Professor(a) da sala de recursos multifuncionais.'
TX_RESP_Q062 = 'Professor(a) itinerante.'
TX_RESP_Q063 = 'Monitor(a) de apoio � educa��o especial.'
TX_RESP_Q064 = 'Falta de �gua.'
TX_RESP_Q065 = 'Falta de energia.'
TX_RESP_Q066 = 'Falta de merenda.'
TX_RESP_Q067 = 'Greve de professores.'
TX_RESP_Q068 = 'Epis�dios de viol�ncia.'
TX_RESP_Q069 = 'Problemas de infraestrutura predial.'
TX_RESP_Q070 = 'Paralisa��o do transporte.'
TX_RESP_Q071 = 'Eventos clim�ticos (inunda��o, desmoronamento etc.).'
TX_RESP_Q072 = 'Eventos comemorativos.'
TX_RESP_Q073 = 'Problemas de sa�de p�blica.'
TX_RESP_Q074 = 'Outros.'
TX_RESP_Q075 = 'Por quantos dias letivos, no total, ocorreu a interrup��o:'
TX_RESP_Q076 = 'Atentado � vida.'
TX_RESP_Q077 = 'Les�o corporal'
TX_RESP_Q078 = 'Roubo ou furto.'
TX_RESP_Q079 = 'Tr�fico de drogas.'
TX_RESP_Q080 = 'Perman�ncia de pessoas sob efeito de �lcool.'
TX_RESP_Q081 = 'Perman�ncia de pessoas sob efeito de drogas.'
TX_RESP_Q082 = 'Porte de arma (rev�lver, faca, canivete etc.).'
TX_RESP_Q083 = 'Ass�dio sexual'
TX_RESP_Q084 = 'Discrimina��o'
TX_RESP_Q085 = 'Bullying (amea�as ou ofensas verbais)'
TX_RESP_Q086 = 'Invas�o do espa�o escolar'
TX_RESP_Q087 = 'Depreda��o do patrim�nio escolar (vandalismo)'
TX_RESP_Q088 = 'Tiroteio ou bala perdida'
TX_RESP_Q089 = 'Condi��es de seguran�a na entrada e sa�da da escola.'
TX_RESP_Q090 = 'Muros e/ou grades que isolam a escola do ambiente externo.'
TX_RESP_Q091 = 'Identifica��o externa que caracterize o pr�dio como uma institui��o escolar.'
TX_RESP_Q092 = 'O acesso � entrada principal adequado �s pessoas com defici�ncia f�sica e visual (ex.: rampas e marcadores no ch�o).'
TX_RESP_Q093 = 'Condi��es de uso dos equipamentos da �rea externa de recrea��o (parque infantil, p�tio, quadra poliesportiva etc.).'
TX_RESP_Q094 = 'O acesso dos(as) alunos(as) p�blico-alvo da educa��o especial � �rea externa de recrea��o (parque infantil, p�tio, quadra poliesportiva etc.).'
TX_RESP_Q095 = 'O Conselho Escolar � um colegiado geralmente constitu�do por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Na sua escola, quantas vezes se reuniu o Conselho Escolar?'
TX_RESP_Q096 = 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q097 = 'A APM   -   Associa��o de Pais e Mestres existe para apoiar as a��es da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?'
TX_RESP_Q098 = 'H� Gr�mio Estudantil?'
TX_RESP_Q099 = 'A escola segue orienta��o militar.'
TX_RESP_Q100 = 'A escola segue orienta��o religiosa.'
TX_RESP_Q101 = 'Marque todas as que se aplicarem.'
TX_RESP_Q102 = 'Marque todas as que se aplicarem.'
TX_RESP_Q103 = 'Marque todas as que se aplicarem.'
TX_RESP_Q104 = 'Marque todas as que se aplicarem.'
TX_RESP_Q105 = 'Marque todas as que se aplicarem.'
TX_RESP_Q106 = 'Marque todas as que se aplicarem.'
TX_RESP_Q107 = 'Recursos federais (Programa Dinheiro Direto na Escola etc.).'
TX_RESP_Q108 = 'Recursos estaduais ou municipais.'
TX_RESP_Q109 = 'Eventos da escola (festa, rifa etc.).'
TX_RESP_Q110 = 'Empresas que apoiam a escola.'
TX_RESP_Q111 = 'Organiza��es sem fins lucrativos.'
TX_RESP_Q112 = 'Pagamento de taxas pelos familiares dos(as) estudantes.'
TX_RESP_Q113 = 'Contribui��es volunt�rias dos familiares dos(as) estudantes.'
TX_RESP_Q114 = 'Contribui��es volunt�rias dos(as) profissionais da escola.'
TX_RESP_Q115 = 'Brinquedos'
TX_RESP_Q116 = 'Brinquedos'
TX_RESP_Q117 = 'Brinquedos'
TX_RESP_Q118 = 'Recursos pedag�gicos'
TX_RESP_Q119 = 'Recursos pedag�gicos'
TX_RESP_Q120 = 'Recursos pedag�gicos'
TX_RESP_Q121 = 'Materiais de higiene pessoal'
TX_RESP_Q122 = 'Materiais de higiene pessoal'
TX_RESP_Q123 = 'Materiais de higiene pessoal'
TX_RESP_Q124 = 'A escola oferece merenda aos(�s) estudantes?'
TX_RESP_Q125 = 'Para alunos(as) que permanecem menos de 4 horas na escola:'
TX_RESP_Q126 = 'Para alunos(as) que permanecem entre 4 e 7 horas na escola:'
TX_RESP_Q127 = 'Para alunos(as) que permanecem mais de 7 horas na escola:'
TX_RESP_Q128 = 'A quantidade de alimentos � suficiente para todos(as).'
TX_RESP_Q129 = 'Os alimentos s�o de boa qualidade.'
TX_RESP_Q130 = 'H�  dietas especificas para alunos com restri��es alimentares.'
TX_RESP_Q131 = 'A cozinha atende as necessidades do preparo da merenda.'
TX_RESP_Q132 = 'O local de alimenta��o � adequado.'
TX_RESP_Q133 = 'O acesso ao local de alimenta��o � livre para pessoas com mobilidade reduzida.'
TX_RESP_Q134 = 'H� pias para higieniza��o das m�os pr�ximas ao local de alimenta��o.'
TX_RESP_Q135 = 'A merenda escolar � preparada na pr�pria institui��o?'
TX_RESP_Q136 = 'A escola possui Projeto Pol�tico-Pedag�gico?'
TX_RESP_Q137 = 'Seu conte�do � discutido em reuni�es?'
TX_RESP_Q138 = 'Os(As) professores(as) participaram da elabora��o?'
TX_RESP_Q139 = 'Os pais participaram da elabora��o?'
TX_RESP_Q140 = 'Os(As) estudantes participaram da elabora��o?'
TX_RESP_Q141 = 'Estabelece metas de aprendizagem?'
TX_RESP_Q142 = 'Considera os resultados de avalia��es externas (Saeb, estaduais, municipais etc.)?'
TX_RESP_Q143 = 'H� metas de alcance de indicadores externos (Ideb, �ndices estaduais ou municipais)?'
TX_RESP_Q144 = 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'
TX_RESP_Q145 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q146 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q147 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q148 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q149 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q150 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q151 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q152 = 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q153 = 'Descreva os outros crit�rios utilizados'
TX_RESP_Q154 = 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q155 = 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q156 = 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q157 = 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q158 = 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q159 = 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q160 = 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q161 = 'Descreva os outros crit�rios utilizados'
TX_RESP_Q162 = 'Prefer�ncia dos(as) professores(as).'
TX_RESP_Q163 = 'Tempo de servi�o.'
TX_RESP_Q164 = 'Cursos de forma��o continuada realizados.'
TX_RESP_Q165 = 'Professores(as) experientes nas turmas com facilidade de aprendizagem.'
TX_RESP_Q166 = 'Professores(as) experientes nas turmas com dificuldade de aprendizagem.'
TX_RESP_Q167 = 'Manuten��o do(a) professor(a) com a mesma turma.'
TX_RESP_Q168 = 'Revezamento dos(as) professores(as) entre s�ries/anos.'
TX_RESP_Q169 = 'Atribui��o pela gest�o da escola.'
TX_RESP_Q170 = 'Entrar em contato com os familiares do(a) estudante.'
TX_RESP_Q171 = 'Ir � resid�ncia do(a) estudante.'
TX_RESP_Q172 = 'Informar ao Conselho Tutelar.'
TX_RESP_Q173 = 'Oferta de refor�o escolar.'
TX_RESP_Q174 = 'Oferta de atendimento educacional especializado para estudantes com defici�ncia, transtornos do espectro autista ou com altas habilidades/superdota��o.'
TX_RESP_Q175 = 'Os(As) estudantes s�o estimulados(as) a apoiar uns(umas) aos(�s) outros(as).'
TX_RESP_Q176 = 'Revis�o dos procedimentos de avalia��o.'
TX_RESP_Q177 = 'Revis�o das pr�ticas pedag�gicas.'
TX_RESP_Q178 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q179 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q180 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q181 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q182 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q183 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q184 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q185 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q186 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q187 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q188 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q189 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q190 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q191 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q192 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q193 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q194 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q195 = 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q196 = 'Prepara��o dos(as) estudantes para os testes de avalia��o externos.'
TX_RESP_Q197 = 'Inscri��o dos(as) estudantes em ol�mpiadas de conhecimento.'
TX_RESP_Q198 = 'Feira de ci�ncias.'
TX_RESP_Q199 = 'Feira de artes'
TX_RESP_Q200 = 'Campeonatos esportivos.'
TX_RESP_Q201 = 'Conte�do e compreens�o dos conceitos da(s) �rea(s) de ensino.'
TX_RESP_Q202 = 'Avalia��o da aprendizagem.'
TX_RESP_Q203 = 'Avalia��o em larga escala.'
TX_RESP_Q204 = 'Metodologias de ensino.'
TX_RESP_Q205 = 'Conhecimento do curr�culo.'
TX_RESP_Q206 = 'Gest�o da sala de aula.'
TX_RESP_Q207 = 'Novas tecnologias.'
TX_RESP_Q208 = 'Gest�o e administra��o escolar.'
TX_RESP_Q209 = 'Educa��o especial.'
TX_RESP_Q210 = 'Sugest�es de melhoria para o instrumento (inclus�o de temas, estrutura do question�rio etc.)'


;
run;quit;