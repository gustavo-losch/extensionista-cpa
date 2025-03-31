/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_DIRETOR.sps                                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTION�RIO DO DIRETOR        */
/*                     DO SAEB 2021                                                                                */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_DIRETOR.CSV no diret�rio C:\ do computador.	                        	 */
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
/FILE="C:/TS_DIRETOR.csv"
/DELCASE=LINE
/DELIMITERS="|"
/QUALIFIER='"'
/ARRANGEMENT=DELIMITED
/FIRSTCASE=2
/IMPORTCASE=ALL
/VARIABLES=
ID_SAEB F5.0
ID_REGIAO F2.0
ID_UF F3.0
ID_MUNICIPIO F8.0
ID_AREA F1.0
ID_ESCOLA F9.0
IN_PUBLICA F1.0
ID_LOCALIZACAO F2.0
IN_PREENCHIMENTO_QUESTIONARIO F1.0
TX_RESP_Q001 A8
TX_RESP_Q002 A8
TX_RESP_Q003 A8
TX_RESP_Q004 A8
TX_RESP_Q005 A8
TX_RESP_Q006 A8
TX_RESP_Q007 A8
TX_RESP_Q008 F4.0
TX_RESP_Q009 A8
TX_RESP_Q010 A8
TX_RESP_Q011 A8
TX_RESP_Q012 F4.0
TX_RESP_Q013 F4.0
TX_RESP_Q014 F4.0
TX_RESP_Q015 F4.0
TX_RESP_Q016 F4.0
TX_RESP_Q017 F4.0
TX_RESP_Q018 F4.0
TX_RESP_Q019 F4.0
TX_RESP_Q020 F4.0
TX_RESP_Q021 F4.0
TX_RESP_Q022 F4.0
TX_RESP_Q023 F4.0
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
TX_RESP_Q075 F4.0
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
TX_RESP_Q121 A8
TX_RESP_Q122 A8
TX_RESP_Q123 A8
TX_RESP_Q124 A8
TX_RESP_Q125 A8
TX_RESP_Q126 A8
TX_RESP_Q127 A8
TX_RESP_Q128 A8
TX_RESP_Q129 A8
TX_RESP_Q130 A8
TX_RESP_Q131 A8
TX_RESP_Q132 A8
TX_RESP_Q133 A8
TX_RESP_Q134 A8
TX_RESP_Q135 A8
TX_RESP_Q136 A8
TX_RESP_Q137 A8
TX_RESP_Q138 A8
TX_RESP_Q139 A8
TX_RESP_Q140 A8
TX_RESP_Q141 A8
TX_RESP_Q142 A8
TX_RESP_Q143 A8
TX_RESP_Q144 A8
TX_RESP_Q145 A8
TX_RESP_Q146 A8
TX_RESP_Q147 A8
TX_RESP_Q148 A8
TX_RESP_Q149 A8
TX_RESP_Q150 A8
TX_RESP_Q151 A8
TX_RESP_Q152 A8
TX_RESP_Q153 A713
TX_RESP_Q154 A8
TX_RESP_Q155 A8
TX_RESP_Q156 A8
TX_RESP_Q157 A8
TX_RESP_Q158 A8
TX_RESP_Q159 A8
TX_RESP_Q160 A8
TX_RESP_Q161 A653
TX_RESP_Q162 A8
TX_RESP_Q163 A8
TX_RESP_Q164 A8
TX_RESP_Q165 A8
TX_RESP_Q166 A8
TX_RESP_Q167 A8
TX_RESP_Q168 A8
TX_RESP_Q169 A8
TX_RESP_Q170 A8
TX_RESP_Q171 A8
TX_RESP_Q172 A8
TX_RESP_Q173 A8
TX_RESP_Q174 A8
TX_RESP_Q175 A8
TX_RESP_Q176 A8
TX_RESP_Q177 A8
TX_RESP_Q178 A8
TX_RESP_Q179 A8
TX_RESP_Q180 A8
TX_RESP_Q181 A8
TX_RESP_Q182 A8
TX_RESP_Q183 A8
TX_RESP_Q184 A8
TX_RESP_Q185 A8
TX_RESP_Q186 A8
TX_RESP_Q187 A8
TX_RESP_Q188 A8
TX_RESP_Q189 A8
TX_RESP_Q190 A8
TX_RESP_Q191 A8
TX_RESP_Q192 A8
TX_RESP_Q193 A8
TX_RESP_Q194 A8
TX_RESP_Q195 A8
TX_RESP_Q196 A8
TX_RESP_Q197 A8
TX_RESP_Q198 A8
TX_RESP_Q199 A8
TX_RESP_Q200 A8
TX_RESP_Q201 A8
TX_RESP_Q202 A8
TX_RESP_Q203 A8
TX_RESP_Q204 A8
TX_RESP_Q205 A8
TX_RESP_Q206 A8
TX_RESP_Q207 A8
TX_RESP_Q208 A8
TX_RESP_Q209 A8
TX_RESP_Q210 A1024.

CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

VARIABLE LABELS
ID_SAEB 'Ano de aplica��o do Saeb'
ID_REGIAO 'C�digo da Regi�o'
ID_UF 'C�digo da Unidade da Federa��o'
ID_MUNICIPIO1 'C�digo do Munic�pio'
ID_AREA '�rea'
ID_ESCOLA1 'C�digo da Escola'
IN_PUBLICA 'Indica se a escola � p�blica ou n�o'
ID_LOCALIZACAO 'Localiza��o'
IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'
TX_RESP_Q001 'Educa��o Infantil  -  Creche  (0 a 3 anos).'
TX_RESP_Q002 'Educa��o Infantil  -  Pr�-escola  (4 e 5 anos) .'
TX_RESP_Q003 'Anos Iniciais do Ensino Fundamental.'
TX_RESP_Q004 'Anos Finais do Ensino Fundamental.'
TX_RESP_Q005 'Ensino M�dio.'
TX_RESP_Q006 'Sua escola �:'
TX_RESP_Q007 'Qual � o seu sexo?'
TX_RESP_Q008 'Qual � a sua idade?'
TX_RESP_Q009 'Qual � a sua cor ou ra�a?'
TX_RESP_Q010 'Voc� possui necessidade especial, defici�ncia , transtorno do espectro autista ou superdota��o?'
TX_RESP_Q011 'Quanto anos voc� trabalhou como professor(a) antes de se tornar diretor(a)?'
TX_RESP_Q012 'H� quantos anos voc� � diretor(a) desta escola?'
TX_RESP_Q013 'Em uma semana normal de trabalho, quantas HORAS, no total, voc� gasta com TODAS as atividades de dire��o da escola?'
TX_RESP_Q014 'Mobilizar a comunidade para auxiliar a escola.'
TX_RESP_Q015 'Coordenar a gest�o curricular, dos m�todos de aprendizagem e da avalia��o.'
TX_RESP_Q016 'Conduzir o planejamento pedag�gico.'
TX_RESP_Q017 'Coordenar as atividades administrativas (merenda, seguran�a, manuten��o predial, etc.).'
TX_RESP_Q018 'Liderar as equipes de trabalho (reunir com professores, delegar tarefas para outros profissionais, etc.).'
TX_RESP_Q019 'Gerenciar os recursos financeiros (presta��o de contas, etc).'
TX_RESP_Q020 'Atender aos pais ou respons�veis.'
TX_RESP_Q021 'Atender individualmente aos(�s) professores(as).'
TX_RESP_Q022 'Atender aos(�s) alunos(as).'
TX_RESP_Q023 'Outras atividades.'
TX_RESP_Q024 'Antes desta escola, voc� trabalhou como diretor em outra escola?'
TX_RESP_Q025 'Voc� possui outra atividade remunerada?'
TX_RESP_Q026 'Bebedouro ao alcance das crian�as.'
TX_RESP_Q027 'Chuveiro para as crian�as'
TX_RESP_Q028 '�rea sombreada.'
TX_RESP_Q029 '�rea externa coberta.'
TX_RESP_Q030 'Vegeta��o e jardim.'
TX_RESP_Q031 'Horta.'
TX_RESP_Q032 'Tanque de areia.'
TX_RESP_Q033 'Gira-gira.'
TX_RESP_Q034 'Gangorra.'
TX_RESP_Q035 'Escorregador.'
TX_RESP_Q036 'Casinha.'
TX_RESP_Q037 'Balan�o.'
TX_RESP_Q038 'Brinquedo para escalar.'
TX_RESP_Q039 'Espa�o destinado � amamenta��o.'
TX_RESP_Q040 'Condi��es para armazenamento de leite materno.'
TX_RESP_Q041 'Banheiro infantil.'
TX_RESP_Q042 'Caso sua escola ofere�a Ensino Fundamental e/ou M�dio, a �rea externa (p�tio, �rea verde e parque) � utilizada em hor�rios diferenciados pelos(as) alunos(as) da Educa��o Infantil?'
TX_RESP_Q043 'Os recursos financeiros foram suficientes.'
TX_RESP_Q044 'O quadro de professores estava completo.'
TX_RESP_Q045 'Havia quantidade suficiente de pessoal administrativo.'
TX_RESP_Q046 'Havia quantidade suficiente de pessoal para apoio pedag�gico (coordenador, orientador etc.).'
TX_RESP_Q047 'Os recursos pedag�gicos foram suficientes.'
TX_RESP_Q048 'Recebi apoio da Secretaria de Educa��o.'
TX_RESP_Q049 'Os(As) professores(as) foram ass�duos(as).'
TX_RESP_Q050 'As substitui��es das aus�ncias de professores(as) foram facilmente realizadas.'
TX_RESP_Q051 'Os(As) alunos(as) foram ass�duos(as).'
TX_RESP_Q052 'A comunidade apoiou a gest�o da escola.'
TX_RESP_Q053 'A comunidade executou trabalhos volunt�rios na escola.'
TX_RESP_Q054 'As fam�lias contribu�ram com o trabalho pedag�gico.'
TX_RESP_Q055 'Os alunos com defici�ncia, transtornos espectro autista ou com altas habilidades/superdota��o receberam atendimento educacional especializado (AEE)'
TX_RESP_Q056 'No in�cio do ano letivo, todos(as) os(as) alunos(as) receberam os livros did�ticos.'
TX_RESP_Q057 'Professor(a) de Braille.'
TX_RESP_Q058 'Professor(a) bil�ngue para surdos.'
TX_RESP_Q059 'Professor ou Instrutor de Libras'
TX_RESP_Q060 'Guia-interprete'
TX_RESP_Q061 'Professor(a) da sala de recursos multifuncionais.'
TX_RESP_Q062 'Professor(a) itinerante.'
TX_RESP_Q063 'Monitor(a) de apoio � educa��o especial.'
TX_RESP_Q064 'Falta de �gua.'
TX_RESP_Q065 'Falta de energia.'
TX_RESP_Q066 'Falta de merenda.'
TX_RESP_Q067 'Greve de professores.'
TX_RESP_Q068 'Epis�dios de viol�ncia.'
TX_RESP_Q069 'Problemas de infraestrutura predial.'
TX_RESP_Q070 'Paralisa��o do transporte.'
TX_RESP_Q071 'Eventos clim�ticos (inunda��o, desmoronamento etc.).'
TX_RESP_Q072 'Eventos comemorativos.'
TX_RESP_Q073 'Problemas de sa�de p�blica.'
TX_RESP_Q074 'Outros.'
TX_RESP_Q075 'Por quantos dias letivos, no total, ocorreu a interrup��o:'
TX_RESP_Q076 'Atentado � vida.'
TX_RESP_Q077 'Les�o corporal'
TX_RESP_Q078 'Roubo ou furto.'
TX_RESP_Q079 'Tr�fico de drogas.'
TX_RESP_Q080 'Perman�ncia de pessoas sob efeito de �lcool.'
TX_RESP_Q081 'Perman�ncia de pessoas sob efeito de drogas.'
TX_RESP_Q082 'Porte de arma (rev�lver, faca, canivete etc.).'
TX_RESP_Q083 'Ass�dio sexual'
TX_RESP_Q084 'Discrimina��o'
TX_RESP_Q085 'Bullying (amea�as ou ofensas verbais)'
TX_RESP_Q086 'Invas�o do espa�o escolar'
TX_RESP_Q087 'Depreda��o do patrim�nio escolar (vandalismo)'
TX_RESP_Q088 'Tiroteio ou bala perdida'
TX_RESP_Q089 'Condi��es de seguran�a na entrada e sa�da da escola.'
TX_RESP_Q090 'Muros e/ou grades que isolam a escola do ambiente externo.'
TX_RESP_Q091 'Identifica��o externa que caracterize o pr�dio como uma institui��o escolar.'
TX_RESP_Q092 'O acesso � entrada principal adequado �s pessoas com defici�ncia f�sica e visual (ex.: rampas e marcadores no ch�o).'
TX_RESP_Q093 'Condi��es de uso dos equipamentos da �rea externa de recrea��o (parque infantil, p�tio, quadra poliesportiva etc.).'
TX_RESP_Q094 'O acesso dos(as) alunos(as) p�blico-alvo da educa��o especial � �rea externa de recrea��o (parque infantil, p�tio, quadra poliesportiva etc.).'
TX_RESP_Q095 'O Conselho Escolar � um colegiado geralmente constitu�do por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Na sua escola, quantas vezes se reuniu o Conselho Escolar?'
TX_RESP_Q096 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q097 'A APM   -   Associa��o de Pais e Mestres existe para apoiar as a��es da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?'
TX_RESP_Q098 'H� Gr�mio Estudantil?'
TX_RESP_Q099 'A escola segue orienta��o militar.'
TX_RESP_Q100 'A escola segue orienta��o religiosa.'
TX_RESP_Q101 'Marque todas as que se aplicarem.'
TX_RESP_Q102 'Marque todas as que se aplicarem.'
TX_RESP_Q103 'Marque todas as que se aplicarem.'
TX_RESP_Q104 'Marque todas as que se aplicarem.'
TX_RESP_Q105 'Marque todas as que se aplicarem.'
TX_RESP_Q106 'Marque todas as que se aplicarem.'
TX_RESP_Q107 'Recursos federais (Programa Dinheiro Direto na Escola etc.).'
TX_RESP_Q108 'Recursos estaduais ou municipais.'
TX_RESP_Q109 'Eventos da escola (festa, rifa etc.).'
TX_RESP_Q110 'Empresas que apoiam a escola.'
TX_RESP_Q111 'Organiza��es sem fins lucrativos.'
TX_RESP_Q112 'Pagamento de taxas pelos familiares dos(as) estudantes.'
TX_RESP_Q113 'Contribui��es volunt�rias dos familiares dos(as) estudantes.'
TX_RESP_Q114 'Contribui��es volunt�rias dos(as) profissionais da escola.'
TX_RESP_Q115 'Brinquedos'
TX_RESP_Q116 'Brinquedos'
TX_RESP_Q117 'Brinquedos'
TX_RESP_Q118 'Recursos pedag�gicos'
TX_RESP_Q119 'Recursos pedag�gicos'
TX_RESP_Q120 'Recursos pedag�gicos'
TX_RESP_Q121 'Materiais de higiene pessoal'
TX_RESP_Q122 'Materiais de higiene pessoal'
TX_RESP_Q123 'Materiais de higiene pessoal'
TX_RESP_Q124 'A escola oferece merenda aos(�s) estudantes?'
TX_RESP_Q125 'Para alunos(as) que permanecem menos de 4 horas na escola:'
TX_RESP_Q126 'Para alunos(as) que permanecem entre 4 e 7 horas na escola:'
TX_RESP_Q127 'Para alunos(as) que permanecem mais de 7 horas na escola:'
TX_RESP_Q128 'A quantidade de alimentos � suficiente para todos(as).'
TX_RESP_Q129 'Os alimentos s�o de boa qualidade.'
TX_RESP_Q130 'H�  dietas especificas para alunos com restri��es alimentares.'
TX_RESP_Q131 'A cozinha atende as necessidades do preparo da merenda.'
TX_RESP_Q132 'O local de alimenta��o � adequado.'
TX_RESP_Q133 'O acesso ao local de alimenta��o � livre para pessoas com mobilidade reduzida.'
TX_RESP_Q134 'H� pias para higieniza��o das m�os pr�ximas ao local de alimenta��o.'
TX_RESP_Q135 'A merenda escolar � preparada na pr�pria institui��o?'
TX_RESP_Q136 'A escola possui Projeto Pol�tico-Pedag�gico?'
TX_RESP_Q137 'Seu conte�do � discutido em reuni�es?'
TX_RESP_Q138 'Os(As) professores(as) participaram da elabora��o?'
TX_RESP_Q139 'Os pais participaram da elabora��o?'
TX_RESP_Q140 'Os(As) estudantes participaram da elabora��o?'
TX_RESP_Q141 'Estabelece metas de aprendizagem?'
TX_RESP_Q142 'Considera os resultados de avalia��es externas (Saeb, estaduais, municipais etc.)?'
TX_RESP_Q143 'H� metas de alcance de indicadores externos (Ideb, �ndices estaduais ou municipais)?'
TX_RESP_Q144 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'
TX_RESP_Q145 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q146 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q147 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q148 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q149 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q150 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q151 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q152 'Quais foram os crit�rios de sele��o para novas matr�culas neste ano e nesta escola:'
TX_RESP_Q153 'Descreva os outros crit�rios utilizados'
TX_RESP_Q154 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q155 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q156 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q157 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q158 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q159 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q160 'Quais crit�rios foram considerados para a forma��o das turmas:'
TX_RESP_Q161 'Descreva os outros crit�rios utilizados'
TX_RESP_Q162 'Prefer�ncia dos(as) professores(as).'
TX_RESP_Q163 'Tempo de servi�o.'
TX_RESP_Q164 'Cursos de forma��o continuada realizados.'
TX_RESP_Q165 'Professores(as) experientes nas turmas com facilidade de aprendizagem.'
TX_RESP_Q166 'Professores(as) experientes nas turmas com dificuldade de aprendizagem.'
TX_RESP_Q167 'Manuten��o do(a) professor(a) com a mesma turma.'
TX_RESP_Q168 'Revezamento dos(as) professores(as) entre s�ries/anos.'
TX_RESP_Q169 'Atribui��o pela gest�o da escola.'
TX_RESP_Q170 'Entrar em contato com os familiares do(a) estudante.'
TX_RESP_Q171 'Ir � resid�ncia do(a) estudante.'
TX_RESP_Q172 'Informar ao Conselho Tutelar.'
TX_RESP_Q173 'Oferta de refor�o escolar.'
TX_RESP_Q174 'Oferta de atendimento educacional especializado para estudantes com defici�ncia, transtornos do espectro autista ou com altas habilidades/superdota��o.'
TX_RESP_Q175 'Os(As) estudantes s�o estimulados(as) a apoiar uns(umas) aos(�s) outros(as).'
TX_RESP_Q176 'Revis�o dos procedimentos de avalia��o.'
TX_RESP_Q177 'Revis�o das pr�ticas pedag�gicas.'
TX_RESP_Q178 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q179 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q180 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q181 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q182 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q183 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q184 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q185 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q186 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q187 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q188 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q189 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q190 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q191 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q192 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q193 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q194 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q195 'Nesta escola, h� projetos com as seguintes tem�ticas:'
TX_RESP_Q196 'Prepara��o dos(as) estudantes para os testes de avalia��o externos.'
TX_RESP_Q197 'Inscri��o dos(as) estudantes em ol�mpiadas de conhecimento.'
TX_RESP_Q198 'Feira de ci�ncias.'
TX_RESP_Q199 'Feira de artes'
TX_RESP_Q200 'Campeonatos esportivos.'
TX_RESP_Q201 'Conte�do e compreens�o dos conceitos da(s) �rea(s) de ensino.'
TX_RESP_Q202 'Avalia��o da aprendizagem.'
TX_RESP_Q203 'Avalia��o em larga escala.'
TX_RESP_Q204 'Metodologias de ensino.'
TX_RESP_Q205 'Conhecimento do curr�culo.'
TX_RESP_Q206 'Gest�o da sala de aula.'
TX_RESP_Q207 'Novas tecnologias.'
TX_RESP_Q208 'Gest�o e administra��o escolar.'
TX_RESP_Q209 'Educa��o especial.'
TX_RESP_Q210 'Sugest�es de melhoria para o instrumento (inclus�o de temas, estrutura do question�rio etc.)'
.

