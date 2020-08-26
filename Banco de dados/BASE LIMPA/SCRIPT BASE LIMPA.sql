/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 24/08/2020 20:49:53          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

CREATE DATABASE 'LOCALHOST:C:\Users\Avell\Desktop\curso delphi udemy\ProjetoCursoBasico\Banco de dados\dados.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UTF8 COLLATION UTF8;



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_CIDADE_ID;
SET GENERATOR GEN_CIDADE_ID TO 6;

CREATE GENERATOR GEN_CLIENTE_ID;
SET GENERATOR GEN_CLIENTE_ID TO 19;

CREATE GENERATOR GEN_ESTADO_ID;
SET GENERATOR GEN_ESTADO_ID TO 4;

CREATE GENERATOR GEN_FORNECEDOR_ID;
SET GENERATOR GEN_FORNECEDOR_ID TO 3;

CREATE GENERATOR GEN_PRODUTO_ID;
SET GENERATOR GEN_PRODUTO_ID TO 6;

CREATE GENERATOR GEN_USUARIO_ID;
SET GENERATOR GEN_USUARIO_ID TO 7;

CREATE GENERATOR GEN_VENDA_ID;
SET GENERATOR GEN_VENDA_ID TO 15;

CREATE GENERATOR GEN_VENDA_ITEM_ID;
SET GENERATOR GEN_VENDA_ITEM_ID TO 23;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE CIDADE (
    ID_CIDADE    INTEGER NOT NULL,
    NOME         VARCHAR(60),
    COD_IBGE     INTEGER,
    DT_EXCLUIDO  DATE
);

CREATE TABLE CLIENTE (
    ID_CLIENTE    INTEGER NOT NULL,
    RAZAO_SOCIAL  VARCHAR(80),
    FANTASIA      VARCHAR(80),
    CPF_CNPJ      VARCHAR(20),
    TIPO_FJ       VARCHAR(1),
    NOME          VARCHAR(80),
    EMAIL         VARCHAR(255),
    SITE          VARCHAR(255),
    ENDERECO      VARCHAR(255),
    COMPLEMENTO   VARCHAR(40),
    NUMERO        VARCHAR(20),
    BAIRRO        VARCHAR(50),
    IE            VARCHAR(30),
    IM            VARCHAR(30),
    DT_EXCLUIDO   DATE,
    ID_CIDADE     INTEGER,
    ID_ESTADO     INTEGER
);

CREATE TABLE ESTADO (
    ID_ESTADO    INTEGER NOT NULL,
    NOME         VARCHAR(60),
    COD_UF       VARCHAR(2),
    DT_EXCLUIDO  DATE
);

CREATE TABLE FORNECEDOR (
    ID_FORNECEDOR  INTEGER NOT NULL,
    RAZAO_SOCIAL   VARCHAR(80),
    FANTASIA       VARCHAR(80),
    CNPJ           VARCHAR(20),
    ENDERECO       VARCHAR(255),
    BAIRRO         VARCHAR(50),
    ID_CIDADE      INTEGER,
    ID_ESTADO      INTEGER,
    EMAIL          VARCHAR(255),
    DT_EXCLUIDO    DATE
);

CREATE TABLE PRODUTO (
    ID_PRODUTO     INTEGER NOT NULL,
    DESCRICAO      VARCHAR(80),
    QTDE           FLOAT,
    CUSTO          FLOAT,
    V_UNITARIO     FLOAT,
    UNIDADE        VARCHAR(4),
    PESO_LIQUIDO   FLOAT,
    PESO_BRUTO     FLOAT,
    FABRICANTE     VARCHAR(60),
    MARCA_MODELO   VARCHAR(255),
    ID_FORNECEDOR  INTEGER,
    DT_EXCLUIDO    DATE
);

CREATE TABLE USUARIO (
    ID_USUARIO   INTEGER NOT NULL,
    NOME         VARCHAR(40),
    LOGIN        VARCHAR(20),
    SENHA        VARCHAR(255),
    DT_EXCLUIDO  DATE
);

