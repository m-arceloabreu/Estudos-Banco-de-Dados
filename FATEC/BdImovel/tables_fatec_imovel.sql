use fatec_imovel;

CREATE TABLE estado(
	sg_estado INTEGER NOT NULL  PRIMARY KEY,
    nm_estado VARCHAR (50) NOT NULL
);

CREATE TABLE cidade(
	cd_cidade INTEGER NOT NULL PRIMARY KEY,
    nm_cidade VARCHAR (50) NOT NULL,
    sg_estado INTEGER NOT NULL,
    FOREIGN KEY(sg_estado) REFERENCES estado(sg_estado)
    );

CREATE TABLE bairro(
	cd_bairro INTEGER NOT NULL PRIMARY KEY,
    nm_bairro VARCHAR (50) NOT NULL,
    cd_cidade INTEGER NOT NULL,
    sg_estado INTEGER NOT NULL,
    FOREIGN KEY (cd_cidade) 
	REFERENCES cidade(cd_cidade),
    FOREIGN KEY (sg_estado) 
	REFERENCES estado(sg_estado)
);

CREATE TABLE compradores(
	cd_comprador INTEGER NOT NULL PRIMARY KEY,
    nm_comprador VARCHAR (50) NOT NULL,
    nm_enderecocomprador VARCHAR(255) NOT NULL,
    nr_cpfcomprador INTEGER
)

