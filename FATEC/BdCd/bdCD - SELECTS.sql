SELECT * 
FROM cd;
GO
-- select de gravadora, endereco  e url
SELECT nmGravadora, endereco, url
FROM gravadora;
GO

-- musica sem repetição 

SELECT DISTINCT duracao 
FROM musica;

-- musica ordenadas por duracao descrescente   /ASC pra ascendente
SELECT * 
FROM musica
ORDER BY duracao DESC;

-- select geral de autor
SELECT *
FROM autor;
GO

-- musicaAutor // sem repetição de autor
SELECT DISTINCT idAutor
FROM musicaAutor;
GO

-- faixa // sem repetição de nroFaixa
SELECT DISTINCT  nroFaixa
FROM faixa;
GO

--cdCategoria // geral
SELECT * 
FROM cd_categoria;
GO

/* ORDENANDO DADOS
CLÁUSULA ORDER BY que tenha duas sequencias:
Em ordem crescente ou alfabetica ASC
em ordem DECRESCENTE ou de Z-A DESC

SINTAXE: 
ORDER BY coluna_ord ASC|DESC;
*/

--QUAIS  AS MUSICAS POR ORDEM DECRESCENTE DE DURACAO

SELECT *
FROM musica
ORDER BY duracao ASC;
GO

/*Atuakuzando a baser de dados para as duracoes corretas
UPDATE tabela
SET coluna = valorNovo
WHERE colunaPK = valorREFERENCIA
*/
UPDATE musica
SET duracao = '00:03:20'
WHERE idMusica=14;
GO

--AUTORES EM ORDEM ALFABETICA
SELECT *
FROM autor
ORDER BY nmAutor ASC;

--CDS COM PREÇO EM ORDEM DO MAIS CARO PRO MAIS BARATO
SELECT * 
FROM cd
ORDER BY precoVenda DESC;

/* FILTRO A CLÁUSULA WHERE É UTILIZADA COM O USO DOS OPERADORES:
Relacionais (= , !=, >, >=, <,<=)
SINTAXE:  
WHERE coluna operaRela  valor;

LÓGICOS (AND, OR , NOT)
*/

-- Quais são os cd's com preco menor que 0;
SELECT * 
FROM cd
WHERE precoVenda <= 0;

UPDATE cd
SET precoVenda = 5.00
WHERE  idCD = 1;

UPDATE cd
SET precoVenda = 15.00
WHERE idCD = 2;

UPDATE cd
SET precoVenda = 18.00
WHERE idCD = 3;


/* DESAFIOS:		COLUNA		/ TABELA   / CODIGO / COUNT(*)
 GRAVADORAS =3
 duracao < 5		     
 preco > 20
 maior_preco <= 100
 autor >= 2
 faixa <>13

 SELECT COUNT(*)
 FROM cd
 WHERE codigo_cd = 3;
 */
 -- GRAVADORA = 3 (idGravadora | gravadora)
 SELECT *
 FROM gravadora
 WHERE idGravadora = 3;

 SELECT COUNT (*)
 FROM gravadora
 WHERE idGravadora = 3;
 GO

 -- DURACAO <5  (duracao | musica)
 SELECT *
 FROM musica
 WHERE duracao < '00:05:00';
 GO

 SELECT COUNT (*)
 FROM musica
 WHERE duracao < '00:05:00';
 GO

 -- PRECO > 20   (precoVenda | cd)
 SELECT *
 FROM cd
 WHERE precoVenda > 20;
 GO

 SELECT COUNT (*)
 FROM cd
 WHERE precoVenda > 20;
 GO
 -- maior preco <= 100 (maiorPreco| cd_categoria)

 SELECT *
 FROM cd_categoria
 WHERE maiorPreco <=100;
 GO

 SELECT COUNT (*)
 FROM cd_categoria
 WHERE maiorPreco <= 100;
 GO


 -- AUTOR >= 2 (idAutor| autor |musicaAutor)
 SELECT *
 FROM autor
 WHERE idAutor >= 2;

 SELECT COUNT (*)
 FROM autor
 WHERE idAutor >= 2 ;
 
 SELECT * 
 FROM musicaAutor
 WHERE idAutor >= 2;

 SELECT COUNT (*)
 FROM musicaAutor
 WHERE idAutor >= 2 ;

 -- FAIXA <>13 (nroFaixa | faixa)
 SELECT * 
 FROM faixa
 WHERE nroFaixa != 13;

 SELECT COUNT(*)
 FROM  faixa
 WHERE nroFaixa != 13 ;


 /*OPERADORES LOGICOS QUANDO PRECISAMOS DE MAIS DE UMA CONDIÇÃO
 AND - TUDO V   =  RETORNA V
 OR - TUDO F    =  RETORNA F */

 -- Sendo operador AND 

 -- Quais  cds da gravadora 2 com preco acima de 10 reais
 SELECT  nmCD, idGravadora, precoVenda
 FROM cd
 WHERE idGravadora = 2 AND  precoVenda > 10;

 -- MESMA COLUNA COM INTERVALOS DIFERENTES
-- QUAIS MUSICAS COM DURACAO ENTRE 3 E 5 MIN
SELECT *
FROM musica
WHERE duracao > '00:03' AND duracao < '00:05';

-- OPERADOR LÓGICO OR (=)
-- QUAIS AS MUSICAS (3,6,13,14,18,20,28,33,50)

SELECT * 
FROM musica
WHERE	idMusica = 3 OR
		idMusica = 6 OR
		idMusica = 13 OR
		idMusica = 14 OR
		idMusica = 18 OR
		idMusica = 20 OR
		idMusica = 28 OR
		idMusica = 33 OR
		idMusica = 50 ;

--QUAIS OS CDS QUE NAO TEM O PRECO MAIOR QUE 15 REAIS

SELECT *
FROM cd
WHERE NOT (precoVenda > 15) ;










