/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ITEM                                                                              */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DAS INFORMA��ES GERAIS SOBRE */
/*                     DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO    */                 
/*                                                   SAEB 2021                                                        */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_ITEM.CSV no diret�rio C:\ do computador.	                                                       */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.                                                                                       */
/*							 */
/* Para a leitura dos microdados � necess�rio a sele��o do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							  */
/* Os R�tulos de algumas vari�veis n�o est�o completos, em virtude do tamanho do.      */
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o   */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem a Consulta do Dicion�rio de       */
/* Vari�veis para conhecer o enunciado completo.                                                     	  */
/* 							   */
/*******************************************************************************************************/


GET DATA
/TYPE=TXT 
  /FILE="C:\TS_ITEM.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";" 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES=
  ID_SAEB F4.0
  DISCIPLINA A2
  ID_SERIE F1.0
  BLOCO F2.0
  POSICAO F2.0
  ID_ITEM F7.0
  NU_DESCRITOR_HABILIDADE A5
  GABARITO A1
  TIPO_ITEM A20
  ITEM_MODELO A4
  A COMMA6.5
  B COMMA6.5
  C COMMA6.5
  B1 COMMA6.5
  B2 COMMA6.5.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

VARIABLE LABELS  ID_PROVA_BRASIL 'Ano de aplica��o do Saeb'.
VARIABLE LABELS  ID_SERIE 'S�rie em que a prova foi aplicada'.
VALUE LABELS ID_SERIE
2 '2� ano EF'
5 '5� ano EF'
9 '9� ano EF'
12 '3�/4� s�rie EM'.
VARIABLE LABELS  DISCIPLINA 'Disciplina do item.'.
VALUE LABELS DISCIPLINA
'LP' 'L�ngua Portuguesa'
'MT' 'Matem�tica'
'CH' 'Ci�ncias Humanas'
'CN' 'Ci�ncias da Natureza'.
VARIABLE LABELS  ITEM_MODELO 'Modelos da Teoria de Resposta ao Item.'.
VALUE LABELS ITEM_MODELO
'M2PL ' 'Modelo log�stico de 2 par�metros'
'M3PL' 'Modelo Log�stico de 3 par�metros'
'MRG' 'Modelo de resposta gradual'
'M3P' 'modelo normal de 3 par�metros'.
VARIABLE LABELS  BLOCO 'Identificador do bloco'.
VARIABLE LABELS  POSICAO 'Identificador da posi��o do item no bloco'.
VARIABLE LABELS  ID_ITEM 'Identificador do item'.
VARIABLE LABELS  GABARITO 'Gabarito do Item'.
VARIABLE LABELS  TIPO_ITEM 'Tipo de resposta esperada para o Item'.
VARIABLE LABELS  NU_DESCRITOR_HABILIDADE 'Identificador do descritor do item'.
VARIABLE LABELS  A  'Par�metro de discrimina��o: � o poder de discrimina��o do item para diferenciar os participantes que dominam dos participantes que n�o dominam a habilidade avaliada.'.
VARIABLE LABELS  B 'Par�metro de dificuldade: associado � dificuldade do item, sendo que quanto maior seu valor, mais dif�cil � o item.'.
VARIABLE LABELS  C 'Par�metro de acerto ao acaso: � a probabilidade de um participante acertar o item n�o dominando a habilidade exigida.'.
VARIABLE LABELS  B1 'Par�metro de dificuldade da transi��o entre as categorias de �erro� e  �acerto parcial�.'.
VARIABLE LABELS  B2 'Par�metro de dificuldade da transi��o entre as categorias de �acerto parcial� e  �acerto total�.'.