VALUE LABELS
ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'
/ID_UF
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
53 'DF'
/ID_AREA
1 'Capital'
2 'Interior'
/IN_PUBLICA
0 'N�o p�blica'
1 'P�blica'
/ID_LOCALIZACAO
1 'Urbana'
2 'Rural'
/IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'
2 'N�o preenchido'
/TX_RESP_Q001
'A' 'SIM'
'B' 'N�O'
/TX_RESP_Q002
'A' 'SIM'
'B' 'N�O'
/TX_RESP_Q003
'A' 'SIM'
'B' 'N�O'
/TX_RESP_Q004
'A' 'SIM'
'B' 'N�O'
/TX_RESP_Q005
'A' 'SIM'
'B' 'N�O'
/TX_RESP_Q006
'A' 'P�blica.'
'B' 'Privada.'
/TX_RESP_Q007
'A' 'Masculino.'
'B' 'Feminino.'
/TX_RESP_Q009
'A' 'Branca'
'B' 'Preta'
'C' 'Parda'
'D' 'Amarela'
'E' 'Ind�gena'
'F' 'N�o quero declarar'
/TX_RESP_Q010
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q011
'1.0' '1.0'
'10.0' '10.0'
'11.0' '11.0'
'12.0' '12.0'
'13.0' '13.0'
'14.0' '14.0'
'15.0' '15.0'
'16.0' '16.0'
'17.0' '17.0'
'18.0' '18.0'
'19.0' '19.0'
'2.0' '2.0'
'20.0' '20.0'
'21.0' '21.0'
'22.0' '22.0'
'23.0' '23.0'
'24.0' '24.0'
'25.0' '25.0'
'26.0' '26.0'
'27.0' '27.0'
'28.0' '28.0'
'29.0' '29.0'
'3.0' '3.0'
'30.0' '30.0'
'4.0' '4.0'
'5.0' '5.0'
'6.0' '6.0'
'7.0' '7.0'
'8.0' '8.0'
'9.0' '9.0'
'B' 'Nunca trabalhei'
/TX_RESP_Q024
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q025
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q026
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q027
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q028
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q029
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q030
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q031
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q032
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q033
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q034
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q035
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q036
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q037
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q038
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q039
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q040
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q041
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q042
'A' 'A escola n�o oferece ensino fundamental ou m�dio'
'B' 'Os (As) alunos (as) da educa��o infantil utilizam a �rea externa em hor�rio diferenciado.'
'C' 'Os (As) alunos (as) da educa��o infantil utilizam a �rea externa'
/TX_RESP_Q043
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q044
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q045
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q046
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q047
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q048
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q049
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q050
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q051
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q052
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q053
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q054
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q055
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q056
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q057
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecess�ria'
/TX_RESP_Q058
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecess�ria'
/TX_RESP_Q059
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecess�ria'
/TX_RESP_Q060
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecess�ria'
/TX_RESP_Q061
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecess�ria'
/TX_RESP_Q062
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecess�ria'
/TX_RESP_Q063
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecess�ria'
/TX_RESP_Q064
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q065
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q066
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q067
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q068
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q069
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q070
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q071
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q072
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q073
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q074
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q076
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q077
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q078
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q079
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q080
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q081
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q082
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q083
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q084
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q085
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q086
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q087
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q088
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'
/TX_RESP_Q089
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'
/TX_RESP_Q090
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'
/TX_RESP_Q091
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'
/TX_RESP_Q092
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'
/TX_RESP_Q093
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'
/TX_RESP_Q094
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'
/TX_RESP_Q095
'1.0' '1.0'
'10.0' '10.0'
'11.0' '11.0'
'12.0' '12.0'
'2.0' '2.0'
'3.0' '3.0'
'4.0' '4.0'
'5.0' '5.0'
'6.0' '6.0'
'7.0' '7.0'
'8.0' '8.0'
'9.0' '9.0'
'B' 'N�o existe Conselho'
/TX_RESP_Q096
'1.0' '1.0'
'10.0' '10.0'
'11.0' '11.0'
'12.0' '12.0'
'2.0' '2.0'
'3.0' '3.0'
'4.0' '4.0'
'5.0' '5.0'
'6.0' '6.0'
'7.0' '7.0'
'8.0' '8.0'
'9.0' '9.0'
'B' 'N�o existe Conselho'
/TX_RESP_Q097
'1.0' '1.0'
'10.0' '10.0'
'11.0' '11.0'
'12.0' '12.0'
'2.0' '2.0'
'3.0' '3.0'
'4.0' '4.0'
'5.0' '5.0'
'6.0' '6.0'
'7.0' '7.0'
'8.0' '8.0'
'9.0' '9.0'
'B' 'N�o existe APM (ou Caixa escolar).'
/TX_RESP_Q098
'A' 'Sim, existe e est� ativo.'
'B' 'Sim, existe, mas est� inativo.'
'C' 'N�o existe Gr�mio Estudantil.'
/TX_RESP_Q099
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q100
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q101
'A' 'os servi�os de sa�de'
/TX_RESP_Q102
'B' 'os servi�os de assist�ncia social'
/TX_RESP_Q103
'C' 'a seguran�a p�blica'
/TX_RESP_Q104
'D' 'o conselho tutelar'
/TX_RESP_Q105
'E' 'institui��es de apoio ao p�blico alvo da educa��o especial'
/TX_RESP_Q106
'F' 'organiza��es n�o governamentais/institui��es privadas'
/TX_RESP_Q107
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q108
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q109
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q110
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q111
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q112
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q113
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q114
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q115
'A' 'Aquisi��o pela escola ou Secretaria de Educa��o.'
/TX_RESP_Q116
'B' 'Campanhas de doa��o.'
/TX_RESP_Q117
'C' 'Solicita��o �s fam�lias.'
/TX_RESP_Q118
'A' 'Aquisi��o pela escola ou Secretaria de Educa��o.'
/TX_RESP_Q119
'B' 'Campanhas de doa��o.'
/TX_RESP_Q120
'C' 'Solicita��o �s fam�lias.'
/TX_RESP_Q121
'A' 'Aquisi��o pela escola ou Secretaria de Educa��o.'
/TX_RESP_Q122
'B' 'Campanhas de doa��o.'
/TX_RESP_Q123
'C' 'Solicita��o �s fam�lias.'
/TX_RESP_Q124
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q125
'A' 'Uma vez.'
'B' 'Duas vezes.'
'C' 'Tr�s vezes ou mais.'
'D' 'N�o se aplica.'
/TX_RESP_Q126
'A' 'Uma vez.'
'B' 'Duas vezes.'
'C' 'Tr�s vezes ou mais.'
'D' 'N�o se aplica.'
/TX_RESP_Q127
'A' 'Uma vez.'
'B' 'Duas vezes.'
'C' 'Tr�s vezes ou mais.'
'D' 'N�o se aplica.'
/TX_RESP_Q128
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q129
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q130
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q131
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q132
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q133
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q134
'A' 'Discordo fortemente.'
'B' 'Discordo.'
'C' 'Concordo.'
'D' 'Concordo fortemente.'
/TX_RESP_Q135
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q136
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q137
'A' 'Sim'
'B' 'N�o'
'C' 'N�o se aplica.'
/TX_RESP_Q138
'A' 'Sim'
'B' 'N�o'
'C' 'N�o se aplica.'
/TX_RESP_Q139
'A' 'Sim'
'B' 'N�o'
'C' 'N�o se aplica.'
/TX_RESP_Q140
'A' 'Sim'
'B' 'N�o'
'C' 'N�o se aplica.'
/TX_RESP_Q141
'A' 'Sim'
'B' 'N�o'
'C' 'N�o se aplica.'
/TX_RESP_Q142
'A' 'Sim'
'B' 'N�o'
'C' 'N�o se aplica.'
/TX_RESP_Q143
'A' 'Sim'
'B' 'N�o'
'C' 'N�o se aplica.'
/TX_RESP_Q144
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q145
'A' 'Sorteio.'
/TX_RESP_Q146
'B' 'Local de moradia.'
/TX_RESP_Q147
'C' 'Prova de conhecimentos.'
/TX_RESP_Q148
'D' 'Ordem de chegada.'
/TX_RESP_Q149
'E' 'Caracter�sticas socioecon�micas.'
/TX_RESP_Q150
'F' 'Desempenho do(a) estudante no ano anterior.'
/TX_RESP_Q151
'G' 'Crit�rios definidos pela Secretaria de Educa��o.'
/TX_RESP_Q152
'H' 'Outros.'
/TX_RESP_Q154
'A' 'Afinidade entre os(as) estudantes.'
/TX_RESP_Q155
'B' 'Idade.'
/TX_RESP_Q156
'C' 'Equil�brio de meninos e meninas.'
/TX_RESP_Q157
'D' 'Manter as turmas existentes do ano anterior.'
/TX_RESP_Q158
'E' 'Crit�rios disciplinares.'
/TX_RESP_Q159
'F' 'Desempenho escolar.'
/TX_RESP_Q160
'G' 'Outros.'
/TX_RESP_Q162
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q163
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q164
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q165
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q166
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q167
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q168
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q169
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q170
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q171
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q172
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q173
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q174
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q175
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q176
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q177
'A' 'N�o foi realizada esta a��o.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q178
'A' 'Viol�ncia.'
/TX_RESP_Q179
'B' 'Bullying.'
/TX_RESP_Q180
'C' 'Machismo.'
/TX_RESP_Q181
'D' 'Homofobia.'
/TX_RESP_Q182
'E' 'Sexualidade.'
/TX_RESP_Q183
'F' 'Uso de drogas.'
/TX_RESP_Q184
'G' 'Direitos dos idosos.'
/TX_RESP_Q185
'H' 'Educa��o ambiental.'
/TX_RESP_Q186
'I' 'Ci�ncia e tecnologia.'
/TX_RESP_Q187
'J' 'Diversidade religiosa.'
/TX_RESP_Q188
'K' 'Desigualdades sociais.'
/TX_RESP_Q189
'L' 'Nutri��o e alimenta��o.'
/TX_RESP_Q190
'M' 'Educa��o para o tr�nsito.'
/TX_RESP_Q191
'N' 'Rela��es �tnico-raciais/racismo.'
/TX_RESP_Q192
'O' 'Direitos das pessoas com defici�ncia.'
/TX_RESP_Q193
'P' 'Direitos da crian�a e do adolescente.'
/TX_RESP_Q194
'Q' 'Mundo do trabalho (direitos, rela��es etc.).'
/TX_RESP_Q195
'R' 'Educa��o financeira e consumo sustent�vel.'
/TX_RESP_Q196
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q197
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q198
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q199
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q200
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q201
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q202
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q203
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q204
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q205
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q206
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q207
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q208
'A' 'Sim'
'B' 'N�o'
/TX_RESP_Q209
'A' 'Sim'
'B' 'N�o'
.