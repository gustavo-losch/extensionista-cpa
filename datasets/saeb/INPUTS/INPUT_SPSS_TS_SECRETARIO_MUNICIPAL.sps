/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_SECRETARIO_MUNICIPAL.sps                                        */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECREÁRIO   */
/*                     MUNICIPAL DE EDUCAÇÃO DO SAEB 2021                                     */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                	 */
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

VARIABLE LABELS ID_SAEB 'Ano de aplicação do Saeb'.                                                                                                        
VARIABLE LABELS CO_UF 'Código da Unidade da Federação'.
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

 VARIABLE LABELS CO_MUNICIPIO 'Código do Município'.

 VARIABLE LABELS DT_PREENCHIMENTO 'Data de preenchimento do questionário'.

 VARIABLE LABELS IN_CAPITAL 'Indicador se o municipio é uma capital ou não'.
 VALUE LABELS IN_CAPITAL
1 'Capital'
0 'Interior'.

 VARIABLE LABELS IN_PREENCHIMENTO 'Indicador de preenchimento válido do questionário'.
 VALUE LABELS IN_PREENCHIMENTO
0 ' Não preenchido'
1 'Preenchido parcial ou totalmente'.

 VARIABLE LABELS CO_TRATAMENTO 'Indicador se o municipio é uma capital ou não'.
 VALUE LABELS CO_TRATAMENTO 
