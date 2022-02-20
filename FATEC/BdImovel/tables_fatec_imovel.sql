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
    nr_cpfcomprador VARCHAR(11) NOT NULL,
    cd_cidade INTEGER NOT NULL,
    cd_bairro INTEGER NOT NULL,
    sg_estado INTEGER NOT NULL,
    tel_comprador NUMERIC(11,0) NOT NULL,
    FOREIGN KEY (cd_cidade)
    REFERENCES cidade(cd_cidade),
    FOREIGN KEY (cd_bairro)
    REFERENCES bairro(cd_bairro),
    FOREIGN KEY (sg_estado)
    REFERENCES estado(sg_estado)
    );

CREATE TABLE vendedor (
	cd_vendedor INTEGER NOT NULL PRIMARY KEY,
    nm_vendedor VARCHAR (50) NOT NULL,
    nm_endereco VARCHAR(255) NOT NULL,
    nr_cpf VARCHAR(11) NOT NULL,
    cd_cidade INTEGER NOT NULL,
    cd_bairro INTEGER NOT NULL,
    sg_estado INTEGER NOT NULL,
    telefone NUMERIC(11,0) NOT NULL,
    data_nasc DATE NOT NULL,
    FOREIGN KEY (cd_cidade)
    REFERENCES cidade(cd_cidade),
    FOREIGN KEY (cd_bairro)
    REFERENCES bairro(cd_bairro),
    FOREIGN KEY (sg_estado)
    REFERENCES estado(sg_estado)
);
CREATE TABLE faixa_imovel(
	cd_faixa INTEGER NOT NULL PRIMARY KEY,
    nm_faixa VARCHAR (50) NOT NULL,
    vl_minimo DECIMAL (11,2) NOT NULL,
    vl_maximo DECIMAL (11,2) NOT NULL
);
CREATE TABLE oferta(
	cd_oferta INTEGER NOT NULL PRIMARY KEY,
    cd_imovel INTEGER NOT NULL,
    cd_comprador INTEGER NOT NULL,
    vl_oferta INTEGER NOT NULL,
    dt_oferta DATE NOT NULL,
    FOREIGN KEY (cd_comprador)
    REFERENCES comprador(cd_comprador),
    FOREIGN KEY (cd_imovel)
    REFERENCES imovel(cd_imovel)
);

CREATE TABLE imovel (
	cd_imovel INTEGER NOT NULL PRIMARY KEY,
    cd_vendedor INTEGER NOT NULL,
    cd_bairro INTEGER NOT NULL,
    cd_cidade INTEGER NOT NULL,
    sg_estado INTEGER NOT NULL,
    nm_endereco VARCHAR(255) NOT NULL,
    nr_areautil NUMERIC(10,2) NOT NULL,
    nr_areatotal NUMERIC (10,2) NOT NULL,
    vl_preco NUMERIC (11,2) NOT NULL,
    st_vendido BIT NOT NULL,
    data_lancto DATE NOT NULL,
    cd_oferta INTEGER NOT NULL,
    FOREIGN KEY (cd_cidade)
    REFERENCES cidade(cd_cidade),
    FOREIGN KEY (cd_bairro)
    REFERENCES bairro(cd_bairro),
    FOREIGN KEY (sg_estado)
    REFERENCES estado(sg_estado),
    FOREIGN KEY (cd_vendedor)
    REFERENCES vendedor(cd_vendedor),
    FOREIGN KEY (cd_oferta)
    REFERENCES oferta(cd_oferta)
);
    

