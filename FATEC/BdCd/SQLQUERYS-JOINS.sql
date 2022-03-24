use bd_cdFatec20221

/*
FUNÇÕES STRING
UPPER() -> converte maiusculo,
LEFT() -> pega inicio da palavra
RIGHT() -> pega fim da palavra
LEN() -> converte em tamanho de Char
ASCII() -> converte em codigo ASCII

matemáticas
ROUND() -> ARREDONDA
ABS() -> TRANSFORMA EM VALOR ABSOLUTO

SUBQUERY:
ENCADEAMENTO DO SELECT
OPERADORES 
	DE LINHA (RELACIONAIS )
	DE GRUPO (IN, ANY, ALL)

UNION: UNIAO DE TABELAS
UNION ALL E UNION (+)
INTERSECT ( O QUE HÁ EM COMUM )
EXCEPT (EXCEÇÃO)

JOIN -> RELACIONAMENTO ENTRE TABELAS
*/


SELECT UPPER(nmMusica)Maiuscula, LOWER (nmMusica) MINUSCULA, nmMusica
FROM musica;
GO

select * from gravadora
where lower(left(endereco,3)) = 'rod';

select * 
from gravadora
where lower(right(url,3)) = 'com';

select left(nmMusica,3) from musica;


select * 
from musica
where len(nmmusica) >= 20;

select * from cd;

select round(Precovenda,2) 
from cd;

SELECT LEFT (nmMusica, 3)
FROM musica;



SELECT *
FROM musica
WHERE LEN(nmMusica)>=20;
go

SELECT ROUND (precoVenda, 1), precoVenda
FROM cd;

/*SUBQUERIES encadeamento de SELECT
TUDO O QUE EU QUERO VER ESTA NO PRIMEIRO SELECT
TODOS OS FILTROS SEGUINTES VC AFUNILA AS ESPECIFICIDADE DO QUE QUER
REGRA: NO FILTRO DO PRIMEIRO SELECT A COLUNA TEM QUE SE REPETIR NO SELECT SEGUINTE E DEVE ESTAR INTERLIGADA
PELO OPERADOR IN
*/


--Qual a musica do cd 1

/* PARA FAZER UNIÃO DE TABELAS
REGRA: A QUANTIDADE DE COLUNAS E TIPOS DE COLUNAS DO SELECT
TEM QUE SER IGUAL.
*/
SELECT idMusica, nmMusica
FROM musica
WHERE idMusica IN (SELECT idMusica
				   FROM faixa
				   WHERE idCD = 1)
UNION ALL
SELECT idcD, nmCD
FROM cd
WHERE idCD IN (SELECT idCD
				   FROM faixa
				   WHERE idCD = 1);


/* --JOIN
REGRA: PRECISA TER RELACIONAMENTO E
REFERENCIA TABELAS COM USO DO  OPERADOR .
TABELA.COLUNA
*/


SELECT musica.idMusica, musica.nmMusica,cd.idCD,cd.nmCD
FROM musica,cd,faixa
WHERE musica.idMusica = faixa.idMusica AND
	  faixa.idCD = cd.idCD AND
	  faixa.idCD = 1;

/* 
Para tratar de join existem duas maneiras de trabalhar
Intersecção de Dados INNER JOIN
UNIÃO/ INTERSERCÇÃO/ EXCESSÃO (IS NULL ) DE DADOS LEFT OU RIGHT OUTER JOIN

EU VEJO SE USO RIGHT OU LEFT DE ACORDO COM O QUE TA NO FROM
QUANDO APONTO PARA A PK  REALIZO A OPERAÇÃO UNIAO
QUANDO APONTO PARA A FK  REALIZO A OPERAÇÃO INTERSECÇÃO
-- QUAIS AS GRAVADORAS QUE TEM  CDS COM MUSICAS
*/
SELECT gravadora.nmGravadora, cd.nmCD
FROM gravadora INNER JOIN cd
ON gravadora.idGravadora = cd.idGravadora
INNER JOIN faixa
ON cd.idCD = faixa.idCD;
GO


-- QUAIS AS GRAVADORAS QUE TEM  CDS COM MUSICAS
/*  
--QUANDO APONTO PARA A FK  REALIZO A OPERAÇÃO INTERSECÇÃO --*/
SELECT gravadora.nmGravadora, cd.nmCD
FROM gravadora RIGHT OUTER JOIN cd
ON gravadora.idGravadora = cd.idGravadora
RIGHT OUTER JOIN faixa
ON cd.idCD = faixa.idCD;
GO

--QUANDO APONTO PARA A PK  REALIZO A OPERAÇÃO UNIAO --*/
SELECT gravadora.nmGravadora, cd.nmCD
FROM gravadora LEFT OUTER JOIN cd
ON gravadora.idGravadora = cd.idGravadora
LEFT OUTER JOIN faixa
ON cd.idCD = faixa.idCD;
GO

--SÓ SE FAZ EXCESSÃO QUANDO APARECE NULL, COM UNIAO NO CASO

SELECT gravadora.nmGravadora, cd.nmCD
FROM gravadora LEFT OUTER JOIN cd
ON gravadora.idGravadora = cd.idGravadora
LEFT OUTER JOIN faixa
ON cd.idCD = faixa.idCD
WHERE cd.nmCD IS NULL;
GO

-- QUAIS AS MUSICAS, AUTORES, GRAVADORAS, CDS E FAIXAS USADOS NA GRAVAÇÃO DO CDS 1 E 2

SELECT m.nmMusica, a.nmAutor, g.nmGravadora, c.nmCD, f.nroFaixa
FROM autor a INNER JOIN musicaAutor ma
ON a.idAutor = ma.idAutor
INNER JOIN musica m 
ON ma.idMusica = m.idMusica
INNER JOIN faixa f
ON m.idMusica = f.idMusica
INNER JOIN cd c
ON f.idCD = c.idCD
INNER JOIN gravadora G
ON c.idGravadora = g.idGravadora
WHERE f.idCD IN (1,2);
GO

-- QUAIS AS MUSICAS, AUTORES, GRAVADORAS, CDS E FAIXAS NAO SAO USADOS NA GRAVAÇÃO DO CDS 1 E 2

SELECT m.nmMusica, a.nmAutor, g.nmGravadora, c.nmCD, f.nroFaixa
FROM autor a LEFT OUTER JOIN musicaAutor ma
ON a.idAutor = ma.idAutor
RIGHT OUTER JOIN musica m 
ON ma.idMusica = m.idMusica
LEFT OUTER JOIN faixa f
ON m.idMusica = f.idMusica
RIGHT OUTER JOIN cd c
ON f.idCD = c.idCD
RIGHT OUTER JOIN gravadora G
ON c.idGravadora = g.idGravadora
WHERE f.idCD IN (1,2);
GO



SELECT m.nmMusica, a.nmAutor, g.nmGravadora, c.nmCD, f.nroFaixa
FROM autor a LEFT OUTER JOIN musicaAutor ma
ON a.idAutor=ma.idAutor
RIGHT OUTER JOIN musica m
ON ma.idMusica=m.idMusica
LEFT OUTER JOIN faixa f
ON m.idMusica=f.idMusica
RIGHT OUTER JOIN cd c
ON f.idCD=c.idCD
RIGHT OUTER JOIN gravadora g
ON c.idGravadora=g.idGravadora
WHERE m.nmMusica IS NULL
AND a.nmAutor IS NULL
AND c.nmCD IS NULL
AND f.nroFaixa IS NULL;

