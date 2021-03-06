CREATE DATABASE DB_LOJA_NOOBIES;

USE DB_LOJA_NOOBIES;

CREATE TABLE TB_CLIENTES(
	COD_CLIENTE INT NOT NULL AUTO_INCREMENT,
	NOME_CLIENTE VARCHAR(100) NOT NULL,
	CPF_CLIENTE VARCHAR(11) NOT NULL UNIQUE,    
    TELEFONE_CLIENTE VARCHAR(15) NOT NULL,
    EMAIL_CLIENTE VARCHAR(50) NOT NULL,
    
    CONSTRAINT PK_CLIENTE PRIMARY KEY(COD_CLIENTE)
);

CREATE TABLE TB_FUNCIONARIOS(
	COD_FUNCIONARIO INT NOT NULL AUTO_INCREMENT,
    LOGIN_SIST VARCHAR(20) NOT NULL UNIQUE,
    SENHA_SIST VARCHAR(20) NOT NULL,
	NOME_FUNCIONARIO VARCHAR(100) NOT NULL,
    CPF_FUNCIONARIO VARCHAR(11) NOT NULL,
	RG_FUNCIONARIO INT(9) NOT NULL,
	DATA_NASCIMENTO DATE,
    FILIAL_FUNCIONARIO VARCHAR (28),
    CARGO_FUNCIONARIO VARCHAR (20) NOT NULL,

	CONSTRAINT PK_FUNCIONARIOS PRIMARY KEY(COD_FUNCIONARIO)
);
    
CREATE TABLE TB_PRODUTOS(
	COD_PRODUTO INT NOT NULL AUTO_INCREMENT,
    
    NOME_PRODUTO VARCHAR(100) NOT NULL,
    DESCRICAO VARCHAR(100) NOT NULL,
    VALOR_COMPRA DECIMAL (10,2) NOT NULL,
    VALOR_VENDA DECIMAL (10,2) NOT NULL,
    QUANTIDADE INT NOT NULL,
    CATEGORIA VARCHAR(100) NOT NULL,
    
	CONSTRAINT PK_PRODUTOS PRIMARY KEY(COD_PRODUTO)
);
    
CREATE TABLE TB_VENDAS(
	COD_VENDA INT NOT NULL AUTO_INCREMENT,
	COD_PRODUTO INT NOT NULL,
    COD_FUNCIONARIO INT NOT NULL,
    CPF_CLIENTE VARCHAR(11),
    
    DATA_COMPRA TIMESTAMP NOT NULL,
    VALOR_TOTAL DECIMAL (10,2) NOT NULL,
    
    CONSTRAINT PK_VENDAS PRIMARY KEY(COD_VENDA),
    
    CONSTRAINT FK_VENDAS_PRODUTO FOREIGN KEY(COD_PRODUTO) REFERENCES DB_LOJA_NOOBIES.TB_PRODUTOS(COD_PRODUTO),
    CONSTRAINT FK_VENDAS_FUNCIONARIO FOREIGN KEY(COD_FUNCIONARIO) REFERENCES DB_LOJA_NOOBIES.TB_FUNCIONARIOS(COD_FUNCIONARIO),
    CONSTRAINT FK_VENDAS_CLIENTE FOREIGN KEY(CPF_CLIENTE) REFERENCES DB_LOJA_NOOBIES.TB_CLIENTES(CPF_CLIENTE)
	);
    
    select * from tb_vendas;
    
    insert into tb_funcionarios (nome_funcionario, login_sist, senha_sist, cpf_funcionario, rg_funcionario, data_nascimento, cargo_funcionario, filial_funcionario) values ('Victor', 'victor', '123', 12345678910, 123456789,20-5-2019,'Diretor','SP (MATRIZ)');
    