CREATE TABLE VENDA (
    ID_VENDA     INTEGER NOT NULL,
    ID_CLIENTE   INTEGER,
    DT_EMISSAO   DATE,
    FATURADO     VARCHAR(1),
    DT_FATURADO  DATE,
    DT_EXCLUIDO  DATE
);

CREATE TABLE VENDA_ITEM (
    ID_VENDA_ITEM   INTEGER NOT NULL,
    ID_PRODUTO      INTEGER,
    QTDE            FLOAT,
    VALOR_UNITARIO  FLOAT,
    DESCONTO        FLOAT,
    ID_VENDA        INTEGER,
    DT_EXCLUIDO     DATE
);

INSERT INTO USUARIO (ID_USUARIO, NOME, LOGIN, SENHA, DT_EXCLUIDO) VALUES (3, 'EDENILSON', 'EDENILSON', '1A13090A74E850', NULL);

COMMIT WORK;



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE CIDADE ADD PRIMARY KEY (ID_CIDADE);
ALTER TABLE CLIENTE ADD PRIMARY KEY (ID_CLIENTE);
ALTER TABLE ESTADO ADD PRIMARY KEY (ID_ESTADO);
ALTER TABLE FORNECEDOR ADD PRIMARY KEY (ID_FORNECEDOR);
ALTER TABLE PRODUTO ADD PRIMARY KEY (ID_PRODUTO);
ALTER TABLE USUARIO ADD PRIMARY KEY (ID_USUARIO);
ALTER TABLE VENDA ADD PRIMARY KEY (ID_VENDA);
ALTER TABLE VENDA_ITEM ADD PRIMARY KEY (ID_VENDA_ITEM);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_1 FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE (ID_CIDADE);
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_2 FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO (ID_ESTADO);
ALTER TABLE FORNECEDOR ADD FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO (ID_ESTADO);
ALTER TABLE FORNECEDOR ADD FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE (ID_CIDADE);
ALTER TABLE PRODUTO ADD FOREIGN KEY (ID_FORNECEDOR) REFERENCES FORNECEDOR (ID_FORNECEDOR);
ALTER TABLE VENDA ADD CONSTRAINT FK_ID_CLIENTE_VENDA FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE);
ALTER TABLE VENDA_ITEM ADD CONSTRAINT FK_ID_PRODUTO_V_ITEM FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTO (ID_PRODUTO);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: CIDADE_BI */
CREATE TRIGGER CIDADE_BI FOR CIDADE
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_cidade is null) then
    new.id_cidade = gen_id(gen_cidade_id,1);
end
^

/* Trigger: CLIENTE_BI */
CREATE TRIGGER CLIENTE_BI FOR CLIENTE
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_cliente is null) then
    new.id_cliente = gen_id(gen_cliente_id,1);
end
^

/* Trigger: ESTADO_BI */
CREATE TRIGGER ESTADO_BI FOR ESTADO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_estado is null) then
    new.id_estado = gen_id(gen_estado_id,1);
end
^

/* Trigger: FORNECEDOR_BI */
CREATE TRIGGER FORNECEDOR_BI FOR FORNECEDOR
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_fornecedor is null) then
    new.id_fornecedor = gen_id(gen_fornecedor_id,1);
end
^

/* Trigger: PRODUTO_BI */
CREATE TRIGGER PRODUTO_BI FOR PRODUTO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_produto is null) then
    new.id_produto = gen_id(gen_produto_id,1);
end
^

/* Trigger: USUARIO_BI */
CREATE TRIGGER USUARIO_BI FOR USUARIO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_usuario is null) then
    new.id_usuario = gen_id(gen_usuario_id,1);
end
^

/* Trigger: VENDA_BI */
CREATE TRIGGER VENDA_BI FOR VENDA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_venda is null) then
    new.id_venda = gen_id(gen_venda_id,1);
end
^

/* Trigger: VENDA_ITEM_BI */
CREATE TRIGGER VENDA_ITEM_BI FOR VENDA_ITEM
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_venda_item is null) then
    new.id_venda_item = gen_id(gen_venda_item_id,1);
end
^

SET TERM ; ^
