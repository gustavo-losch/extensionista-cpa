/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ESCOLA                                                   */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DOS RESULTADOS DAS ESCOLAS DO SAEB 2021         */
/*                                                                                     */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ESCOLA.CSV no diretório C:\ do computador.	                                   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 		                                                                               */
/***************************************************************************************/;

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
0='Privada'
1='Pública';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

run;

DATA WORK.TS_ESCOLA;
INFILE 'C:/TS_ESCOLA.csv' /* <--- endereço do arquivo*/ 
        LRECL=621
		firstobs=2
        DLM=';'
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
        PC_FORMACAO_DOCENTE_INICIAL : 5.
        PC_FORMACAO_DOCENTE_FINAL : 5.
        PC_FORMACAO_DOCENTE_MEDIO : 5.
        NIVEL_SOCIO_ECONOMICO : $CHAR10.
        NU_MATRICULADOS_CENSO_5EF : 3.
        NU_PRESENTES_5EF : 3.
        TAXA_PARTICIPACAO_5EF : ?? COMMA6.
        NIVEL_0_LP5      : ?? COMMA6.
        NIVEL_1_LP5      : ?? COMMA6.
        NIVEL_2_LP5      : ?? COMMA6.
        NIVEL_3_LP5      : ?? COMMA6.
        NIVEL_4_LP5      : ?? COMMA6.
        NIVEL_5_LP5      : ?? COMMA6.
        NIVEL_6_LP5      : ?? COMMA6.
        NIVEL_7_LP5      : ?? COMMA6.
        NIVEL_8_LP5      : ?? COMMA6.
        NIVEL_9_LP5      : ?? COMMA6.
        NIVEL_0_MT5      : ?? COMMA6.
        NIVEL_1_MT5      : ?? COMMA6.
        NIVEL_2_MT5      : ?? COMMA6.
        NIVEL_3_MT5      : ?? COMMA6.
        NIVEL_4_MT5      : ?? COMMA6.
        NIVEL_5_MT5      : ?? COMMA6.
        NIVEL_6_MT5      : ?? COMMA6.
        NIVEL_7_MT5      : ?? COMMA6.
        NIVEL_8_MT5      : ?? COMMA6.
        NIVEL_9_MT5      : ?? COMMA6.
        NIVEL_10_MT5     : ?? COMMA6.
        NU_MATRICULADOS_CENSO_9EF : 3.
        NU_PRESENTES_9EF : ?? 3.
        TAXA_PARTICIPACAO_9EF : ?? COMMA6.
        NIVEL_0_LP9      : ?? COMMA6.
        NIVEL_1_LP9      : ?? COMMA6.
        NIVEL_2_LP9      : ?? COMMA6.
        NIVEL_3_LP9      : ?? COMMA6.
        NIVEL_4_LP9      : ?? COMMA6.
        NIVEL_5_LP9      : ?? COMMA6.
        NIVEL_6_LP9      : ?? COMMA6.
        NIVEL_7_LP9      : ?? COMMA6.
        NIVEL_8_LP9      : ?? COMMA6.
        NIVEL_0_MT9      : ?? COMMA6.
        NIVEL_1_MT9      : ?? COMMA6.
        NIVEL_2_MT9      : ?? COMMA6.
        NIVEL_3_MT9      : ?? COMMA6.
        NIVEL_4_MT9      : ?? COMMA6.
        NIVEL_5_MT9      : ?? COMMA6.
        NIVEL_6_MT9      : ?? COMMA6.
        NIVEL_7_MT9      : ?? COMMA6.
        NIVEL_8_MT9      : ?? COMMA6.
        NIVEL_9_MT9      : ?? COMMA6.
        NU_MATRICULADOS_CENSO_EMT : 4.
        NU_PRESENTES_EMT : 4.
        TAXA_PARTICIPACAO_EMT : ?? COMMA6.
        NIVEL_0_LPEMT      : ?? COMMA6.
        NIVEL_1_LPEMT      : ?? COMMA6.
        NIVEL_2_LPEMT      : ?? COMMA6.
        NIVEL_3_LPEMT      : ?? COMMA6.
        NIVEL_4_LPEMT      : ?? COMMA6.
        NIVEL_5_LPEMT      : ?? COMMA6.
        NIVEL_6_LPEMT      : ?? COMMA6.
        NIVEL_7_LPEMT      : ?? COMMA6.
        NIVEL_8_LPEMT      : ?? COMMA6.
        NIVEL_0_MTEMT      : ?? COMMA6.
        NIVEL_1_MTEMT      : ?? COMMA6.
        NIVEL_2_MTEMT      : ?? COMMA6.
        NIVEL_3_MTEMT      : ?? COMMA6.
        NIVEL_4_MTEMT      : ?? COMMA6.
        NIVEL_5_MTEMT      : ?? COMMA6.
        NIVEL_6_MTEMT      : ?? COMMA6.
        NIVEL_7_MTEMT      : ?? COMMA6.
        NIVEL_8_MTEMT      : ?? COMMA6.
        NIVEL_9_MTEMT      : ?? COMMA6.
        NIVEL_10_MTEMT     : ?? COMMA6.
        NU_MATRICULADOS_CENSO_EMI : 4.
        NU_PRESENTES_EMI : 4.
        TAXA_PARTICIPACAO_EMI : ?? COMMA6.
        NIVEL_0_LPEMI      : ?? COMMA6.
        NIVEL_1_LPEMI      : ?? COMMA6.
        NIVEL_2_LPEMI      : ?? COMMA6.
        NIVEL_3_LPEMI      : ?? COMMA6.
        NIVEL_4_LPEMI      : ?? COMMA6.
        NIVEL_5_LPEMI      : ?? COMMA6.
        NIVEL_6_LPEMI      : ?? COMMA6.
        NIVEL_7_LPEMI      : ?? COMMA6.
        NIVEL_8_LPEMI      : ?? COMMA6.
        NIVEL_0_MTEMI      : ?? COMMA6.
        NIVEL_1_MTEMI      : ?? COMMA6.
        NIVEL_2_MTEMI      : ?? COMMA6.
        NIVEL_3_MTEMI      : ?? COMMA6.
        NIVEL_4_MTEMI      : ?? COMMA6.
        NIVEL_5_MTEMI      : ?? COMMA6.
        NIVEL_6_MTEMI      : ?? COMMA6.
        NIVEL_7_MTEMI      : ?? COMMA6.
        NIVEL_8_MTEMI      : ?? COMMA6.
        NIVEL_9_MTEMI      : ?? COMMA6.
        NIVEL_10_MTEMI     : ?? COMMA6.
        NU_MATRICULADOS_CENSO_EM : 4.
        NU_PRESENTES_EM : 4.
        TAXA_PARTICIPACAO_EM : ?? COMMA6.
        NIVEL_0_LPEM      : ?? COMMA6.
        NIVEL_1_LPEM      : ?? COMMA6.
        NIVEL_2_LPEM      : ?? COMMA6.
        NIVEL_3_LPEM      : ?? COMMA6.
        NIVEL_4_LPEM      : ?? COMMA6.
        NIVEL_5_LPEM      : ?? COMMA6.
        NIVEL_6_LPEM      : ?? COMMA6.
        NIVEL_7_LPEM      : ?? COMMA6.
        NIVEL_8_LPEM      : ?? COMMA6.
        NIVEL_0_MTEM      : ?? COMMA6.
        NIVEL_1_MTEM      : ?? COMMA6.
        NIVEL_2_MTEM      : ?? COMMA6.
        NIVEL_3_MTEM      : ?? COMMA6.
        NIVEL_4_MTEM      : ?? COMMA6.
        NIVEL_5_MTEM      : ?? COMMA6.
        NIVEL_6_MTEM      : ?? COMMA6.
        NIVEL_7_MTEM      : ?? COMMA6.
        NIVEL_8_MTEM      : ?? COMMA6.
        NIVEL_9_MTEM      : ?? COMMA6.
        NIVEL_10_MTEM     : ?? COMMA6.
        MEDIA_5EF_LP     : ?? COMMA6.
        MEDIA_5EF_MT     : ?? COMMA6.
        MEDIA_9EF_LP     : ?? COMMA6.
        MEDIA_9EF_MT     : ?? COMMA6.
        MEDIA_EMT_LP     : ?? COMMA6.
        MEDIA_EMT_MT     : ?? COMMA6.
        MEDIA_EMI_LP     : ?? COMMA6.
        MEDIA_EMI_MT     : ?? COMMA6.
		MEDIA_EM_LP      : ?? COMMA6.
        MEDIA_EM_MT      : ?? COMMA6.;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB TAXA_PARTICIPACAO_5EF FORMAT= 5.3;
