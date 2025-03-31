/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_DIRETOR                                                  */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO DIRETOR DO SAEB 2021         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_DIRETOR.CSV no diretório C:\ do computador.	                                   */
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
0='Não pública'
1='Pública';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value IN_PREENCHIMENTO_QUESTIONARIO
0='Não preenchido'
1='Preenchido parcial ou totalmente';

value $QDum
A = 'SIM'
B = 'NÃO';

value $QDois
A = 'SIM'
B = 'NÃO';

value $QDtres
A = 'SIM'
B = 'NÃO';

value $QDquatro
A = 'SIM'
B = 'NÃO';

value $QDcinco
A = 'SIM'
B = 'NÃO';

value $QDseis
A = 'Pública.'
B = 'Privada.';

value $QDsete
A = 'Masculino.'
B = 'Feminino.';

value $QDnove
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Indígena'
F = 'Não quero declarar';

value $QDdez
A = 'Sim'
B = 'Não';

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
B = 'Não';

value $QDvintecinco
A = 'Sim'
B = 'Não';

value $QDvinteseis
A = 'Sim'
B = 'Não';

value $QDvintesete
A = 'Sim'
B = 'Não';

value $QDvinteoito
A = 'Sim'
B = 'Não';

value $QDvintenove
A = 'Sim'
B = 'Não';

value $QDtrinta
A = 'Sim'
B = 'Não';

value $QDtrintaum
A = 'Sim'
B = 'Não';

value $QDtrintadois
A = 'Sim'
B = 'Não';

value $QDtrintatres
A = 'Sim'
B = 'Não';

value $QDtrintaquatro
A = 'Sim'
B = 'Não';

value $QDtrintacinco
A = 'Sim'
B = 'Não';

value $QDtrintaseis
A = 'Sim'
B = 'Não';

value $QDtrintasete
A = 'Sim'
B = 'Não';

value $QDtrintaoito
A = 'Sim'
B = 'Não';

value $QDtrintanove
A = 'Sim'
B = 'Não';

value $QDquarenta
A = 'Sim'
B = 'Não';

value $QDquarentaum
A = 'Sim'
B = 'Não';

value $QDquarentadois
A = 'A escola não oferece ensino fundamental ou médio'
B = 'Os (As) alunos (as) da educação infantil utilizam a área externa em horário diferenciado.'
C = 'Os (As) alunos (as) da educação infantil utilizam a área externa';

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
C = 'Desnecessária';

value $QDcinquentaoito
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecessária';

value $QDcinquentanove
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecessária';

value $QDsessenta
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecessária';

value $QDsessentaum
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecessária';

value $QDsessentadois
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecessária';

value $QDsessentatres
A = 'Suficiente'
B = 'Insuficiente'
C = 'Desnecessária';

value $QDsessentaquatro
A = 'Sim'
B = 'Não';

value $QDsessentacinco
A = 'Sim'
B = 'Não';

value $QDsessentaseis
A = 'Sim'
B = 'Não';

value $QDsessentasete
A = 'Sim'
B = 'Não';

value $QDsessentaoito
A = 'Sim'
B = 'Não';

value $QDsessentanove
A = 'Sim'
B = 'Não';

value $QDsetenta
A = 'Sim'
B = 'Não';

value $QDsetentaum
A = 'Sim'
B = 'Não';

value $QDsetentadois
A = 'Sim'
B = 'Não';

value $QDsetentatres
A = 'Sim'
B = 'Não';

value $QDsetentaquatro
A = 'Sim'
B = 'Não';

value $QDsetentaseis
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDsetentasete
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDsetentaoito
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDsetentanove
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitenta
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentaum
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentadois
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentatres
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentaquatro
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentacinco
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentaseis
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentasete
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

value $QDoitentaoito
A = 'Nunca'
B = 'Poucas vezes'
C = 'Várias vezes';

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
B = 'Não existe Conselho';

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
B = 'Não existe Conselho';

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
B = 'Não existe APM (ou Caixa escolar).';

value $QDnoventaoito
A = 'Sim, existe e está ativo.'
B = 'Sim, existe, mas está inativo.'
C = 'Não existe Grêmio Estudantil.';

value $QDnoventanove
A = 'Sim'
B = 'Não';

value $QDcem
A = 'Sim'
B = 'Não';

value $QDcemum
A = 'os serviços de saúde';

value $QDcemdois
B = 'os serviços de assistência social';

