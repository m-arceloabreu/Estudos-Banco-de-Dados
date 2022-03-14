/*
DESAFIO
Quais as m�sicas com dura��o entre 5 e 9 minutos?
Quais as faixas 11, 13, 17, 33 e 50?
As gravadoras em ordem alfab�tica? 
Quais as categorias com menor pre�o maior que 20 e maior pre�o menor que 40?
*/

-- Musicas com dura��o entre 5 e 9 min  (duracao | musica)
SELECT *
FROM musica
WHERE duracao >'00:05' AND duracao < '00:09';
GO

 SELECT COUNT (*)
 FROM musica
 WHERE duracao > '00:05:00' AND duracao < '00:09';
 GO

-- Quais as faixas 11, 13, 17, 33 e 50 (nroFaixa | faixa)
SELECT *
FROM faixa
WHERE	nroFaixa = 11 OR
		nroFaixa = 13 OR
		nroFaixa = 17 OR
		nroFaixa = 33 OR
		nroFaixa = 50;

SELECT COUNT (*)
FROM faixa
WHERE	nroFaixa = 11 OR
		nroFaixa = 13 OR
		nroFaixa = 17 OR
		nroFaixa = 33 OR
		nroFaixa = 50;

--As gravadoras em ordem alfab�tica  (nmGravadora || gravadora)

SELECT *
FROM gravadora
ORDER BY nmGravadora ASC;



-- Quais as categorias com menor pre�o maior que 20 e maior pre�o menor que 40 (menorPreco, maiorPreco | cd_categoria)

SELECT *
FROM cd_categoria 
WHERE menorPreco > 20 AND maiorPreco < 40;

SELECT COUNT(*)
FROM cd_categoria
WHERE menorPreco > 20 AND maiorPreco <40;