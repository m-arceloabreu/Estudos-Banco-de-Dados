create database fatec_imovel;
use fatec_imovel;


CREATE TABLE estado(
	sgEstado CHAR(2) NOT NULL  PRIMARY KEY,
    nmEstado VARCHAR (50) NOT NULL
);

CREATE TABLE cidade(
	cdCidade INTEGER NOT NULL PRIMARY KEY,
    nmCidade VARCHAR (50) NOT NULL,
    sgEstado CHAR(2) NOT NULL,
    FOREIGN KEY(sgEstado) REFERENCES estado(sgEstado)
    );

CREATE TABLE bairro(
	cdBairro INTEGER NOT NULL PRIMARY KEY,
    nmBairro VARCHAR (50) NOT NULL,
    cdCidade INTEGER NOT NULL,
    sgEstado CHAR(2) NOT NULL,
    FOREIGN KEY (cdCidade) 
	REFERENCES cidade(cdCidade),
    FOREIGN KEY (sgEstado) 
	REFERENCES estado(sgEstado)
);

CREATE TABLE comprador(
	cdComprador INTEGER NOT NULL PRIMARY KEY,
    nmComprador VARCHAR (50) NOT NULL,
    nmEnderecoComprador VARCHAR(100) NOT NULL,
    nrCpfcomprador NUMERIC(11,0) NOT NULL,
    cdCidade INTEGER NOT NULL,
    cdBairro INTEGER NOT NULL,
    sgEstado CHAR(2) NOT NULL,
    telComprador NUMERIC(11,0) NOT NULL,
    FOREIGN KEY (cdCidade)
    REFERENCES cidade(cdCidade),
    FOREIGN KEY (cdBairro)
    REFERENCES bairro(cdBairro),
    FOREIGN KEY (sgEstado)
    REFERENCES estado(sgEstado)
    );

CREATE TABLE vendedor (
	cdVendedor INTEGER NOT NULL PRIMARY KEY,
    nmVendedor VARCHAR (50) NOT NULL,
    nmEndereco VARCHAR(100) NOT NULL,
    nrCpf VARCHAR(11) NOT NULL,
    cdCidade INTEGER NOT NULL,
    cdBairro INTEGER NOT NULL,
    sgEstado CHAR(2) NOT NULL,
    telefone DECIMAL(11,0) NOT NULL,
    dataNasc DATE NOT NULL,
    FOREIGN KEY (cdCidade)
    REFERENCES cidade(cdCidade),
    FOREIGN KEY (cdBairro)
    REFERENCES bairro(cdBairro),
    FOREIGN KEY (sgEstado)
    REFERENCES estado(sgEstado)
);
CREATE TABLE imovel (
	cdImovel INTEGER NOT NULL PRIMARY KEY,
    cdVendedor INTEGER NOT NULL,
    cdBairro INTEGER NOT NULL,
    cdCidade INTEGER NOT NULL,
    sgEstado CHAR(2) NOT NULL,
    nmEndereco VARCHAR(255) NOT NULL,
    nrAreaUtil DECIMAL(11,2) NOT NULL,
    nrAreaTotal DECIMAL (11,2) NOT NULL,
    stVendido BIT NOT NULL,
    vlPreco NUMERIC (10,2) NOT NULL,
    dataLancto DATE NOT NULL,
    
	FOREIGN KEY (cdVendedor)
    REFERENCES vendedor(cdVendedor),
    FOREIGN KEY (cdCidade)
    REFERENCES cidade(cdCidade),
    FOREIGN KEY (cdBairro)
    REFERENCES bairro(cdBairro),
    FOREIGN KEY (sgEstado)
    REFERENCES estado(sgEstado)
    
);
CREATE TABLE oferta(
	cdOferta INTEGER NOT NULL PRIMARY KEY,
    cdImovel INTEGER NOT NULL,
    cdVendedor INTEGER NOT NULL,
    cdComprador INTEGER NOT NULL,
    vlOferta INTEGER NOT NULL,
    dtOferta DATE NOT NULL,
    stVendido BIT NOT NULL,
    FOREIGN KEY (cdImovel)
    REFERENCES imovel(cdImovel),
    FOREIGN KEY (cdComprador)
    REFERENCES comprador(cdComprador),
    FOREIGN KEY (cdVendedor)
    REFERENCES vendedor(cdVendedor)
);
CREATE TABLE faixa_imovel(
	cd_faixa INTEGER NOT NULL PRIMARY KEY,
    nm_faixa VARCHAR (50) NOT NULL,
    vl_minimo DECIMAL (8,2) NOT NULL,
    vl_maximo DECIMAL (11,2) NOT NULL
);




    