value $QDcemtres
C = 'a segurança pública';

value $QDcemquatro
D = 'o conselho tutelar';

value $QDcemcinco
E = 'instituições de apoio ao público alvo da educação especial';

value $QDcemseis
F = 'organizações não governamentais/instituições privadas';

value $QDcemsete
A = 'Sim'
B = 'Não';

value $QDcemoito
A = 'Sim'
B = 'Não';

value $QDcemnove
A = 'Sim'
B = 'Não';

value $QDcemdez
A = 'Sim'
B = 'Não';

value $QDcemonze
A = 'Sim'
B = 'Não';

value $QDcemdoze
A = 'Sim'
B = 'Não';

value $QDcemtreze
A = 'Sim'
B = 'Não';

value $QDcemcatorze
A = 'Sim'
B = 'Não';

value $QDcemquinze
A = 'Aquisição pela escola ou Secretaria de Educação.';

value $QDcemdezesseis
B = 'Campanhas de doação.';

value $QDcemdezessete
C = 'Solicitação às famílias.';

value $QDcemdezoito
A = 'Aquisição pela escola ou Secretaria de Educação.';

value $QDcemdezenove
B = 'Campanhas de doação.';

value $QDcemvinte
C = 'Solicitação às famílias.';

value $QDcemvinteum
A = 'Aquisição pela escola ou Secretaria de Educação.';

value $QDcemvintedois
B = 'Campanhas de doação.';

value $QDcemvintetres
C = 'Solicitação às famílias.';

value $QDcemvintequatro
A = 'Sim'
B = 'Não';

value $QDcemvintecinco
A = 'Uma vez.'
B = 'Duas vezes.'
C = 'Três vezes ou mais.'
D = 'Não se aplica.';

value $QDcemvinteseis
A = 'Uma vez.'
B = 'Duas vezes.'
C = 'Três vezes ou mais.'
D = 'Não se aplica.';

value $QDcemvintesete
A = 'Uma vez.'
B = 'Duas vezes.'
C = 'Três vezes ou mais.'
D = 'Não se aplica.';

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
B = 'Não';

value $QDcemtrintaseis
A = 'Sim'
B = 'Não';

value $QDcemtrintasete
A = 'Sim'
B = 'Não'
C = 'Não se aplica.';

value $QDcemtrintaoito
A = 'Sim'
B = 'Não'
C = 'Não se aplica.';

value $QDcemtrintanove
A = 'Sim'
B = 'Não'
C = 'Não se aplica.';

value $QDcemquarenta
A = 'Sim'
B = 'Não'
C = 'Não se aplica.';

value $QDcemquarentaum
A = 'Sim'
B = 'Não'
C = 'Não se aplica.';

value $QDcemquarentadois
A = 'Sim'
B = 'Não'
C = 'Não se aplica.';

value $QDcemquarentatres
A = 'Sim'
B = 'Não'
C = 'Não se aplica.';

value $QDcemquarentaquatro
A = 'Sim'
B = 'Não';

value $QDcemquarentacinco
A = 'Sorteio.';

value $QDcemquarentaseis
B = 'Local de moradia.';

value $QDcemquarentasete
C = 'Prova de conhecimentos.';

value $QDcemquarentaoito
D = 'Ordem de chegada.';

value $QDcemquarentanove
E = 'Características socioeconômicas.';

value $QDcemcinquenta
F = 'Desempenho do(a) estudante no ano anterior.';

value $QDcemcinquentaum
G = 'Critérios definidos pela Secretaria de Educação.';

value $QDcemcinquentadois
H = 'Outros.';

value $QDcemcinquentaquatro
A = 'Afinidade entre os(as) estudantes.';

value $QDcemcinquentacinco
B = 'Idade.';

value $QDcemcinquentaseis
C = 'Equilíbrio de meninos e meninas.';

value $QDcemcinquentasete
D = 'Manter as turmas existentes do ano anterior.';

value $QDcemcinquentaoito
E = 'Critérios disciplinares.';

value $QDcemcinquentanove
F = 'Desempenho escolar.';

value $QDcemsessenta
G = 'Outros.';

value $QDcemsessentadois
A = 'Sim'
B = 'Não';

value $QDcemsessentatres
A = 'Sim'
B = 'Não';

value $QDcemsessentaquatro
A = 'Sim'
B = 'Não';

value $QDcemsessentacinco
A = 'Sim'
B = 'Não';

value $QDcemsessentaseis
A = 'Sim'
B = 'Não';

