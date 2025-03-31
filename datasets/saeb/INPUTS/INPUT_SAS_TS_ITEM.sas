/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ITEM                                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMA��ES GERAIS SOBRE                    */
/*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO SAEB 2021         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_ITEM.CSV no diret�rio C:\ do computador.	                                       */
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
/***************************************************************************************/;

proc format;

value ID_SERIE
2='2� ano do Ensino Fundamental'
5='5� ano do Ensino Fundamental'
9='9� ano do Ensino Fundamental'
12='3�/4� s�ries do Ensino M�dio';

value $DISCIPLINA
LP ='L�ngua Portuguesa'
MT ='Matem�tica'
CH ='Ci�ncias Humanas'
CN ='Ci�ncias da Natureza';

value $ITEM_MODELO
M2PL ='Modelo log�stico de 2 par�metros'
M3PL ='Modelo Log�stico de 3 par�metros'
MRG ='Modelo de resposta gradual'
M3P = 'Modelo normal de 3 par�metros';

run;

DATA WORK.TS_ITEM;

/*INFILE 'C:/TS_ITEM.csv'*/ /*Endere�o do arquivo*/
INFILE 'W:/DADOS/SAEB/2021/Microdados/Ensino Fundamental e m�dio/DADOS/TS_ITEM.csv'
		LRECL=100
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

INPUT

ID_SAEB : 4.
DISCIPLINA : $CHAR2. 
ID_SERIE : 2.
BLOCO : 2. 
POSICAO : 2. 
ID_ITEM : $CHAR7. 
NU_DESCRITOR_HABILIDADE : $CHAR5.  
GABARITO : $CHAR1.
TIPO_ITEM : $CHAR20.
ITEM_MODELO : $CHAR4.
A : 6.
B : 6.
C : 6.
B1 : 6.
B2 : 6.;

ATTRIB ID_SERIE FORMAT=ID_SERIE30.;
ATTRIB DISCIPLINA FORMAT=$DISCIPLINA20.;
ATTRIB ITEM_MODELO FORMAT=$ITEM_MODELO32.;

LABEL

ID_SAEB = 'Ano de aplica��o do Saeb'
ID_SERIE = 'S�rie em que a prova foi aplicada'
DISCIPLINA = 'Disciplina do item'
BLOCO = 'Identificador do bloco'
POSICAO = 'Identificador da posi��o do item no bloco'
ID_ITEM = 'Identificador do item'
NU_DESCRITOR_HABILIDADE = 'Identificador do descritor do item'
GABARITO = 'Gabarito do Item'
TIPO_ITEM = 'Tipo de resposta esperada para o Item'
ITEM_MODELO = 'Modelos da Teoria de Resposta ao Item'
A = 'Par�metro de discrimina��o: � o poder de discrimina��o do item para diferenciar os participantes que dominam dos participantes que n�o dominam a habilidade avaliada.'
B = 'Par�metro de dificuldade: associado � dificuldade do item, sendo que quanto maior seu valor, mais dif�cil � o item.'
C = 'Par�metro de acerto ao acaso: � a probabilidade de um participante acertar o item n�o dominando a habilidade exigida.'
B1 = 'Par�metro de dificuldade da transi��o entre as categorias de �erro� e  �acerto parcial�.'
B2 = 'Par�metro de dificuldade da transi��o entre as categorias de �acerto parcial� e  �acerto total�.' ;

run;quit;                       