0 'Sem tratamento'
1 'Tratamento de duplicidade de resposta'
2 'Imputação do  CO_MUNICIPIO.'.

 VARIABLE LABELS MG2Q01 'Sistema Municipal de Ensino? O município possui:'.
 VALUE LABELS MG2Q01
 'A' 'Sim'
 'B' 'Não'.

 VARIABLE LABELS MG2Q02 'Plano Municipal de Educação? O município possui:'.
 VALUE LABELS MG2Q02
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q03 'Fórum Permanente de Educação? O município possui:'.
 VALUE LABELS MG2Q03
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q04 'Conselho Municipal de Educação? O município possui:'.
 VALUE LABELS MG2Q04
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q05 'Autonomia em relação ao Conselho Estadual de Educação? O município possui:'.
 VALUE LABELS MG2Q05
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q06 
'Quantos servidores/funcionários estão lotados na sede da Secretaria de Educação? Para responder essa questão, considere APENAS os servidores que estão lotados na sede da secretaria, desconsiderando aqueles que trabalham em escolas ou outros locais.'.
 VALUE LABELS MG2Q06
 'A' 'Servidores.'.
 VARIABLE LABELS MG2Q07 'A Secretaria de Educação é gestora dos recursos da educação? '.
 VALUE LABELS MG2Q07
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q08 'Os serviços de saúde A Secretaria de Educação desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q08
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q09 'Os serviços de assistência social A Secretaria de Educação desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q09
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q10 'A segurança pública A Secretaria de Educação desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q10
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q11 'O conselho tutelar A Secretaria de Educação desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q11
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q12 'Instituições de apoio ao público alvo da educação especial A Secretaria de Educação desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q12
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q13 'Outros A Secretaria de Educação desenvolve trabalhos em conjunto com:'.
 VALUE LABELS MG2Q13
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q14 'Indique com que outro órgão você está desenvolvendo trabalho conjunto Regra de dependência: se Q032="Sim", abre Q033'.

 VARIABLE LABELS MG2Q15 'Livre indicação pelo executivo municipal Quais critérios são utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q15
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q16 'Titulação acadêmica Quais critérios são utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q16
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q17 'Curso de formação para gestores escolares Quais critérios são utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q17
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q18 'Tempo de serviço Quais critérios são utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q18
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q19 'Experiência em gestão Quais critérios são utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q19
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q20 'Consulta pública/eleição com participação da comunidade Quais critérios são utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q20
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q21 'Outros Quais critérios são utilizados para a escolha dos diretores sas escolas? '.
 VALUE LABELS MG2Q21
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q22 'Indique quais os outros critérios para a escolha de diretor Regra de dependência: se Q040=1, abre Q041.'.

 VARIABLE LABELS MG2Q23 'Os critérios utilizados para a escolha dos diretores das escolas estão definidos em legislação municipal? '.
 VALUE LABELS MG2Q23
 'A' 'Sim, a legislação contempla todos os critérios utilizados.'
 'B' 'Sim, a legislação contempla uma parte dos critérios utilizados.'
 'C' 'Não, não há legislação municipal para escolha dos diretores.'.
 VARIABLE LABELS MG2Q24 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q24
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q25 'Avaliação da aprendizagem: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q25
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q26 'Avaliação em larga escala: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q26
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q27 'Metodologias de ensino: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q27
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q28 'Base Nacional Comum Curricular - BNCC: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q28
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q29 'Gestão da sala de aula: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q29
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q30 'Educação especial: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q30
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q31 'Novas tecnologias: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q31
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q32 'Gestão e administração escolar: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q32
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q33 'Outros: Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede (atualização, treninamento, capacitação etc.).'.
 VALUE LABELS MG2Q33
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q34 'Descreva outros cursos de formação continuada Regra de dependência: se Q052=1, abre Q053'.

 VARIABLE LABELS MG2Q35_A 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_A
 'A' 'Construção de escolas.'.
 VARIABLE LABELS MG2Q35_B 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_B
 'B' 'Reforma de escolas (melhoria e/ou adequação do espaço físico etc.).'.
 VARIABLE LABELS MG2Q35_C 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_C
 'C' 'Aquisição de mobiliário para as escolas (carteiras, armários etc.).'.
 VARIABLE LABELS MG2Q35_D 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_D
 'D' 'Aquisição de material de higiene, limpeza e equipamento de proteção individual (álcool, sabonete, máscara etc).'.
 VARIABLE LABELS MG2Q35_E 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_E
 'E' 'Aquisição de material pedagógico (livros, software, material audiovisual etc.).'.
 VARIABLE LABELS MG2Q35_F 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_F
 'F' 'Aquisição de equipamentos para alunos e ou professores (computador, tablet, celular, chip para internet etc.).'.
 VARIABLE LABELS MG2Q35_G 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_G
 'G' 'Produção de material didático audiovisual ou impresso para aulas remotas.'.
 VARIABLE LABELS MG2Q35_H 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_H
 'H' 'Contratação de profissionais para a educação.'.
 VARIABLE LABELS MG2Q35_I 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_I
 'I' 'Distribuição da alimentação para os estudantes.'.
 VARIABLE LABELS MG2Q35_J 'Neste ano, dentre as despesas listadas abaixo, indique três consideradas prioritárias pelo município: Marque até três despesas.'.
 VALUE LABELS MG2Q35_J
 'J' 'Outra prioridade.'.
 VARIABLE LABELS MG2Q36 'Descreva outra prioridade do município Regra de dependência: se Q063=1, abre Q064'.

 VARIABLE LABELS MG2Q37 'Garantia da liberdade religiosa. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'.
 VALUE LABELS MG2Q37
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q38 'Inclusão das pessoas com deficiência. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'.
 VALUE LABELS MG2Q38
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q39 'Combate ao abuso e à violência sexual. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'.
 VALUE LABELS MG2Q39
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q40 'Promoção da cultura da paz e da não violência. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'.
 VALUE LABELS MG2Q40
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q41 'Combate aos preconceitos (racismo, homofobia etc.). Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'.
 VALUE LABELS MG2Q41
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG2Q42 'Incentivo às discussões sobre as diferenças de gênero. Neste ano, dentre as ações listadas a seguir, indique quais foram desenvolvidas, ou não, pela secretaria junto às escolas: Marque "Sim" ou "Não" em cada linha.'.
 VALUE LABELS MG2Q42
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q01 'A Secretaria possui instituições de Educação Infantil sob sua responsabilidade direta ou indireta? '.
 VALUE LABELS MG3Q01
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q02 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE à Educação infantil? Preencha com zero caso não haja nenhum.Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q02
 'A' 'Preencha com zero caso não haja nenhum.'.

 VARIABLE LABELS MG3Q03 'Cálculo da demanda por vagas? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q03
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q04 'Supervisão escolar? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q04
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q05 'Programa de formação de professores? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q05
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q06 'Busca ativa de crianças para a pré-escola? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q06
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q07 'Comitê Intersetorial de Políticas Públicas para a Primeira Infância? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q07
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q08 'Transporte escolar? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q08
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q09 'O município possui currículo municipal para a educação infantil? Para a EDUCAÇÃO INFANTIL, o Município possui:Regra de dependência: se Q071="Sim", abre itens Q072 a Q079'.
 VALUE LABELS MG3Q09
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q10 'O currículo municipal da educação infantil está atualizado conforme a BNCC - Base Nacional Comum Curricular? Regra de dependência: se Q071="Sim" e Q079="Sim" abre Q080'.
 VALUE LABELS MG3Q10
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q11 'Creche - Crianças de 0 a 3 anos? O município firma convênios e/ou parcerias com instituições para o atendimento de:Regra de dependência: se Q071="Sim", abre itens Q081 a Q082'.
 VALUE LABELS MG3Q11
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q12 'Pré-escola - Crianças 4 a 5 anos? O município firma convênios e/ou parcerias com instituições para o atendimento de:Regra de dependência: se Q071="Sim", abre itens Q081 a Q082'.
 VALUE LABELS MG3Q12
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q13 'As instituições conveniadas e/ou que celebram parcerias com o município são selecionadas através de chamada pública? Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'.
 VALUE LABELS MG3Q13
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q14 'Existem normas para o funcionamento das conveniadas e/ou que celebram parcerias com o município? Regra de dependência: se Q071="Sim" e Q081="Sim" ou se Q071="Sim" e Q082="Sim", abre itens Q083 a Q091'.
 VALUE LABELS MG3Q14
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG3Q15 'Propriedade das instalações. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo:'.
 VALUE LABELS MG3Q15
 'A' 'Município'
 'B' 'Instituições'.
 VARIABLE LABELS MG3Q16 'Manutenção das instalações. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: '.
 VALUE LABELS MG3Q16
 'A' 'Município'
 'B' 'Instituições'.
 VARIABLE LABELS MG3Q17 'Pagamento dos professores. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: '.
 VALUE LABELS MG3Q17
 'A' 'Município'
 'B' 'Instituições'.
 VARIABLE LABELS MG3Q18 'Capacitação dos professores.'.
 VALUE LABELS MG3Q18
 'A' 'Município'
 'B' 'Instituições'.
 VARIABLE LABELS MG3Q19 'Fornecimento de recursos pedagógicos. Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: '.
 VALUE LABELS MG3Q19
 'A' 'Município'
 'B' 'Instituições'.
 VARIABLE LABELS MG3Q20 