value $QDcemsessentasete
A = 'Sim'
B = 'Não';

value $QDcemsessentaoito
A = 'Sim'
B = 'Não';

value $QDcemsessentanove
A = 'Sim'
B = 'Não';

value $QDcemsetenta
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaum
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentadois
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentatres
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaquatro
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentacinco
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaseis
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentasete
A = 'Não foi realizada esta ação.'
B = 'Nada efetiva.'
C = 'Pouco efetiva.'
D = 'Efetiva.'
E = 'Muito efetiva.';

value $QDcemsetentaoito
A = 'Violência.';

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
H = 'Educação ambiental.';

value $QDcemoitentaseis
I = 'Ciência e tecnologia.';

value $QDcemoitentasete
J = 'Diversidade religiosa.';

value $QDcemoitentaoito
K = 'Desigualdades sociais.';

value $QDcemoitentanove
L = 'Nutrição e alimentação.';

value $QDcemnoventa
M = 'Educação para o trânsito.';

value $QDcemnoventaum
N = 'Relações étnico-raciais/racismo.';

value $QDcemnoventadois
O = 'Direitos das pessoas com deficiência.';

value $QDcemnoventatres
P = 'Direitos da criança e do adolescente.';

value $QDcemnoventaquatro
Q = 'Mundo do trabalho (direitos, relações etc.).';

value $QDcemnoventacinco
R = 'Educação financeira e consumo sustentável.';

value $QDcemnoventaseis
A = 'Sim'
B = 'Não';

value $QDcemnoventasete
A = 'Sim'
B = 'Não';

value $QDcemnoventaoito
A = 'Sim'
B = 'Não';

value $QDcemnoventanove
A = 'Sim'
B = 'Não';

value $QDduzentos
A = 'Sim'
B = 'Não';

value $QDduzentosum
A = 'Sim'
B = 'Não';

value $QDduzentosdois
A = 'Sim'
B = 'Não';

value $QDduzentostres
A = 'Sim'
B = 'Não';

value $QDduzentosquatro
A = 'Sim'
B = 'Não';

value $QDduzentoscinco
A = 'Sim'
B = 'Não';

value $QDduzentosseis
A = 'Sim'
B = 'Não';

value $QDduzentossete
A = 'Sim'
B = 'Não';

value $QDduzentosoito
A = 'Sim'
B = 'Não';

value $QDduzentosnove
A = 'Sim'
B = 'Não';
 
run;

DATA WORK.TS_DIRETOR;

 INFILE 'C:/TS_DIRETOR.csv' /*Endereço do arquivo*/
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

