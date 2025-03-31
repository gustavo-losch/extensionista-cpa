/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos e Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_5EF                                                */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                    */
/*                      5º ANO ENSINO FUNDAMENTAL DO SAEB 2021                         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ALUNO_5EF.CSV no diretório C:\ do computador.	                                   */
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
0 = 'Privada'
1 = 'Pública';

value ID_LOCALIZACAO
1 = 'Urbana'
2 = 'Rural';

value ID_SERIE
5 = '5º Ano do Ensino Fundamental';

value IN_SITUACAO_CENSO
0 = 'Não consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO_LP       
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_MT    
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA_LP
0= 'Ausente'
1= 'Presente';

value IN_PRESENCA_MT
0= 'Ausente'
1= 'Presente';

value IN_PROFICIENCIA_LP
0 = 'Não' 
1 = 'Sim';

value IN_PROFICIENCIA_MT
0 = 'Não' 
1 = 'Sim';

value IN_AMOSTRA 
0 = 'Não' 
1 = 'Sim';

value IN_PREENCHIMENTO_QUESTIONARIO
0 = 'Não preenchido'
1 = 'Preenchido parcial ou totalmente';

value IN_INSE
0 = 'Não'
1 = 'Sim';

value NU_TIPO_NIVEL_INSE 1 = 'Nível I' 2 = 'Nível II' 3 = 'Nível III' 4 = 'Nível IV' 5 = 'Nível V' 6 = 'Nível VI' 7 = 'Nível VII' 8 = 'Nível VIII';

value $Q5um *='Nulo' .='Branco' A='Masculino.' B='Feminino.';
value $Q5dois *='Nulo' .='Branco' A='9 anos ou menos.' B='10 anos.' C='11 anos.' D='12 anos.' E='13 anos.' F='14 anos ou mais.';
value $Q5tres *='Nulo' .='Branco' A='Português.' B='Espanhol.' C='Outra língua.';
value $Q5quatro *='Nulo' .='Branco' A='Branca.' B='Preta.' C='Parda.' D='Amarela.' E='Indígena.' F='Não quero declarar.';
value $Q5cinco *='Nulo' .='Branco' A='Sim.' B='Não.';
value $Q5seisa *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5seisb *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5seisc *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5seisd *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5seise *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5sete *='Nulo' .='Branco' A='Não completou o 5º ano do Ensino Fundamental.' B='Ensino Fundamental, até o 5º ano.' C='Ensino Fundamental completo.' D='Ensino Médio completo.' E='Ensino Superior completo (faculdade ou graduação).' F='Não sei.';
value $Q5oito *='Nulo' .='Branco' A='Não completou o 5º ano do Ensino Fundamental.' B='Ensino Fundamental, até o 5º ano.' C='Ensino Fundamental completo.' D='Ensino Médio completo.' E='Ensino Superior completo (faculdade ou graduação).' F='Não sei.';
value $Q5novea *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q5noveb *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q5novec *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q5noved *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q5novee *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q5novef *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Sempre ou quase sempre.';
value $Q5deza *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dezb *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dezc *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5onzea *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5onzeb *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5onzec *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5onzed *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5onzee *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5onzef *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5onzeg *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5onzeh *='Nulo' .='Branco' A='Nenhum.' B='1.' C='2.' D='3 ou mais.';
value $Q5dozea *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozeb *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozec *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozed *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozee *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozef *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozeg *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozeh *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dozei *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5treze *='Nulo' .='Branco' A='Menos de 30 minutos.' B='Entre 30 minutos e uma hora.' C='Mais de uma hora.';
value $Q5catorze *='Nulo' .='Branco' A='À pé.' B='De bicicleta.' C='De Van (ou Kombi).' D='De ônibus.' E='De metrô (ou trem urbano).' F='De carro.' G='Outros meios de transporte (barco, motocicleta, etc.)';
value $Q5quinze *='Nulo' .='Branco' A='Não.' B='Sim.';
value $Q5dezasseis *='Nulo' .='Branco' A='3 anos ou menos.' B='4 ou 5 anos.' C='6 ou 7 anos.' D='8 anos ou mais.';
value $Q5dezassete *='Nulo' .='Branco' A='Somente em escola pública.' B='Somente em escola particular.' C='Em escola pública e em escola particular.';
value $Q5dezoito *='Nulo' .='Branco' A='Não.' B='Sim, uma vez.' C='Sim, duas vezes ou mais.';
value $Q5dezanove *='Nulo' .='Branco' A='Nunca.' B='Sim, uma vez.' C='Sim, duas vezes ou mais.';
value $Q5vintea *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q5vinteb *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q5vintec *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q5vinted *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q5vintee *='Nulo' .='Branco' A='Não uso meu tempo para isso.' B='Menos de 1 hora.' C='Entre 1 e 2 horas.' D='Mais de 2 horas.';
value $Q5vinteeuma *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeumb *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeumc *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeumd *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeume *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeumf *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeumg *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeumh *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';
value $Q5vinteeumi *='Nulo' .='Branco' A='Nunca ou quase nunca.' B='De vez em quando.' C='Várias vezes' D='Sempre.';

