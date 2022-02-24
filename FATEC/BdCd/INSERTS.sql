use cdFatecNoite20221;

INSERT INTO autor (idAutor, nmAutor)
VALUES(1, 'Renato Russo');
INSERT INTO autor (idAutor, nmAutor)
VALUES(2, 'Tom Jobim');
INSERT INTO autor (idAutor, nmAutor)
VALUES(3, 'Chico Buarque');
INSERT INTO autor (idAutor, nmAutor)
VALUES(4, 'Dado Villa-Lobos');
INSERT INTO autor (idAutor, nmAutor)
VALUES(5, 'Marcelo Bonfá');
INSERT INTO autor (idAutor, nmAutor)
VALUES(6, 'Ico Ouro Preto');
INSERT INTO autor (idAutor, nmAutor)
VALUES(7, 'Vinicius de Moraes');


ALTER TABLE musica MODIFY 
duracao DECIMAL(4,2) NOT NULL;

INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(1, 'Será', '02.28');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(2, 'Ainda é Cedo', '02.55');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(3, 'Geração Coca-Cola', '02.20');

INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(4, 'Eduardo e Monica', '04.32');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(5, 'Tempo Perdido', '5.00');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(6, 'Indios', '04.23');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(7, 'Que País é Esse', '03.04');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(8, 'Faroeste Caboclo', '09.03');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(9, 'Há Tempos', '03.16');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(10, 'Pais e Filhos', '05.06');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(11, 'Meninos e Meninas', '03.22');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(12, 'Vento no Litoral', '06.05');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(13, 'Perfeição', '04.35');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(14, 'Giz', '03.20');

INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(15, 'Dezesseis', '05.28');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(16, 'Antes das Seis', '03.09');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(17, 'Meninos, eu Vi', '03.25');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(18, 'Eu te amo', '03.06');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(19, 'Piano na Mangueira', '02.23');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(20, 'A Violeira', '02.54');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(21, 'Anos Dourados', '02.56');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(22, 'Olha Maria', '03.55');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(23, 'Biscate', '03.20');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(24, 'Retrato em Preto e Branco', '03.03');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(25, 'Falando de Amor', '03.20');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(26, 'Pois é', '02.48');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(27, 'Noite dos Mascarados', '02.42');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(28, 'Sabiá', '03.20');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(29, 'Imagina', '02.52');
INSERT INTO musica (idMusica, nmMusica,duracao)
VALUES(30, 'Bate-Boca', '04.41');

INSERT INTO musicaautor
VALUES  (1 , 1),
		(1 , 4),
		(1 , 5),
        (2 , 1),
        (2 , 4),
        (2 , 5),
        (2 , 6),
        (3 , 1),
        (4 , 1),
        (5 , 1),
        (6 , 1),
        (7 , 1),
        (8 , 1),
        (9 , 1),
        (9 , 4),
        (10 , 1),
        (10 , 4),
        (10 , 5),
        (11 , 1),
        (11 , 4),
        (11 , 5),
        (12 , 1),
        (12 , 4),
        (12 , 5),
        (13 , 1),
		(13 , 4),
        (13 , 5),
        (14 , 1),
		(14 , 4),
        (14 , 5),
        (15 , 1),
		(15 , 4),
        (15 , 5),
        (16 , 1),
		(16 , 4),
        (16 , 5),
        (17 , 2),
		(17 , 3),
        (18 , 2),
		(18 , 3),
        (19 , 2),
		(19 , 3),
        (20 , 2),
		(20 , 3),
        (21 , 2),
		(21 , 3),
        (22 , 2),
		(22 , 3),
        (22 , 7),
        (23 , 3),
        (24 , 2),
		(24 , 3),
        (25 , 2),
		(26 , 2),
        (26 , 3),
		(27 , 3),
        (28 , 2),
		(28 , 3),
        (29 , 2),
		(29 , 3),
        (30 , 3);
        
        
INSERT INTO gravadora

VALUES(1, 'EMI', 'Rod. Dutra, km. 29,8', 1155659856, 1198657894, 'emi@emi-music.com.br'),

(2, 'Polygram', 'Rod. Imigrantes, km. 29,8', 11999659856, 11975957894, 'polygram@music.com.br'),

(3, 'BMG', 'Rod. Anchieta, km. 289,8', 11999654456, 11975957004, 'bmg@music.com.br'),

(4, 'Som Livre', 'Av. São José, km. 289,8', 11999657806, 11978957004, 'somlivre@music.com.br'),

(5, 'EPIC', 'Av. Alda, 89', 11958793321, 11989654789, 'epic@music.com.br');


INSERT INTO cd
/* AAAA - MMM-- DD ARRUMAR DADOS*/
VALUES(1, 1, 'Mais do Mesmo', -5.00, '03-02-1985', 1),
(2, 3, 'Bate Boca', -15.00, '07-08-1999', 2),
(3, 4, 'Elis Regina - Essa Mulher', -18.00, '25-05-1986', 3),
(4, 3, 'A força que nunca seca', 5.25, '15-07-1981', 4),
(5, 4, 'Perfil', 20.99, '02-01-1987', 5),
(6, 2, 'Barry Manilow Greastest Hits', 25.00, '18-12-1958', 1),
(7, 5, 'Listen Without Prejudice', 28.00, '11-06-1975', 7);
	
/*  VOLTAR EM 3H DA GRAVAÇÃO 
COMO UM CD SEMPRE INICIA COM FAIXA UM, o nroFaixa nao pode ser PK por isso precisamos excluir a PK
*/




/* 
*/
INSERT INTO faixa (idCD, nroFaixa, idMusica)
VALUES(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5),
(1, 6, 6),
(1, 7, 7),
(1, 8, 8),
(1, 9, 9),
(1, 10, 10),
(1, 11, 11),
(1, 12, 12),
(1, 13, 13),
(1, 14, 14),
(1, 15, 15),
(1, 16, 16),
(2, 1, 17),
(2, 2, 18),
(2, 3, 19),
(2, 4, 20),
(2, 5, 21),
(2, 6, 22),
(2, 7, 23),
(2, 8, 24),
(2, 9, 25),
(2, 10, 26),
(2, 11, 27),
(2, 12, 28),
(2, 13, 29),
(2, 14, 30);

/* 
COMO TEMOS NA TABELA FAIXA AS MESMAS COLUNAS DA TABELA ITEMCD
E POR NORMALIZAÇÃO NAO FAZ SENTIDO / NAO PODE HAVER TABELAS IGUAIS
VAMOS EXCLUIR A TABELA ITEMCD
*/
DROP TABLE itemcd;
INSERT INTO cdCategoria
VALUES(1, 10, 20),
(2, 20, 40),
(3, 30, 60),
(4, 11, 22),
(5, 15, 30),
(6, 25, 50),
(7, 21, 42),
(8, 22, 44),
(9, 9, 18),
(10, 5, 10);


    
		