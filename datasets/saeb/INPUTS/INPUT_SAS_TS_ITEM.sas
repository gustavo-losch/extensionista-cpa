/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ITEM                                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMAÇÕES GERAIS SOBRE                    */
/*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO SAEB 2021         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ITEM.CSV no diretório C:\ do computador.	                                       */
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
/***************************************************************************************/;

proc format;

value ID_SERIE
2='2º ano do Ensino Fundamental'
5='5º ano do Ensino Fundamental'
9='9º ano do Ensino Fundamental'
12='3ª/4ª séries do Ensino Médio';

value $DISCIPLINA
LP ='Língua Portuguesa'
MT ='Matemática'
CH ='Ciências Humanas'
CN ='Ciências da Natureza';

value $ITEM_MODELO
M2PL ='Modelo logístico de 2 parâmetros'
M3PL ='Modelo Logístico de 3 parâmetros'
MRG ='Modelo de resposta gradual'
M3P = 'Modelo normal de 3 parâmetros';

run;

DATA WORK.TS_ITEM;

/*INFILE 'C:/TS_ITEM.csv'*/ /*Endereço do arquivo*/
INFILE 'W:/DADOS/SAEB/2021/Microdados/Ensino Fundamental e médio/DADOS/TS_ITEM.csv'
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

ID_SAEB = 'Ano de aplicação do Saeb'
ID_SERIE = 'Série em que a prova foi aplicada'
DISCIPLINA = 'Disciplina do item'
BLOCO = 'Identificador do bloco'
POSICAO = 'Identificador da posição do item no bloco'
ID_ITEM = 'Identificador do item'
NU_DESCRITOR_HABILIDADE = 'Identificador do descritor do item'
GABARITO = 'Gabarito do Item'
TIPO_ITEM = 'Tipo de resposta esperada para o Item'
ITEM_MODELO = 'Modelos da Teoria de Resposta ao Item'
A = 'Parâmetro de discriminação: é o poder de discriminação do item para diferenciar os participantes que dominam dos participantes que não dominam a habilidade avaliada.'
B = 'Parâmetro de dificuldade: associado à dificuldade do item, sendo que quanto maior seu valor, mais difícil é o item.'
C = 'Parâmetro de acerto ao acaso: é a probabilidade de um participante acertar o item não dominando a habilidade exigida.'
B1 = 'Parâmetro de dificuldade da transição entre as categorias de “erro” e  “acerto parcial”.'
B2 = 'Parâmetro de dificuldade da transição entre as categorias de “acerto parcial” e  “acerto total”.' ;

run;quit;                       