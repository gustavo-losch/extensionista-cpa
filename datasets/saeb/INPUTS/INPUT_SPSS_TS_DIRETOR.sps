/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_DIRETOR.sps                                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO DIRETOR        */
/*                     DO SAEB 2021                                                                                */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_DIRETOR.CSV no diretório C:\ do computador.	                        	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */                                                            
/* Algumas variáveis do questionário do Diretor envolvem regras de validação e                */
/* dependência. O entendimento dessas questões exigem consulta ao Dicionário de       */
/* Variáveis para conhecer as regras de cada questão.                                                  */
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
ID_SAEB 'Ano de aplicação do Saeb'
ID_REGIAO 'Código da Região'
ID_UF 'Código da Unidade da Federação'
ID_MUNICIPIO1 'Código do Município'
ID_AREA 'Área'
ID_ESCOLA1 'Código da Escola'
IN_PUBLICA 'Indica se a escola é pública ou não'
ID_LOCALIZACAO 'Localização'
IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'
TX_RESP_Q001 'Educação Infantil  -  Creche  (0 a 3 anos).'
TX_RESP_Q002 'Educação Infantil  -  Pré-escola  (4 e 5 anos) .'
TX_RESP_Q003 'Anos Iniciais do Ensino Fundamental.'
TX_RESP_Q004 'Anos Finais do Ensino Fundamental.'
TX_RESP_Q005 'Ensino Médio.'
TX_RESP_Q006 'Sua escola é:'
TX_RESP_Q007 'Qual é o seu sexo?'
TX_RESP_Q008 'Qual é a sua idade?'
TX_RESP_Q009 'Qual é a sua cor ou raça?'
TX_RESP_Q010 'Você possui necessidade especial, deficiência , transtorno do espectro autista ou superdotação?'
TX_RESP_Q011 'Quanto anos você trabalhou como professor(a) antes de se tornar diretor(a)?'
TX_RESP_Q012 'Há quantos anos você é diretor(a) desta escola?'
TX_RESP_Q013 'Em uma semana normal de trabalho, quantas HORAS, no total, você gasta com TODAS as atividades de direção da escola?'
TX_RESP_Q014 'Mobilizar a comunidade para auxiliar a escola.'
TX_RESP_Q015 'Coordenar a gestão curricular, dos métodos de aprendizagem e da avaliação.'
TX_RESP_Q016 'Conduzir o planejamento pedagógico.'
TX_RESP_Q017 'Coordenar as atividades administrativas (merenda, segurança, manutenção predial, etc.).'
TX_RESP_Q018 'Liderar as equipes de trabalho (reunir com professores, delegar tarefas para outros profissionais, etc.).'
TX_RESP_Q019 'Gerenciar os recursos financeiros (prestação de contas, etc).'
TX_RESP_Q020 'Atender aos pais ou responsáveis.'
TX_RESP_Q021 'Atender individualmente aos(às) professores(as).'
TX_RESP_Q022 'Atender aos(às) alunos(as).'
TX_RESP_Q023 'Outras atividades.'
TX_RESP_Q024 'Antes desta escola, você trabalhou como diretor em outra escola?'
TX_RESP_Q025 'Você possui outra atividade remunerada?'
TX_RESP_Q026 'Bebedouro ao alcance das crianças.'
TX_RESP_Q027 'Chuveiro para as crianças'
TX_RESP_Q028 'Área sombreada.'
TX_RESP_Q029 'Área externa coberta.'
TX_RESP_Q030 'Vegetação e jardim.'
TX_RESP_Q031 'Horta.'
TX_RESP_Q032 'Tanque de areia.'
TX_RESP_Q033 'Gira-gira.'
TX_RESP_Q034 'Gangorra.'
TX_RESP_Q035 'Escorregador.'
TX_RESP_Q036 'Casinha.'
TX_RESP_Q037 'Balanço.'
TX_RESP_Q038 'Brinquedo para escalar.'
TX_RESP_Q039 'Espaço destinado à amamentação.'
TX_RESP_Q040 'Condições para armazenamento de leite materno.'
TX_RESP_Q041 'Banheiro infantil.'
TX_RESP_Q042 'Caso sua escola ofereça Ensino Fundamental e/ou Médio, a área externa (pátio, área verde e parque) é utilizada em horários diferenciados pelos(as) alunos(as) da Educação Infantil?'
TX_RESP_Q043 'Os recursos financeiros foram suficientes.'
TX_RESP_Q044 'O quadro de professores estava completo.'
TX_RESP_Q045 'Havia quantidade suficiente de pessoal administrativo.'
TX_RESP_Q046 'Havia quantidade suficiente de pessoal para apoio pedagógico (coordenador, orientador etc.).'
TX_RESP_Q047 'Os recursos pedagógicos foram suficientes.'
TX_RESP_Q048 'Recebi apoio da Secretaria de Educação.'
TX_RESP_Q049 'Os(As) professores(as) foram assíduos(as).'
TX_RESP_Q050 'As substituições das ausências de professores(as) foram facilmente realizadas.'
TX_RESP_Q051 'Os(As) alunos(as) foram assíduos(as).'
TX_RESP_Q052 'A comunidade apoiou a gestão da escola.'
TX_RESP_Q053 'A comunidade executou trabalhos voluntários na escola.'
TX_RESP_Q054 'As famílias contribuíram com o trabalho pedagógico.'
TX_RESP_Q055 'Os alunos com deficiência, transtornos espectro autista ou com altas habilidades/superdotação receberam atendimento educacional especializado (AEE)'
TX_RESP_Q056 'No início do ano letivo, todos(as) os(as) alunos(as) receberam os livros didáticos.'
TX_RESP_Q057 'Professor(a) de Braille.'
TX_RESP_Q058 'Professor(a) bilíngue para surdos.'
TX_RESP_Q059 'Professor ou Instrutor de Libras'
TX_RESP_Q060 'Guia-interprete'
TX_RESP_Q061 'Professor(a) da sala de recursos multifuncionais.'
TX_RESP_Q062 'Professor(a) itinerante.'
TX_RESP_Q063 'Monitor(a) de apoio à educação especial.'
TX_RESP_Q064 'Falta de água.'
TX_RESP_Q065 'Falta de energia.'
TX_RESP_Q066 'Falta de merenda.'
TX_RESP_Q067 'Greve de professores.'
TX_RESP_Q068 'Episódios de violência.'
TX_RESP_Q069 'Problemas de infraestrutura predial.'
TX_RESP_Q070 'Paralisação do transporte.'
TX_RESP_Q071 'Eventos climáticos (inundação, desmoronamento etc.).'
TX_RESP_Q072 'Eventos comemorativos.'
TX_RESP_Q073 'Problemas de saúde pública.'
TX_RESP_Q074 'Outros.'
TX_RESP_Q075 'Por quantos dias letivos, no total, ocorreu a interrupção:'
TX_RESP_Q076 'Atentado à vida.'
TX_RESP_Q077 'Lesão corporal'
TX_RESP_Q078 'Roubo ou furto.'
TX_RESP_Q079 'Tráfico de drogas.'
TX_RESP_Q080 'Permanência de pessoas sob efeito de álcool.'
TX_RESP_Q081 'Permanência de pessoas sob efeito de drogas.'
TX_RESP_Q082 'Porte de arma (revólver, faca, canivete etc.).'
TX_RESP_Q083 'Assédio sexual'
TX_RESP_Q084 'Discriminação'
TX_RESP_Q085 'Bullying (ameaças ou ofensas verbais)'
TX_RESP_Q086 'Invasão do espaço escolar'
TX_RESP_Q087 'Depredação do patrimônio escolar (vandalismo)'
TX_RESP_Q088 'Tiroteio ou bala perdida'
TX_RESP_Q089 'Condições de segurança na entrada e saída da escola.'
TX_RESP_Q090 'Muros e/ou grades que isolam a escola do ambiente externo.'
TX_RESP_Q091 'Identificação externa que caracterize o prédio como uma instituição escolar.'
TX_RESP_Q092 'O acesso à entrada principal adequado às pessoas com deficiência física e visual (ex.: rampas e marcadores no chão).'
TX_RESP_Q093 'Condições de uso dos equipamentos da área externa de recreação (parque infantil, pátio, quadra poliesportiva etc.).'
TX_RESP_Q094 'O acesso dos(as) alunos(as) público-alvo da educação especial à área externa de recreação (parque infantil, pátio, quadra poliesportiva etc.).'
TX_RESP_Q095 'O Conselho Escolar é um colegiado geralmente constituído por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Na sua escola, quantas vezes se reuniu o Conselho Escolar?'
TX_RESP_Q096 'O Conselho de Classe é um órgão formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q097 'A APM   -   Associação de Pais e Mestres existe para apoiar as ações da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?'
TX_RESP_Q098 'Há Grêmio Estudantil?'
TX_RESP_Q099 'A escola segue orientação militar.'
TX_RESP_Q100 'A escola segue orientação religiosa.'
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
TX_RESP_Q111 'Organizações sem fins lucrativos.'
TX_RESP_Q112 'Pagamento de taxas pelos familiares dos(as) estudantes.'
TX_RESP_Q113 'Contribuições voluntárias dos familiares dos(as) estudantes.'
TX_RESP_Q114 'Contribuições voluntárias dos(as) profissionais da escola.'
TX_RESP_Q115 'Brinquedos'
TX_RESP_Q116 'Brinquedos'
TX_RESP_Q117 'Brinquedos'
TX_RESP_Q118 'Recursos pedagógicos'
TX_RESP_Q119 'Recursos pedagógicos'
TX_RESP_Q120 'Recursos pedagógicos'
TX_RESP_Q121 'Materiais de higiene pessoal'
TX_RESP_Q122 'Materiais de higiene pessoal'
TX_RESP_Q123 'Materiais de higiene pessoal'
TX_RESP_Q124 'A escola oferece merenda aos(às) estudantes?'
TX_RESP_Q125 'Para alunos(as) que permanecem menos de 4 horas na escola:'
TX_RESP_Q126 'Para alunos(as) que permanecem entre 4 e 7 horas na escola:'
TX_RESP_Q127 'Para alunos(as) que permanecem mais de 7 horas na escola:'
TX_RESP_Q128 'A quantidade de alimentos é suficiente para todos(as).'
TX_RESP_Q129 'Os alimentos são de boa qualidade.'
TX_RESP_Q130 'Há  dietas especificas para alunos com restrições alimentares.'
TX_RESP_Q131 'A cozinha atende as necessidades do preparo da merenda.'
TX_RESP_Q132 'O local de alimentação é adequado.'
TX_RESP_Q133 'O acesso ao local de alimentação é livre para pessoas com mobilidade reduzida.'
TX_RESP_Q134 'Há pias para higienização das mãos próximas ao local de alimentação.'
TX_RESP_Q135 'A merenda escolar é preparada na própria instituição?'
TX_RESP_Q136 'A escola possui Projeto Político-Pedagógico?'
TX_RESP_Q137 'Seu conteúdo é discutido em reuniões?'
TX_RESP_Q138 'Os(As) professores(as) participaram da elaboração?'
TX_RESP_Q139 'Os pais participaram da elaboração?'
TX_RESP_Q140 'Os(As) estudantes participaram da elaboração?'
TX_RESP_Q141 'Estabelece metas de aprendizagem?'
TX_RESP_Q142 'Considera os resultados de avaliações externas (Saeb, estaduais, municipais etc.)?'
TX_RESP_Q143 'Há metas de alcance de indicadores externos (Ideb, índices estaduais ou municipais)?'
TX_RESP_Q144 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'
TX_RESP_Q145 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q146 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q147 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q148 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q149 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q150 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q151 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q152 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola:'
TX_RESP_Q153 'Descreva os outros critérios utilizados'
TX_RESP_Q154 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q155 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q156 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q157 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q158 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q159 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q160 'Quais critérios foram considerados para a formação das turmas:'
TX_RESP_Q161 'Descreva os outros critérios utilizados'
TX_RESP_Q162 'Preferência dos(as) professores(as).'
TX_RESP_Q163 'Tempo de serviço.'
TX_RESP_Q164 'Cursos de formação continuada realizados.'
TX_RESP_Q165 'Professores(as) experientes nas turmas com facilidade de aprendizagem.'
TX_RESP_Q166 'Professores(as) experientes nas turmas com dificuldade de aprendizagem.'
TX_RESP_Q167 'Manutenção do(a) professor(a) com a mesma turma.'
TX_RESP_Q168 'Revezamento dos(as) professores(as) entre séries/anos.'
TX_RESP_Q169 'Atribuição pela gestão da escola.'
TX_RESP_Q170 'Entrar em contato com os familiares do(a) estudante.'
TX_RESP_Q171 'Ir à residência do(a) estudante.'
TX_RESP_Q172 'Informar ao Conselho Tutelar.'
TX_RESP_Q173 'Oferta de reforço escolar.'
TX_RESP_Q174 'Oferta de atendimento educacional especializado para estudantes com deficiência, transtornos do espectro autista ou com altas habilidades/superdotação.'
TX_RESP_Q175 'Os(As) estudantes são estimulados(as) a apoiar uns(umas) aos(às) outros(as).'
TX_RESP_Q176 'Revisão dos procedimentos de avaliação.'
TX_RESP_Q177 'Revisão das práticas pedagógicas.'
TX_RESP_Q178 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q179 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q180 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q181 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q182 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q183 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q184 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q185 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q186 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q187 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q188 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q189 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q190 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q191 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q192 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q193 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q194 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q195 'Nesta escola, há projetos com as seguintes temáticas:'
TX_RESP_Q196 'Preparação dos(as) estudantes para os testes de avaliação externos.'
TX_RESP_Q197 'Inscrição dos(as) estudantes em olímpiadas de conhecimento.'
TX_RESP_Q198 'Feira de ciências.'
TX_RESP_Q199 'Feira de artes'
TX_RESP_Q200 'Campeonatos esportivos.'
TX_RESP_Q201 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino.'
TX_RESP_Q202 'Avaliação da aprendizagem.'
TX_RESP_Q203 'Avaliação em larga escala.'
TX_RESP_Q204 'Metodologias de ensino.'
TX_RESP_Q205 'Conhecimento do currículo.'
TX_RESP_Q206 'Gestão da sala de aula.'
TX_RESP_Q207 'Novas tecnologias.'
TX_RESP_Q208 'Gestão e administração escolar.'
TX_RESP_Q209 'Educação especial.'
TX_RESP_Q210 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.)'
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
0 'Não pública'
1 'Pública'
/ID_LOCALIZACAO
1 'Urbana'
2 'Rural'
/IN_PREENCHIMENTO_QUESTIONARIO
0 'Não preenchido'
1 'Preenchido parcial ou totalmente'
2 'Não preenchido'
/TX_RESP_Q001
'A' 'SIM'
'B' 'NÃO'
/TX_RESP_Q002
'A' 'SIM'
'B' 'NÃO'
/TX_RESP_Q003
'A' 'SIM'
'B' 'NÃO'
/TX_RESP_Q004
'A' 'SIM'
'B' 'NÃO'
/TX_RESP_Q005
'A' 'SIM'
'B' 'NÃO'
/TX_RESP_Q006
'A' 'Pública.'
'B' 'Privada.'
/TX_RESP_Q007
'A' 'Masculino.'
'B' 'Feminino.'
/TX_RESP_Q009
'A' 'Branca'
'B' 'Preta'
'C' 'Parda'
'D' 'Amarela'
'E' 'Indígena'
'F' 'Não quero declarar'
/TX_RESP_Q010
'A' 'Sim'
'B' 'Não'
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
'B' 'Não'
/TX_RESP_Q025
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q026
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q027
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q028
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q029
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q030
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q031
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q032
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q033
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q034
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q035
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q036
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q037
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q038
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q039
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q040
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q041
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q042
'A' 'A escola não oferece ensino fundamental ou médio'
'B' 'Os (As) alunos (as) da educação infantil utilizam a área externa em horário diferenciado.'
'C' 'Os (As) alunos (as) da educação infantil utilizam a área externa'
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
'C' 'Desnecessária'
/TX_RESP_Q058
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecessária'
/TX_RESP_Q059
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecessária'
/TX_RESP_Q060
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecessária'
/TX_RESP_Q061
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecessária'
/TX_RESP_Q062
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecessária'
/TX_RESP_Q063
'A' 'Suficiente'
'B' 'Insuficiente'
'C' 'Desnecessária'
/TX_RESP_Q064
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q065
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q066
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q067
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q068
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q069
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q070
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q071
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q072
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q073
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q074
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q076
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q077
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q078
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q079
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q080
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q081
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q082
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q083
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q084
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q085
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q086
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q087
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
/TX_RESP_Q088
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'
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
'B' 'Não existe Conselho'
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
'B' 'Não existe Conselho'
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
'B' 'Não existe APM (ou Caixa escolar).'
/TX_RESP_Q098
'A' 'Sim, existe e está ativo.'
'B' 'Sim, existe, mas está inativo.'
'C' 'Não existe Grêmio Estudantil.'
/TX_RESP_Q099
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q100
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q101
'A' 'os serviços de saúde'
/TX_RESP_Q102
'B' 'os serviços de assistência social'
/TX_RESP_Q103
'C' 'a segurança pública'
/TX_RESP_Q104
'D' 'o conselho tutelar'
/TX_RESP_Q105
'E' 'instituições de apoio ao público alvo da educação especial'
/TX_RESP_Q106
'F' 'organizações não governamentais/instituições privadas'
/TX_RESP_Q107
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q108
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q109
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q110
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q111
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q112
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q113
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q114
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q115
'A' 'Aquisição pela escola ou Secretaria de Educação.'
/TX_RESP_Q116
'B' 'Campanhas de doação.'
/TX_RESP_Q117
'C' 'Solicitação às famílias.'
/TX_RESP_Q118
'A' 'Aquisição pela escola ou Secretaria de Educação.'
/TX_RESP_Q119
'B' 'Campanhas de doação.'
/TX_RESP_Q120
'C' 'Solicitação às famílias.'
/TX_RESP_Q121
'A' 'Aquisição pela escola ou Secretaria de Educação.'
/TX_RESP_Q122
'B' 'Campanhas de doação.'
/TX_RESP_Q123
'C' 'Solicitação às famílias.'
/TX_RESP_Q124
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q125
'A' 'Uma vez.'
'B' 'Duas vezes.'
'C' 'Três vezes ou mais.'
'D' 'Não se aplica.'
/TX_RESP_Q126
'A' 'Uma vez.'
'B' 'Duas vezes.'
'C' 'Três vezes ou mais.'
'D' 'Não se aplica.'
/TX_RESP_Q127
'A' 'Uma vez.'
'B' 'Duas vezes.'
'C' 'Três vezes ou mais.'
'D' 'Não se aplica.'
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
'B' 'Não'
/TX_RESP_Q136
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q137
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica.'
/TX_RESP_Q138
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica.'
/TX_RESP_Q139
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica.'
/TX_RESP_Q140
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica.'
/TX_RESP_Q141
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica.'
/TX_RESP_Q142
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica.'
/TX_RESP_Q143
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica.'
/TX_RESP_Q144
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q145
'A' 'Sorteio.'
/TX_RESP_Q146
'B' 'Local de moradia.'
/TX_RESP_Q147
'C' 'Prova de conhecimentos.'
/TX_RESP_Q148
'D' 'Ordem de chegada.'
/TX_RESP_Q149
'E' 'Características socioeconômicas.'
/TX_RESP_Q150
'F' 'Desempenho do(a) estudante no ano anterior.'
/TX_RESP_Q151
'G' 'Critérios definidos pela Secretaria de Educação.'
/TX_RESP_Q152
'H' 'Outros.'
/TX_RESP_Q154
'A' 'Afinidade entre os(as) estudantes.'
/TX_RESP_Q155
'B' 'Idade.'
/TX_RESP_Q156
'C' 'Equilíbrio de meninos e meninas.'
/TX_RESP_Q157
'D' 'Manter as turmas existentes do ano anterior.'
/TX_RESP_Q158
'E' 'Critérios disciplinares.'
/TX_RESP_Q159
'F' 'Desempenho escolar.'
/TX_RESP_Q160
'G' 'Outros.'
/TX_RESP_Q162
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q163
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q164
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q165
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q166
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q167
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q168
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q169
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q170
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q171
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q172
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q173
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q174
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q175
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q176
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q177
'A' 'Não foi realizada esta ação.'
'B' 'Nada efetiva.'
'C' 'Pouco efetiva.'
'D' 'Efetiva.'
'E' 'Muito efetiva.'
/TX_RESP_Q178
'A' 'Violência.'
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
'H' 'Educação ambiental.'
/TX_RESP_Q186
'I' 'Ciência e tecnologia.'
/TX_RESP_Q187
'J' 'Diversidade religiosa.'
/TX_RESP_Q188
'K' 'Desigualdades sociais.'
/TX_RESP_Q189
'L' 'Nutrição e alimentação.'
/TX_RESP_Q190
'M' 'Educação para o trânsito.'
/TX_RESP_Q191
'N' 'Relações étnico-raciais/racismo.'
/TX_RESP_Q192
'O' 'Direitos das pessoas com deficiência.'
/TX_RESP_Q193
'P' 'Direitos da criança e do adolescente.'
/TX_RESP_Q194
'Q' 'Mundo do trabalho (direitos, relações etc.).'
/TX_RESP_Q195
'R' 'Educação financeira e consumo sustentável.'
/TX_RESP_Q196
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q197
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q198
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q199
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q200
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q201
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q202
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q203
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q204
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q205
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q206
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q207
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q208
'A' 'Sim'
'B' 'Não'
/TX_RESP_Q209
'A' 'Sim'
'B' 'Não'
.