RUN;

DATA WORK.TS_ALUNO_5EF;

INFILE 'C:/TS_ALUNO_5EF.csv' /*Endereço do arquivo*/
		LRECL=4096
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
ID_TURMA : 6.                                  
ID_SERIE : 1.                   
ID_ALUNO : 8.                   
IN_SITUACAO_CENSO : 1.          
IN_PREENCHIMENTO_LP : 1.      
IN_PREENCHIMENTO_MT : 1.      
IN_PRESENCA_LP : 1.           
IN_PRESENCA_MT : 1.           
ID_CADERNO_LP : 2.                    
ID_BLOCO_1_LP : $CHAR1.                 
ID_BLOCO_2_LP : $CHAR1.                
ID_CADERNO_MT : 2.                    
ID_BLOCO_1_MT : $CHAR1.                 
ID_BLOCO_2_MT : $CHAR1.                 
TX_RESP_BLOCO1_LP : $CHAR11.          
TX_RESP_BLOCO2_LP : $CHAR11.          
TX_RESP_BLOCO1_MT : $CHAR11.          
TX_RESP_BLOCO2_MT : $CHAR11.          
IN_PROFICIENCIA_LP : 1.       
IN_PROFICIENCIA_MT : 1.       
IN_AMOSTRA: 1.  
ESTRATO: $CHAR14.      
PESO_ALUNO_LP : 12.  
PROFICIENCIA_LP : 10.             
ERRO_PADRAO_LP : 10.         
PROFICIENCIA_LP_SAEB : 12.        
ERRO_PADRAO_LP_SAEB : 10.     
PESO_ALUNO_MT : 12.             
PROFICIENCIA_MT : 10.   
ERRO_PADRAO_MT : 10.   
PROFICIENCIA_MT_SAEB : 12.        
ERRO_PADRAO_MT_SAEB : 10.        
IN_PREENCHIMENTO_QUESTIONARIO : 1.
IN_INSE : 1.
INSE_ALUNO : 4.
NU_TIPO_NIVEL_INSE : 1.
PESO_ALUNO_INSE : 12.
TX_RESP_Q01 : $CHAR1.
TX_RESP_Q02 : $CHAR1.
TX_RESP_Q03 : $CHAR1.
TX_RESP_Q04 : $CHAR1.
TX_RESP_Q05 : $CHAR1.
TX_RESP_Q06a : $CHAR1.
TX_RESP_Q06b : $CHAR1.
TX_RESP_Q06c : $CHAR1.
TX_RESP_Q06d : $CHAR1.
TX_RESP_Q06e : $CHAR1.
TX_RESP_Q07 : $CHAR1.
TX_RESP_Q08 : $CHAR1.
TX_RESP_Q09a : $CHAR1.
TX_RESP_Q09b : $CHAR1.
TX_RESP_Q09c : $CHAR1.
TX_RESP_Q09d : $CHAR1.
TX_RESP_Q09e : $CHAR1.
TX_RESP_Q09f : $CHAR1.
TX_RESP_Q10a : $CHAR1.
TX_RESP_Q10b : $CHAR1.
TX_RESP_Q10c : $CHAR1.
TX_RESP_Q11a : $CHAR1.
TX_RESP_Q11b : $CHAR1.
TX_RESP_Q11c : $CHAR1.
TX_RESP_Q11d : $CHAR1.
TX_RESP_Q11e : $CHAR1.
TX_RESP_Q11f : $CHAR1.
TX_RESP_Q11g : $CHAR1.
TX_RESP_Q11h : $CHAR1.
TX_RESP_Q12a : $CHAR1.
TX_RESP_Q12b : $CHAR1.
TX_RESP_Q12c : $CHAR1.
TX_RESP_Q12d : $CHAR1.
TX_RESP_Q12e : $CHAR1.
TX_RESP_Q12f : $CHAR1.
TX_RESP_Q12g : $CHAR1.
TX_RESP_Q12h : $CHAR1.
TX_RESP_Q12i : $CHAR1.
TX_RESP_Q13 : $CHAR1.
TX_RESP_Q14 : $CHAR1.
TX_RESP_Q15 : $CHAR1.
TX_RESP_Q16 : $CHAR1.
TX_RESP_Q17 : $CHAR1.
TX_RESP_Q18 : $CHAR1.
TX_RESP_Q19 : $CHAR1.
TX_RESP_Q20a : $CHAR1.
TX_RESP_Q20b : $CHAR1.
TX_RESP_Q20c : $CHAR1.
TX_RESP_Q20d : $CHAR1.
TX_RESP_Q20e : $CHAR1.
TX_RESP_Q21a : $CHAR1.
TX_RESP_Q21b : $CHAR1.
TX_RESP_Q21c : $CHAR1.
TX_RESP_Q21d : $CHAR1.
TX_RESP_Q21e : $CHAR1.
TX_RESP_Q21f : $CHAR1.
TX_RESP_Q21g : $CHAR1.
TX_RESP_Q21h : $CHAR1.
TX_RESP_Q21i : $CHAR1.;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_SERIE FORMAT=ID_SERIE40.;
ATTRIB IN_SITUACAO_CENSO FORMAT=IN_SITUACAO_CENSO20.;
ATTRIB IN_PREENCHIMENTO_LP FORMAT=IN_PREENCHIMENTO_LP20.; 
ATTRIB IN_PREENCHIMENTO_MT FORMAT=IN_PREENCHIMENTO_MT20.; 
ATTRIB IN_PRESENCA_LP FORMAT=IN_PRESENCA_LP20.; 
ATTRIB IN_PRESENCA_MT FORMAT=IN_PRESENCA_MT20.;
ATTRIB IN_PROFICIENCIA_LP FORMAT=IN_PROFICIENCIA_LP3.;
ATTRIB IN_PROFICIENCIA_MT FORMAT=IN_PROFICIENCIA_MT3.;
ATTRIB IN_AMOSTRA FORMAT=IN_AMOSTRA3.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO33.;
ATTRIB IN_INSE FORMAT=IN_INSE3.;
ATTRIB NU_TIPO_NIVEL_INSE FORMAT=NU_TIPO_NIVEL_INSE10.;
ATTRIB TX_RESP_Q01 FORMAT=$Q5um.;
ATTRIB TX_RESP_Q02 FORMAT=$Q5dois.;
ATTRIB TX_RESP_Q03 FORMAT=$Q5tres.;
ATTRIB TX_RESP_Q04 FORMAT=$Q5quatro.;
ATTRIB TX_RESP_Q05 FORMAT=$Q5cinco.;
ATTRIB TX_RESP_Q06a FORMAT=$Q5seisa.;
ATTRIB TX_RESP_Q06b FORMAT=$Q5seisb.;
ATTRIB TX_RESP_Q06c FORMAT=$Q5seisc.;
ATTRIB TX_RESP_Q06d FORMAT=$Q5seisd.;
ATTRIB TX_RESP_Q06e FORMAT=$Q5seise.;
ATTRIB TX_RESP_Q07 FORMAT=$Q5sete.;
ATTRIB TX_RESP_Q08 FORMAT=$Q5oito.;
ATTRIB TX_RESP_Q09a FORMAT=$Q5novea.;
ATTRIB TX_RESP_Q09b FORMAT=$Q5noveb.;
ATTRIB TX_RESP_Q09c FORMAT=$Q5novec.;
ATTRIB TX_RESP_Q09d FORMAT=$Q5noved.;
ATTRIB TX_RESP_Q09e FORMAT=$Q5novee.;
ATTRIB TX_RESP_Q09f FORMAT=$Q5novef.;
ATTRIB TX_RESP_Q10a FORMAT=$Q5deza.;
ATTRIB TX_RESP_Q10b FORMAT=$Q5dezb.;
ATTRIB TX_RESP_Q10c FORMAT=$Q5dezc.;
ATTRIB TX_RESP_Q11a FORMAT=$Q5onzea.;
ATTRIB TX_RESP_Q11b FORMAT=$Q5onzeb.;
ATTRIB TX_RESP_Q11c FORMAT=$Q5onzec.;
ATTRIB TX_RESP_Q11d FORMAT=$Q5onzed.;
ATTRIB TX_RESP_Q11e FORMAT=$Q5onzee.;
ATTRIB TX_RESP_Q11f FORMAT=$Q5onzef.;
ATTRIB TX_RESP_Q11g FORMAT=$Q5onzeg.;
ATTRIB TX_RESP_Q11h FORMAT=$Q5onzeh.;
ATTRIB TX_RESP_Q12a FORMAT=$Q5dozea.;
ATTRIB TX_RESP_Q12b FORMAT=$Q5dozeb.;
ATTRIB TX_RESP_Q12c FORMAT=$Q5dozec.;
ATTRIB TX_RESP_Q12d FORMAT=$Q5dozed.;
ATTRIB TX_RESP_Q12e FORMAT=$Q5dozee.;
ATTRIB TX_RESP_Q12f FORMAT=$Q5dozef.;
ATTRIB TX_RESP_Q12g FORMAT=$Q5dozeg.;
ATTRIB TX_RESP_Q12h FORMAT=$Q5dozeh.;
ATTRIB TX_RESP_Q12i FORMAT=$Q5dozei.;
ATTRIB TX_RESP_Q13 FORMAT=$Q5treze.;
ATTRIB TX_RESP_Q14 FORMAT=$Q5catorze.;
ATTRIB TX_RESP_Q15 FORMAT=$Q5quinze.;
ATTRIB TX_RESP_Q16 FORMAT=$Q5dezasseis.;
ATTRIB TX_RESP_Q17 FORMAT=$Q5dezassete.;
ATTRIB TX_RESP_Q18 FORMAT=$Q5dezoito.;
ATTRIB TX_RESP_Q19 FORMAT=$Q5dezanove.;
ATTRIB TX_RESP_Q20a FORMAT=$Q5vintea.;
ATTRIB TX_RESP_Q20b FORMAT=$Q5vinteb.;
ATTRIB TX_RESP_Q20c FORMAT=$Q5vintec.;
ATTRIB TX_RESP_Q20d FORMAT=$Q5vinted.;
ATTRIB TX_RESP_Q20e FORMAT=$Q5vintee.;
ATTRIB TX_RESP_Q21a FORMAT=$Q5vinteeuma.;
ATTRIB TX_RESP_Q21b FORMAT=$Q5vinteeumb.;
ATTRIB TX_RESP_Q21c FORMAT=$Q5vinteeumc.;
ATTRIB TX_RESP_Q21d FORMAT=$Q5vinteeumd.;
ATTRIB TX_RESP_Q21e FORMAT=$Q5vinteeume.;
ATTRIB TX_RESP_Q21f FORMAT=$Q5vinteeumf.;
ATTRIB TX_RESP_Q21g FORMAT=$Q5vinteeumg.;
ATTRIB TX_RESP_Q21h FORMAT=$Q5vinteeumh.;
ATTRIB TX_RESP_Q21i FORMAT=$Q5vinteeumi.;