'Oferta de merenda Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo:'.
 VALUE LABELS MG3Q20
 'A' 'Município'
 'B' 'Instituições'.
 VARIABLE LABELS MG3Q21 'Transporte escolar Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo:'.
 VALUE LABELS MG3Q21
 'A' 'Município'
 'B' 'Instituições'.
 VARIABLE LABELS MG4Q01 
'A Secretaria possui escolas de Ensino Fundamental? Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha '.
 VALUE LABELS MG4Q01
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q02 
'O Ensino Fundamental é oferecido em ciclos? Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha '.
 VALUE LABELS MG4Q02
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q03 
'As escolas do município adotam um sistema apostilado? Com relação à maior parte das instituições conveniadas e/ou que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Marque apenas uma alternativa por linha '.
 VALUE LABELS MG4Q03
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q04 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE ao Ensino Fundamental? Preencha com zero caso não haja nenhum.'.
 VALUE LABELS MG4Q04
 'A' 'Preencha com zero caso não haja nenhum.'.
 VARIABLE LABELS MG4Q05 'Cálculo da demanda por vagas? Com relação ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q05
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q06 'Supervisão escolar? Com relação ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q06
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q07 'Programa de formação de professores? Com relação ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q07
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q08 'Busca ativa de crianças e jovens? Com relação ao Ensino Fundamental, a Secretaria possui:'.
 VALUE LABELS MG4Q08
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q09 'O município possui currículo municipal para o Ensino Fundamental? Com relação ao Ensino Fundamental, a Secretaria possui:Regra de dependência: se Q100="Sim", abre Q101'.
 VALUE LABELS MG4Q09
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG4Q10 'O currículo municipal do ensino fundamental  está atualizado conforme a BNCC - Base Nacional Comum Curricular? '.
 VALUE LABELS MG4Q10
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG5Q01 'A Secretaria utiliza os resultados do IDEB? Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q01
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG5Q02_A 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_A
 'A' 'Subsídios para a formação continuada de professores'.
 VARIABLE LABELS MG5Q02_B 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_B
 'B' 'Subsídios para a avaliação de programas ou projetos da Secretaria de Educação'.
 VARIABLE LABELS MG5Q02_C 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_C
 'C' 'Produção de materiais didáticos e pedagógicos'.
 VARIABLE LABELS MG5Q02_D 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_D
 'D' 'Recompensa para escolas com melhores resultados'.
 VARIABLE LABELS MG5Q02_E 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_E
 'E' 'Auxílio para unidades escolares com resultados inferiores'.
 VARIABLE LABELS MG5Q02_F 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_F
 'F' 'Subsídios para pagamento de bonificação para professores'.
 VARIABLE LABELS MG5Q02_G 'Dentre as possíveis formas de utilização do IDEB, indique quais são utilizadas no município: Regra de dependência: se Q102="Sim", abre Q103 a Q109'.
 VALUE LABELS MG5Q02_G
 'G' 'Criação de critérios para remanejamento de diretores'.
 VARIABLE LABELS MG5Q03 'A equipe da secretaria, ou instituição contratada, elabora provas para serem aplicadas aos estudantes da sua rede? Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q03
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG5Q04_A 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q04_A
 'A' 'Pré-escola'.
 VARIABLE LABELS MG5Q04_B 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q04_B
 'B' 'Ensino Fundamental - Anos iniciais'.
 VARIABLE LABELS MG5Q04_C 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q04_C
 'C' 'Ensino Fundamental - Anos finais'.
 VARIABLE LABELS MG5Q05_A 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_A
 'A' 'Mensal'.
 VARIABLE LABELS MG5Q05_B 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_B
 'B' 'Bimestral'.
 VARIABLE LABELS MG5Q05_C 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_C
 'C' 'Trimestral'.
 VARIABLE LABELS MG5Q05_D 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_D
 'D' 'Semestral'.
 VARIABLE LABELS MG5Q05_E 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_E
 'E' 'Anual'.
 VARIABLE LABELS MG5Q05_F 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_F
 'F' 'Bianual'.
 VARIABLE LABELS MG5Q05_G 'Indique a periodicidade da aplicação das provas elaboradas pela secretaria ou instituição contratada: Regra de dependência: se Q110="Sim", abre Q111 a Q120'.
 VALUE LABELS MG5Q05_G
 'G' 'Outra'.
 VARIABLE LABELS MG5Q06 'A Secretaria realiza monitoramento ou avaliação da sua rede de ensino? Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q06
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG5Q07_A 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_A
 'A' 'Auto-avaliação das escolas'.
 VARIABLE LABELS MG5Q07_B 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_B
 'B' 'Avaliação do Projeto Pedagógico das escolas'.
 VARIABLE LABELS MG5Q07_C 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_C
 'C' 'Desempenho dos professores'.
 VARIABLE LABELS MG5Q07_D 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_D
 'D' 'Desempenho dos diretores das escolas'.
 VARIABLE LABELS MG5Q07_E 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_E
 'E' 'Infraestrutura das escolas'.
 VARIABLE LABELS MG5Q07_F 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_F
 'F' 'Transporte escolar'.
 VARIABLE LABELS MG5Q07_G 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_G
 'G' 'Merenda escolar'.
 VARIABLE LABELS MG5Q07_H 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_H
 'H' 'Organização administrativa das escolas'.
 VARIABLE LABELS MG5Q07_I 
'Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Quais das ações a seguir são realizadas para monitorar ou avaliar a sua rede: Selecione todas as que se aplicarem.Regra de dependência: se Q121="Sim", abre Q122 a Q130'.
 VALUE LABELS MG5Q07_I
 'I' 'Outras'.

 VARIABLE LABELS MG5Q08 'Descreva outras ações. Regra de dependência: se Q100="Sim" e Q130="Outras", abre Q131'.

 VARIABLE LABELS MG6Q01 'Auxiliares e assistentes da Educação Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q01
 'A' 'Sim'
 'B' 'Não'
 'C' 'Não se aplica'.
 VARIABLE LABELS MG6Q02 'Professores(as) da Educação Infantil: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q02
 'A' 'Sim'
 'B' 'Não'
 'C' 'Não se aplica'.
 VARIABLE LABELS MG6Q03 'Professores(as) do Ensino Fundamental: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q03
 'A' 'Sim'
 'B' 'Não'
 'C' 'Não se aplica'.
 VARIABLE LABELS MG6Q04 'Profissionais não docentes: Dentre os profissionais listados abaixo, indique quais possuem plano de carreira.'.
 VALUE LABELS MG6Q04
 'A' 'Sim'
 'B' 'Não'
 'C' 'Não se aplica'.
 VARIABLE LABELS MG6Q05_A 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_A
 'A' 'Até 20 horas semanais.'.
 VARIABLE LABELS MG6Q05_B 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_B
 'B' 'De 21 a 30 horas semanais.'.
 VARIABLE LABELS MG6Q05_C 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_C
 'C' 'De 31 a 40 horas semanais.'.
 VARIABLE LABELS MG6Q05_D 'Para os professores, quais as jornadas de trabalho semanal? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q05_D
 'D' 'Mais de 40 horas semanais.'.
 VARIABLE LABELS MG6Q06 'Para os professores, está previsto o limite máximo de 2/3 da jornada de trabalho semanal em sala de aula? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q06
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG6Q07 'Para os professores com jornada de trabalho de 40 horas semanais o VENCIMENTO INICIAL é igual ou superior a R$ 2.884,24? '.
 VALUE LABELS MG6Q07
 'A' 'Sim'
 'B' 'Não'.
 VARIABLE LABELS MG6Q08_A 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_A
 'A' 'Tempo de efetivo exercício no cargo.'.
 VARIABLE LABELS MG6Q08_B 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_B
 'B' 'Qualificação.'.
 VARIABLE LABELS MG6Q08_C 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_C
 'C' 'Titulação.'.
 VARIABLE LABELS MG6Q08_D 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_D
 'D' 'Assiduidade.'.
 VARIABLE LABELS MG6Q08_E 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_E
 'E' 'Avaliação de desempenho.'.
 VARIABLE LABELS MG6Q08_F 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_F
 'F' 'Prova de conhecimentos para professores.'.
 VARIABLE LABELS MG6Q08_G 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_G
 'G' 'Desempenho dos alunos em avaliações externas.'.
 VARIABLE LABELS MG6Q08_H 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Selecione todas as que se aplicarem'.
 VALUE LABELS MG6Q08_H
 'H' 'Outros.'.
 VARIABLE LABELS MG6Q09 'Descreva outras ações Regra de dependência: se Q146="Outros", abre Q147'.

 VARIABLE LABELS MG6Q10 'A remuneração dos(as) professores(as) de Educação Infantil, comparada com a dos(as) professores(as) com o mesmo nível de formação que atuam no Ensino Fundamental: '.
 VALUE LABELS MG6Q10
 'A' 'É inferior à dos(as) professores(as) de Ensino Fundamental.'
 'B' 'É equivalente à dos(as) professores(as) de Ensino Fundamental.'
 'C' 'É superior à dos(as) professores(as) de Ensino Fundamental.'
 'D' 'Não existe este profissional na rede.'.
 VARIABLE LABELS MG7Q01 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.) '.
?