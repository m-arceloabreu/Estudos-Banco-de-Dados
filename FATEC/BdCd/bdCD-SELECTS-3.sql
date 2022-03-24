/*
FUNÇÕES DE AGREGAÇÃO
TRATA DE DADOS ESTATISTICOS

COUNT() -> QUANTIDADE DE TUPLAS
SUM() -> SOMATÓRIA
AVG() -> MEDIA
MIN() -> MINIMO VALOR DENTRE
MAX() -> MAIOR VALOR 
STDEV() -> DESVIO PADRÃO
VAR() -> VARIANCIA

*/

-- SOMATORIA DO PRECO DOS CDS
SELECT *
FROM cd;
GO

SELECT SUM(precoVenda) Soma
FROM cd; 


-- Media, min, max
SELECT AVG(precoVenda)Media,MIN(precoVenda)MenorPreco,MAX(precoVenda)MaiorPreço, idGravadora
FROM cd
GROUP BY idGravadora;

SELECT AVG(precoVenda)Media, idGravadora
FROM cd
WHERE idGravadora > 2
GROUP BY idGravadora
HAVING AVG(precoVenda)>=12.50
ORDER BY idGravadora DESC;

SELECT *
FROM musicaAutor;
GO

-- Quantidade de Autor pra cada Musica
SELECT idMusica Musica, COUNT(*)QtdeAutor
FROM musicaAutor
GROUP BY idMusica;
GO

--QUANTIDADE DE MUSICA PRA CADA AUTOR
SELECT idAutor Autor, COUNT(*)QtdeMusica
FROM musicaAutor
GROUP BY idAutor;
GO

SELECT idCD, COUNT(*) TotalDeFaixas
FROM faixa
GROUP BY idCD;

SELECT VAR(precoVenda)Variancia, STDEV(precoVenda)DesvioPadrao, idGravadora
FROM cd
WHERE idGravadora IN (3,4)
GROUP BY idGravadora;


/*
FUNÇÕES DATA E HORA
Structs
data[
dia
mes
ano
hora
minuto
segundo
milisegundo
]
Somar data- DATEADD(parte, qtdSOmada, coluna), onde:
Parte - DAY, MONTH, YEAR, QUARTER(TRIMESTRE),WEEK, WEEKDAY, DAYOFYEAR, HOUR, MINUTE, SECONDE, MILLISECOND 
*/


SELECT DATEADD (DAY,15,dtLancto)Quinzena,DATEADD(MONTH,2,dtLancto)BIMESTRE,DATEADD(YEAR,10, dtLancto)Década, dtLancto
FROM cd;

SELECT DAY(dtLancto)Dia, MONTH(dtLancto)Mes, YEAR(dtLancto)ANO
FROM cd;

SELECT GETDATE();

SELECT DATEDIFF (YEAR,dtLancto,GETDATE())IdadesDosCds
FROM cd;

-- QUantos anos, meses e dias vc tem?

SELECT DATEDIFF (YEAR, '1997/01/20',GETDATE())ANOS,DATEDIFF(MONTH, '1997/01/20',GETDATE())MESES,DATEDIFF(DAY, '1997/01/20',GETDATE()) DIAS;