LABEL

ID_SAEB = 'Ano do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Código do Município'                                                                                                                   
ID_AREA = 'Área'                                                                                                                    
ID_ESCOLA = 'Código da Escola'                                                                                                                         
IN_PUBLICA = 'Dependência Administrativa'                                                                                             
ID_LOCALIZACAO = 'Localização'                                                                                                                
ID_TURMA = 'Código da turma no Saeb'                                                                                                                                                                                                                           
ID_SERIE = 'Série'                                                                                                                                     
ID_ALUNO = 'Código do aluno no Saeb'                                                                                                        
IN_SITUACAO_CENSO = 'Indicador de consistência com o Censo Escolar 2021'                                                                              
IN_PREENCHIMENTO_LP = 'Indicador de preenchimento da prova de Língua Portuguesa'    
IN_PREENCHIMENTO_MT = 'Indicador de preenchimento da prova de Matemática'    
IN_PRESENCA_LP = 'Indicador de presença na prova de Língua Portuguesa' 
IN_PRESENCA_MT = 'Indicador de presença na prova de Matemática' 
ID_CADERNO_LP = 'Caderno de provas de Língua Portuguesa'                           
ID_BLOCO_1_LP = 'Identificador do Bloco 1 de Língua Portuguesa'                                                                               
ID_BLOCO_2_LP = 'Identificador do Bloco 2 de Língua Portuguesa'                                                                               
ID_CADERNO_MT = 'Caderno de provas de Matemática'                           
ID_BLOCO_1_MT = 'Identificador do Bloco 1 de Matemática'                                                                               
ID_BLOCO_2_MT = 'Identificador do Bloco 2 de Matemática'                                                                               
TX_RESP_BLOCO_1_LP = 'Resposta do aluno ao Bloco 1 da Prova de Língua Portuguesa'                                                                     
TX_RESP_BLOCO_2_LP = 'Resposta do aluno ao Bloco 2 da Prova de Língua Portuguesa'                                                                     
TX_RESP_BLOCO_1_MT = 'Resposta do aluno ao Bloco 1 da Prova de Matemática'                                                                            
TX_RESP_BLOCO_2_MT = 'Resposta do aluno ao Bloco 2 da Prova de Matemática'                                                                                     
IN_PROFICIENCIA_LP = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Língua Portuguesa e Matemática)'
IN_PROFICIENCIA_MT = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Língua Portuguesa e Matemática)'
IN_AMOSTRA = 'Indicador de participação na amostra do Saeb'  
ESTRATO = 'Descrição dos estratos do Saeb'                                                   
PESO_ALUNO_LP = 'Peso do aluno em Língua Portuguesa'                                                                                                   
PESO_ALUNO_MT = 'Peso do aluno em Matemática'                                                                                                          
PROFICIENCIA_LP = 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_LP = 'Erro padrão da proficiência em Língua Portuguesa'  
PROFICIENCIA_LP_SAEB = 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_LP_SAEB = 'Erro padrão da proficiência transformada em Língua Portuguesa' 
PROFICIENCIA_MT = 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_MT = 'Erro padrão da proficiência em Matemática'
PROFICIENCIA_MT_SAEB = 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_MT_SAEB = 'Erro padrão da proficiência transformada em Matemática'                                                                  
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
IN_INSE = 'Indicador para cálculo do INSE (São considerados válidos os estudantes que responderam pelo menos 8 itens, dentre os 17 utilizados para o cálculo do indicador)'
INSE_ALUNO = 'Resultado individual do INSE para o aluno'
NU_TIPO_NIVEL_INSE = 'Classificação do Indicador de Nível Socioeconômico em 8 Grupos'
PESO_ALUNO_INSE = 'Peso do Aluno para cálculo do INSE 2021'
TX_RESP_Q01 = 'Qual é o seu sexo?'
TX_RESP_Q02 = 'Qual é a sua idade?(Questionário de aluno do 5º ano)'
TX_RESP_Q03 = 'Qual língua que seus pais falam com mais frequência em casa?'
TX_RESP_Q04 = 'Qual é a sua cor ou raça?'
TX_RESP_Q05 = 'Você possui algum tipo de necessidade especial?'
TX_RESP_Q06a = 'Normalmente, quem mora na sua casa? - Mãe ou madrasta.'
TX_RESP_Q06b = 'Normalmente, quem mora na sua casa? - Pai ou padrasto.'
TX_RESP_Q06c = 'Normalmente, quem mora na sua casa? - Irmão(s) ou irmã(s).'
TX_RESP_Q06d = 'Normalmente, quem mora na sua casa? - Avô ou avó.'
TX_RESP_Q06e = 'Normalmente, quem mora na sua casa? - Outros (tios, primos etc.).'
TX_RESP_Q07 = 'Qual é a maior escolaridade da sua mãe (ou mulher responsável por você)?'
TX_RESP_Q08 = 'Qual é a maior escolaridade de seu pai (ou homem responsável por você)?'
TX_RESP_Q09a = 'Com que frequência seus pais ou responsáveis costumam: - Ler em casa.'
TX_RESP_Q09b = 'Com que frequência seus pais ou responsáveis costumam: - Conversar com você sobre o que acontece na escola.'
TX_RESP_Q09c = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a estudar.'
TX_RESP_Q09d = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a fazer a tarefa de casa.'
TX_RESP_Q09e = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a comparecer às aulas.'
TX_RESP_Q09f = 'Com que frequência seus pais ou responsáveis costumam: - Ir às reuniões de pais na escola.'
TX_RESP_Q10a = 'Na rua em que você mora tem: - Asfalto ou calçamento.'
TX_RESP_Q10b = 'Na rua em que você mora tem: - Água tratada.'
TX_RESP_Q10c = 'Na rua em que você mora tem: - Iluminação.'
TX_RESP_Q11a = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Geladeira.'
TX_RESP_Q11b = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Tablet.'
TX_RESP_Q11c = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Computador (ou notebook).'
TX_RESP_Q11d = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Quartos para dormir.'
TX_RESP_Q11e = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televisão.'
TX_RESP_Q11f = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Banheiro.'
TX_RESP_Q11g = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Carro.'
TX_RESP_Q11h = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Celular com internet (smartphone).'
TX_RESP_Q12a = 'Na sua casa tem: - Tv por internet (Netflix, GloboPlay, etc.).'
TX_RESP_Q12b = 'Na sua casa tem: - Rede Wi-Fi.'
TX_RESP_Q12c = 'Na sua casa tem: - Um quarto só seu.'
TX_RESP_Q12d = 'Na sua casa tem: - Mesa para estudar.'
TX_RESP_Q12e = 'Na sua casa tem: - Forno de microondas.'
TX_RESP_Q12f = 'Na sua casa tem: - Aspirador de pó.'
TX_RESP_Q12g = 'Na sua casa tem: - Máquina de lavar roupa.'
TX_RESP_Q12h = 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'
TX_RESP_Q12i = 'Na sua casa tem: - Garagem.'
TX_RESP_Q13 = 'Quanto tempo você demora para chegar à sua escola?'
TX_RESP_Q14 = 'Considerando a maior distância percorrida, normalmente de que forma você chega à sua escola?'
TX_RESP_Q15 = 'Você se utiliza de transporte escolar, ou passe escolar, para ir à escola?'
TX_RESP_Q16 = 'Com que idade você entrou na escola?'
TX_RESP_Q17 = 'A partir do primeiro ano do ensino fundamental, em que tipo de escola você estudou?'
TX_RESP_Q18 = 'Você já foi reprovado(a)?'
TX_RESP_Q19 = 'Alguma vez você abandonou a escola deixando de frequentá-la até o final do ano escolar?'
TX_RESP_Q20a = 'Fora da escola em dias de aula, quanto tempo você usa para: - Estudar (lição de casa, trabalhos escolares, etc.).'
TX_RESP_Q20b = 'Fora da escola em dias de aula, quanto tempo você usa para: - Fazer cursos.'
TX_RESP_Q20c = 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar em casa (lavar louça, limpar quintal, cuidar dos irmãos).'
TX_RESP_Q20d = 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar fora de casa (recebendo ou não um salário).'
TX_RESP_Q20e = 'Fora da escola em dias de aula, quanto tempo você usa para: - Lazer (TV, internet, brincar, música etc.).'
TX_RESP_Q21a = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu possuía equipamento adequado para acompanhar o ensino remoto.'
TX_RESP_Q21b = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu tive conexão de internet adequada para acesso às aulas remotas.'
TX_RESP_Q21c = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Tive facilidade em usar os programas de comunicação nas aulas remotas.'
TX_RESP_Q21d = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Recebi material impresso da escola (livros, apostilas, atividades em folha etc.).'
TX_RESP_Q21e = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Os professores me auxiliaram a entender o conteúdo.'
TX_RESP_Q21f = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Eu compreendi o conteúdo das aulas remotas.'
TX_RESP_Q21g = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Em casa havia um lugar tranquilo para eu assistir às aulas.'
TX_RESP_Q21h = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Meus familiares apoiaram o meu estudo.'
TX_RESP_Q21i = 'Durante a pandemia, indique a frequência com que os seguintes fatos ocorreram: - Meus colegas me apoiaram durante o ensino remoto.';

RUN;QUIT;