ATTRIB TAXA_PARTICIPACAO_9EF FORMAT= 5.3;
ATTRIB TAXA_PARTICIPACAO_EMT FORMAT= 5.3;
ATTRIB TAXA_PARTICIPACAO_EMI FORMAT= 5.3;
ATTRIB TAXA_PARTICIPACAO_EM FORMAT= 5.3;

LABEL  

ID_SAEB = 'Ano do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Código do Município'                                                                                                                   
ID_AREA = 'Área'
ID_ESCOLA= 'Código da Escola'
IN_PUBLICA= 'Dependência Administrativa'
ID_LOCALIZACAO= 'Localização'
PC_FORMACAO_DOCENTE_INICIAL = 'Indicador de Adequação da Formação Docente (Informação referente ao Grupo 1, para os Anos Iniciais do EF)'
PC_FORMACAO_DOCENTE_FINAL = 'Indicador de Adequação da Formação Docente (Informação referente ao Grupo 1, para os Anos Finais do EF)'
PC_FORMACAO_DOCENTE_MEDIO = 'Indicador de Adequação da Formação Docente (Informação referente ao Grupo 1, para o Ensino Médio)'
NIVEL_SOCIO_ECONOMICO = 'Nível Socioecônomico da Escola'
NU_MATRICULADOS_CENSO_5EF = 'Número de alunos matriculados no 5º ano EF no Censo 2021'
NU_PRESENTES_5EF = 'Número de alunos presentes na aplicação'
TAXA_PARTICIPACAO_5EF = 'Razão entre o total de alunos presentes do Saeb (NU_PRESENTES_5ANO) e o total de alunos cadastrados no Censo Escolar que são público alvo do Saeb (NU_MATRICULADOS_CENSO_5ANO)'
Nivel_0_LP5	= '(-00;125)'
Nivel_1_LP5	= '[125;150)'
nivel_2_LP5 = '[150;175)'
nivel_3_LP5 = '[175;200)'
nivel_4_LP5 = '[200;225)'
nivel_5_LP5 = '[225;250)'
nivel_6_LP5 = '[250;275)'
nivel_7_LP5 = '[275;300)'
nivel_8_LP5 = '[300;325)'
nivel_9_LP5 = '[325;+00)'
nivel_0_MT5 = '(-00;125)'
nivel_1_MT5 = '[125;150)'
nivel_2_MT5 = '[150;175)'
nivel_3_MT5 = '[175;200)'
nivel_4_MT5 = '[200;225)'
nivel_5_MT5 = '[225;250)'
nivel_6_MT5 = '[250;275)'
nivel_7_MT5 = '[275;300)'
nivel_8_MT5 = '[300;325)'
nivel_9_MT5 = '[325;350)'
nivel_10_MT5 = '[350;+00)'
NU_MATRICULADOS_CENSO_9EF = 'Número de alunos matriculados no 9º ano EF no Censo 2021' 
NU_PRESENTES_9EF = 'Número de alunos presentes na aplicação'
TAXA_PARTICIPACAO_9EF = 'Razão entre o total de alunos presentes do Saeb (NU_PRESENTES_9ANO) e o total de alunos cadastrados no Censo Escolar que são público alvo do Saeb (NU_MATRICULADOS_CENSO_9ANO)'
nivel_0_LP9 = '(-00;200)'
nivel_1_LP9 = '[200;225)'
nivel_2_LP9 = '[225;250)'
nivel_3_LP9 = '[250;275)'
nivel_4_LP9 = '[275;300)'
nivel_5_LP9 = '[300;325)'
nivel_6_LP9 = '[325;350)'
nivel_7_LP9 = '[350;375)'
nivel_8_LP9 = '[375;+00)'
nivel_0_MT9 = '(-00;200)'
nivel_1_MT9 = '[200;225)'
nivel_2_MT9 = '[225;250)'
nivel_3_MT9 = '[250;275)'
nivel_4_MT9 = '[275;300)'
nivel_5_MT9 = '[300;325)'
nivel_6_MT9 = '[325;350)'
nivel_7_MT9 = '[350;375)'
nivel_8_MT9 = '[375;400)'
nivel_9_MT9 = '[400;+00)'
NU_MATRICULADOS_CENSO_EMT = 'Número de alunos matriculados na 3ª/4ª série do ensino médio tradicional no Censo 2021'
NU_PRESENTES_EMT = 'Número de alunos presentes na aplicação'
TAXA_PARTICIPACAO_EMT = 'Razão entre o total de alunos presentes do Saeb (NU_PRESENTES_EMT) e o total de alunos cadastrados no Censo Escolar que são público alvo do Saeb (NU_MATRICULADOS_CENSO_EMT)'
NIVEL_0_LPEMT = '(-00;225)'
NIVEL_1_LPEMT = '[225;250)'
NIVEL_2_LPEMT = '[250;275)'
NIVEL_3_LPEMT = '[275;300)'
NIVEL_4_LPEMT = '[300;325)'
NIVEL_5_LPEMT = '[325;350)'
NIVEL_6_LPEMT = '[350;375)'
NIVEL_7_LPEMT = '[375;400)'
NIVEL_8_LPEMT = '[400;+00)'
NIVEL_0_MTEMT = '[-00;225)'
NIVEL_1_MTEMT = '[225;250)'
NIVEL_2_MTEMT = '[250;275)'
NIVEL_3_MTEMT = '[275;300)'
NIVEL_4_MTEMT = '[300;325)'
NIVEL_5_MTEMT = '[325;350)'
NIVEL_6_MTEMT = '[350;375)'
NIVEL_7_MTEMT = '[375;400)'
NIVEL_8_MTEMT = '[400;425)'
NIVEL_9_MTEMT = '[425;450)'
NIVEL_10_MTEMT = '[450;+00)'
NU_MATRICULADOS_CENSO_EMI = 'Número de alunos matriculados na 3ª/4ª série do ensino médio integrado no Censo 2021'
NU_PRESENTES_EMI = 'Número de alunos presentes na aplicação'
TAXA_PARTICIPACAO_EMI = 'Razão entre o total de alunos presentes do Saeb (NU_PRESENTES_EMI) e o total de alunos cadastrados no Censo Escolar que são público alvo do Saeb (NU_MATRICULADOS_CENSO_EMI)'
NIVEL_0_LPEMI = '(-00;225)'
NIVEL_1_LPEMI = '[225;250)'
NIVEL_2_LPEMI = '[250;275)'
NIVEL_3_LPEMI = '[275;300)'
NIVEL_4_LPEMI = '[300;325)'
NIVEL_5_LPEMI = '[325;350)'
NIVEL_6_LPEMI = '[350;375)'
NIVEL_7_LPEMI = '[375;400)'
NIVEL_8_LPEMI = '[400;+00)'
NIVEL_0_MTEMI = '[-00;225)'
NIVEL_1_MTEMI = '[225;250)'
NIVEL_2_MTEMI = '[250;275)'
NIVEL_3_MTEMI = '[275;300)'
NIVEL_4_MTEMI = '[300;325)'
NIVEL_5_MTEMI = '[325;350)'
NIVEL_6_MTEMI = '[350;375)'
NIVEL_7_MTEMI = '[375;400)'
NIVEL_8_MTEMI = '[400;425)'
NIVEL_9_MTEMI = '[425;450)'
NIVEL_10_MTEMI = '[450;+00)'
NU_MATRICULADOS_CENSO_EM = 'Número de alunos matriculados na 3ª/4ª série do ensino médio tradicional e integrado conjuntamente no Censo 2021'
NU_PRESENTES_EM = 'Número de alunos presentes na aplicação'
TAXA_PARTICIPACAO_EM = 'Razão entre o total de alunos presentes do Saeb (NU_PRESENTES_3EM) e o total de alunos cadastrados no Censo Escolar que são público alvo do Saeb (NU_MATRICULADOS_CENSO_3EM)'
NIVEL_0_LPEM = '(-00;225)'
NIVEL_1_LPEM = '[225;250)'
NIVEL_2_LPEM = '[250;275)'
NIVEL_3_LPEM = '[275;300)'
NIVEL_4_LPEM = '[300;325)'
NIVEL_5_LPEM = '[325;350)'
NIVEL_6_LPEM = '[350;375)'
NIVEL_7_LPEM = '[375;400)'
NIVEL_8_LPEM = '[400;+00)'
NIVEL_0_MTEM = '[-00;225)'
NIVEL_1_MTEM = '[225;250)'
NIVEL_2_MTEM = '[250;275)'
NIVEL_3_MTEM = '[275;300)'
NIVEL_4_MTEM = '[300;325)'
NIVEL_5_MTEM = '[325;350)'
NIVEL_6_MTEM = '[350;375)'
NIVEL_7_MTEM = '[375;400)'
NIVEL_8_MTEM = '[400;425)'
NIVEL_9_MTEM = '[425;450)'
NIVEL_10_MTEM = '[450;+00)'
MEDIA_5EF_LP  = 'Média em Língua Portuguesa 5º ano'
MEDIA_5EF_MT = 'Média em Matemática 5º ano'
MEDIA_9EF_LP = 'Média em Língua Portuguesa 9º ano'
MEDIA_9EF_MT = 'Média em Matemática 9º ano'
MEDIA_EMT_LP = 'Média em Língua Portuguesa 3ª/4ª série do ensino médio tradicional'
MEDIA_EMT_MT = 'Média em Matemática 3ª/4ª série do ensino médio tradicional'
MEDIA_EMI_LP = 'Média em Língua Portuguesa 3ª/4ª série do ensino médio integrado'
MEDIA_EMI_MT = 'Média em Matemática 3ª/4ª série do ensino médio integrado'
MEDIA_EM_LP = 'Média em Língua Portuguesa 3ª/4ª série do ensino médio tradicional e integrado conjuntamente'
MEDIA_EM_MT = 'Média em Matemática 3ª/4ª série do ensino médio tradicional e integrado conjuntamente'
;
run;quit;