ID_SAEB = 'Ano de aplicação do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Código do Município'                                                                                                                   
ID_AREA = 'Área'
ID_ESCOLA= 'Código da Escola'
IN_PUBLICA= 'Indica se a escola é pública ou não'
ID_LOCALIZACAO= 'Localização'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
ID_SAEB = 'Ano de aplicação do Saeb'
ID_REGIAO = 'Código da Região'
ID_UF = 'Código da Unidade da Federação'
ID_MUNICIPIO = 'Código do Município'
ID_AREA = 'Área'
ID_ESCOLA = 'Código da Escola'
IN_PUBLICA = 'Indica se a escola é pública ou não'
ID_LOCALIZACAO = 'Localização'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
TX_RESP_Q001 = 'Educação Infantil  -  Creche  (0 a 3 anos).'
TX_RESP_Q002 = 'Educação Infantil  -  Pré-escola  (4 e 5 anos) .'
TX_RESP_Q003 = 'Anos Iniciais do Ensino Fundamental.'
TX_RESP_Q004 = 'Anos Finais do Ensino Fundamental.'
TX_RESP_Q005 = 'Ensino Médio.'
TX_RESP_Q006 = 'Sua escola é:'
TX_RESP_Q007 = 'Qual é o seu sexo?'
TX_RESP_Q008 = 'Qual é a sua idade?'
TX_RESP_Q009 = 'Qual é a sua cor ou raça?'
TX_RESP_Q010 = 'Você possui necessidade especial, deficiência , transtorno do espectro autista ou superdotação?'
TX_RESP_Q011 = 'Quanto anos você trabalhou como professor(a) antes de se tornar diretor(a)?'
TX_RESP_Q012 = 'Há quantos anos você é diretor(a) desta escola?'
TX_RESP_Q013 = 'Em uma semana normal de trabalho, quantas HORAS, no total, você gasta com TODAS as atividades de direção da escola?'
TX_RESP_Q014 = 'Mobilizar a comunidade para auxiliar a escola.'
TX_RESP_Q015 = 'Coordenar a gestão curricular, dos métodos de aprendizagem e da avaliação.'
TX_RESP_Q016 = 'Conduzir o planejamento pedagógico.'
TX_RESP_Q017 = 'Coordenar as atividades administrativas (merenda, segurança, manutenção predial, etc.).'
TX_RESP_Q018 = 'Liderar as equipes de trabalho (reunir com professores, delegar tarefas para outros profissionais, etc.).'
TX_RESP_Q019 = 'Gerenciar os recursos financeiros (prestação de contas, etc).'
TX_RESP_Q020 = 'Atender aos pais ou responsáveis.'
TX_RESP_Q021 = 'Atender individualmente aos(às) professores(as).'
TX_RESP_Q022 = 'Atender aos(às) alunos(as).'
TX_RESP_Q023 = 'Outras atividades.'
TX_RESP_Q024 = 'Antes desta escola, você trabalhou como diretor em outra escola?'
TX_RESP_Q025 = 'Você possui outra atividade remunerada?'
TX_RESP_Q026 = 'Bebedouro ao alcance das crianças.'
TX_RESP_Q027 = 'Chuveiro para as crianças'
TX_RESP_Q028 = 'Área sombreada.'
TX_RESP_Q029 = 'Área externa coberta.'
TX_RESP_Q030 = 'Vegetação e jardim.'
TX_RESP_Q031 = 'Horta.'
TX_RESP_Q032 = 'Tanque de areia.'
TX_RESP_Q033 = 'Gira-gira.'
TX_RESP_Q034 = 'Gangorra.'
TX_RESP_Q035 = 'Escorregador.'
TX_RESP_Q036 = 'Casinha.'
TX_RESP_Q037 = 'Balanço.'
TX_RESP_Q038 = 'Brinquedo para escalar.'
TX_RESP_Q039 = 'Espaço destinado à amamentação.'
TX_RESP_Q040 = 'Condições para armazenamento de leite materno.'
TX_RESP_Q041 = 'Banheiro infantil.'
TX_RESP_Q042 = 'Caso sua escola ofereça Ensino Fundamental e/ou Médio, a área externa (pátio, área verde e parque) é utilizada em horários diferenciados pelos(as) alunos(as) da Educação Infantil?'
TX_RESP_Q043 = 'Os recursos financeiros foram suficientes.'
TX_RESP_Q044 = 'O quadro de professores estava completo.'
TX_RESP_Q045 = 'Havia quantidade suficiente de pessoal administrativo.'
TX_RESP_Q046 = 'Havia quantidade suficiente de pessoal para apoio pedagógico (coordenador, orientador etc.).'
TX_RESP_Q047 = 'Os recursos pedagógicos foram suficientes.'
TX_RESP_Q048 = 'Recebi apoio da Secretaria de Educação.'
TX_RESP_Q049 = 'Os(As) professores(as) foram assíduos(as).'
TX_RESP_Q050 = 'As substituições das ausências de professores(as) foram facilmente realizadas.'
TX_RESP_Q051 = 'Os(As) alunos(as) foram assíduos(as).'
TX_RESP_Q052 = 'A comunidade apoiou a gestão da escola.'
TX_RESP_Q053 = 'A comunidade executou trabalhos voluntários na escola.'
TX_RESP_Q054 = 'As famílias contribuíram com o trabalho pedagógico.'
TX_RESP_Q055 = 'Os alunos com deficiência, transtornos espectro autista ou com altas habilidades/superdotação receberam atendimento educacional especializado (AEE)'
TX_RESP_Q056 = 'No início do ano letivo, todos(as) os(as) alunos(as) receberam os livros didáticos.'
TX_RESP_Q057 = 'Professor(a) de Braille.'
TX_RESP_Q058 = 'Professor(a) bilíngue para surdos.'
TX_RESP_Q059 = 'Professor ou Instrutor de Libras'
TX_RESP_Q060 = 'Guia-interprete'
TX_RESP_Q061 = 'Professor(a) da sala de recursos multifuncionais.'
TX_RESP_Q062 = 'Professor(a) itinerante.'
TX_RESP_Q063 = 'Monitor(a) de apoio à educação especial.'
TX_RESP_Q064 = 'Falta de água.'
TX_RESP_Q065 = 'Falta de energia.'
TX_RESP_Q066 = 'Falta de merenda.'
TX_RESP_Q067 = 'Greve de professores.'
TX_RESP_Q068 = 'Episódios de violência.'
TX_RESP_Q069 = 'Problemas de infraestrutura predial.'
TX_RESP_Q070 = 'Paralisação do transporte.'
TX_RESP_Q071 = 'Eventos climáticos (inundação, desmoronamento etc.).'
TX_RESP_Q072 = 'Eventos comemorativos.'
TX_RESP_Q073 = 'Problemas de saúde pública.'
TX_RESP_Q074 = 'Outros.'
TX_RESP_Q075 = 'Por quantos dias letivos, no total, ocorreu a interrupção:'
TX_RESP_Q076 = 'Atentado à vida.'
TX_RESP_Q077 = 'Lesão corporal'
TX_RESP_Q078 = 'Roubo ou furto.'
TX_RESP_Q079 = 'Tráfico de drogas.'
TX_RESP_Q080 = 'Permanência de pessoas sob efeito de álcool.'
TX_RESP_Q081 = 'Permanência de pessoas sob efeito de drogas.'
TX_RESP_Q082 = 'Porte de arma (revólver, faca, canivete etc.).'
TX_RESP_Q083 = 'Assédio sexual'
TX_RESP_Q084 = 'Discriminação'
TX_RESP_Q085 = 'Bullying (ameaças ou ofensas verbais)'
TX_RESP_Q086 = 'Invasão do espaço escolar'
TX_RESP_Q087 = 'Depredação do patrimônio escolar (vandalismo)'
TX_RESP_Q088 = 'Tiroteio ou bala perdida'
TX_RESP_Q089 = 'Condições de segurança na entrada e saída da escola.'
TX_RESP_Q090 = 'Muros e/ou grades que isolam a escola do ambiente externo.'
TX_RESP_Q091 = 'Identificação externa que caracterize o prédio como uma instituição escolar.'
TX_RESP_Q092 = 'O acesso à entrada principal adequado às pessoas com deficiência física e visual (ex.: rampas e marcadores no chão).'
TX_RESP_Q093 = 'Condições de uso dos equipamentos da área externa de recreação (parque infantil, pátio, quadra poliesportiva etc.).'
TX_RESP_Q094 = 'O acesso dos(as) alunos(as) público-alvo da educação especial à área externa de recreação (parque infantil, pátio, quadra poliesportiva etc.).'
TX_RESP_Q095 = 'O Conselho Escolar é um colegiado geralmente constituído por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Na sua escola, quantas vezes se reuniu o Conselho Escolar?'
TX_RESP_Q096 = 'O Conselho de Classe é um órgão formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q097 = 'A APM   -   Associação de Pais e Mestres existe para apoiar as ações da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?'
TX_RESP_Q098 = 'Há Grêmio Estudantil?'
TX_RESP_Q099 = 'A escola segue orientação militar.'
TX_RESP_Q100 = 'A escola segue orientação religiosa.'
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
TX_RESP_Q111 = 'Organizações sem fins lucrativos.'
TX_RESP_Q112 = 'Pagamento de taxas pelos familiares dos(as) estudantes.'
TX_RESP_Q113 = 'Contribuições voluntárias dos familiares dos(as) estudantes.'
TX_RESP_Q114 = 'Contribuições voluntárias dos(as) profissionais da escola.'
TX_RESP_Q115 = 'Brinquedos'
TX_RESP_Q116 = 'Brinquedos'
TX_RESP_Q117 = 'Brinquedos'
TX_RESP_Q118 = 'Recursos pedagógicos'
TX_RESP_Q119 = 'Recursos pedagógicos'
TX_RESP_Q120 = 'Recursos pedagógicos'
TX_RESP_Q121 = 'Materiais de higiene pessoal'
TX_RESP_Q122 = 'Materiais de higiene pessoal'
TX_RESP_Q123 = 'Materiais de higiene pessoal'
TX_RESP_Q124 = 'A escola oferece merenda aos(às) estudantes?'
TX_RESP_Q125 = 'Para alunos(as) que permanecem menos de 4 horas na escola:'
TX_RESP_Q126 = 'Para alunos(as) que permanecem entre 4 e 7 horas na escola:'
TX_RESP_Q127 = 'Para alunos(as) que permanecem mais de 7 horas na escola:'
TX_RESP_Q128 = 'A quantidade de alimentos é suficiente para todos(as).'
TX_RESP_Q129 = 'Os alimentos são de boa qualidade.'
TX_RESP_Q130 = 'Há  dietas especificas para alunos com restrições alimentares.'
TX_RESP_Q131 = 'A cozinha atende as necessidades do preparo da merenda.'
TX_RESP_Q132 = 'O local de alimentação é adequado.'
TX_RESP_Q133 = 'O acesso ao local de alimentação é livre para pessoas com mobilidade reduzida.'
TX_RESP_Q134 = 'Há pias para higienização das mãos próximas ao local de alimentação.'
TX_RESP_Q135 = 'A merenda escolar é preparada na própria instituição?'
TX_RESP_Q136 = 'A escola possui Projeto Político-Pedagógico?'
TX_RESP_Q137 = 'Seu conteúdo é discutido em reuniões?'
TX_RESP_Q138 = 'Os(As) professores(as) participaram da elaboração?'
TX_RESP_Q139 = 'Os pais participaram da elaboração?'
TX_RESP_Q140 = 'Os(As) estudantes participaram da elaboração?'
TX_RESP_Q141 = 'Estabelece metas de aprendizagem?'
TX_RESP_Q142 = 'Considera os resultados de avaliações externas (Saeb, estaduais, municipais etc.)?'
TX_RESP_Q143 = 'Há metas de alcance de indicadores externos (Ideb, índices estaduais ou municipais)?'
TX_RESP_Q144 = 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'
TX_RESP_Q145 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q146 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q147 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q148 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q149 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q150 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q151 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q152 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q153 = 'Descreva os outros critérios utilizados'
TX_RESP_Q154 = 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q155 = 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q156 = 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q157 = 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q158 = 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q159 = 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q160 = 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q161 = 'Descreva os outros critérios utilizados'
TX_RESP_Q162 = 'Preferência dos(as) professores(as).'
TX_RESP_Q163 = 'Tempo de serviço.'
TX_RESP_Q164 = 'Cursos de formação continuada realizados.'
TX_RESP_Q165 = 'Professores(as) experientes nas turmas com facilidade de aprendizagem.'
TX_RESP_Q166 = 'Professores(as) experientes nas turmas com dificuldade de aprendizagem.'
TX_RESP_Q167 = 'Manutenção do(a) professor(a) com a mesma turma.'
TX_RESP_Q168 = 'Revezamento dos(as) professores(as) entre séries/anos.'
TX_RESP_Q169 = 'Atribuição pela gestão da escola.'
TX_RESP_Q170 = 'Entrar em contato com os familiares do(a) estudante.'
TX_RESP_Q171 = 'Ir à residência do(a) estudante.'
TX_RESP_Q172 = 'Informar ao Conselho Tutelar.'
TX_RESP_Q173 = 'Oferta de reforço escolar.'
TX_RESP_Q174 = 'Oferta de atendimento educacional especializado para estudantes com deficiência, transtornos do espectro autista ou com altas habilidades/superdotação.'
TX_RESP_Q175 = 'Os(As) estudantes são estimulados(as) a apoiar uns(umas) aos(às) outros(as).'
TX_RESP_Q176 = 'Revisão dos procedimentos de avaliação.'
TX_RESP_Q177 = 'Revisão das práticas pedagógicas.'
TX_RESP_Q178 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q179 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q180 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q181 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q182 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q183 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q184 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q185 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q186 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q187 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q188 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q189 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q190 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q191 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q192 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q193 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q194 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q195 = 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q196 = 'Preparação dos(as) estudantes para os testes de avaliação externos.'
TX_RESP_Q197 = 'Inscrição dos(as) estudantes em olímpiadas de conhecimento.'
TX_RESP_Q198 = 'Feira de ciências.'
TX_RESP_Q199 = 'Feira de artes'
TX_RESP_Q200 = 'Campeonatos esportivos.'
TX_RESP_Q201 = 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino.'
TX_RESP_Q202 = 'Avaliação da aprendizagem.'
TX_RESP_Q203 = 'Avaliação em larga escala.'
TX_RESP_Q204 = 'Metodologias de ensino.'
TX_RESP_Q205 = 'Conhecimento do currículo.'
TX_RESP_Q206 = 'Gestão da sala de aula.'
TX_RESP_Q207 = 'Novas tecnologias.'
TX_RESP_Q208 = 'Gestão e administração escolar.'
TX_RESP_Q209 = 'Educação especial.'
TX_RESP_Q210 = 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.)'


;
run;quit;