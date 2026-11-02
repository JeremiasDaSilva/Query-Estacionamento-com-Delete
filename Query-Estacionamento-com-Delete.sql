CREATE DATABASE loja_de_carros;
USE loja_de_carros;

CREATE TABLE tbl_carros (
    placa_do_carro VARCHAR(7),
    marca VARCHAR(20),
    modelo VARCHAR(20),
    ano INT,
    combustivel VARCHAR(10),
    PRIMARY KEY (placa_do_carro)
);

INSERT INTO tbl_carros (placa_do_carro, marca, modelo, ano, combustivel) VALUES
  ('ABC1234', 'Ford', 'Corcel II', 1982, 'G'),
  ('JKG5678', 'Ford', 'Focus', 2001, 'A'),
  ('LKO8954', 'Renault', 'Clio', 2007, 'F'),
  ('MMS1609', 'VolksWagen', 'Fusca', 1973, 'G'),
  ('ASD123', 'Honda', 'Civic', 2010, 'F'),
  ('GTR4596', 'GM', 'Corsa', 2004, 'A'),
  ('GYE7820', 'Fiat', 'Palio', 2003, 'F'),
  ('BOA0011', 'GM', 'Kadette', 1993, 'G'),
  ('CVT3160', 'Volkswagen', 'Gol', 2000, 'G'),
  ('KRS9835', 'Ford', 'Fiesta', 2006, 'F');

SELECT * FROM tbl_carros;

CREATE TABLE tbl_vendedores (
    nome VARCHAR(30),
    placa_do_carro VARCHAR(7),
    cidade VARCHAR(15),
    codigo_do_vendedor INT,
    estado VARCHAR(2),
    comissao FLOAT,
    PRIMARY KEY (codigo_do_vendedor),
    FOREIGN KEY (placa_do_carro) REFERENCES tbl_carros (placa_do_carro) ON DELETE CASCADE
);

INSERT INTO tbl_vendedores (codigo_do_vendedor, nome, placa_do_carro, city, estado, comissao) VALUES
  (1, 'Juca da Silva', 'ABC1234', 'Pelotas', 'RS', 3.50),
  (3, 'Antonio Viera', 'JKG5678', 'Dois Vizinhos', 'PR', 5.00),
  (44, 'Julieta da SIlva', NULL, 'Verê', 'PR', 5.00),
  (6, 'Maria Francisca', 'LKO8954', 'Dois Vizinhos', 'PR', 2.50),
  (45, 'Marieta da Silva', NULL, 'Verê', 'PR', 2.80),
  (9, 'Juca Silva', NULL, 'Pelotas', 'RS', 3.50),
  (18, 'Maria Guedes', 'MMS1609', 'Brasilia', 'DF', 5.40),
  (2, 'Jian de Barros', 'ASD123', 'Curitiba', 'PR', 3.40),
  (28, 'Fagundes de Azevedo', NULL, 'Verê', 'PR', 2.80),
  (40, 'Ari Ribas', 'GTR4596', 'Erechim', 'RS', 3.50);

SELECT * FROM tbl_vendedores;

-- Updates
UPDATE tbl_vendedores SET placa_do_carro = 'BOA0011' WHERE codigo_do_vendedor = 9;
UPDATE tbl_vendedores SET placa_do_carro = 'CVT3160' WHERE codigo_do_vendedor = 28;
UPDATE tbl_vendedores SET placa_do_carro = 'GYE7820' WHERE codigo_do_vendedor = 44;
UPDATE tbl_vendedores SET placa_do_carro = 'KRS9835' WHERE codigo_do_vendedor = 45;

/*
  Deletes
          */

-- Deletar Civic e o vendedor Jian de Barros consequentemente
DELETE FROM tbl_carros WHERE placa_do_carro = 'ASD123';

-- Deletar Focus e o vendedor Antonio Viera consequentemente
DELETE FROM tbl_carros WHERE placa_do_carro = 'JKG5678';

-- Deletar Kadette e o vendedor Juca Silva consequentemente
DELETE FROM tbl_carros WHERE placa_do_carro = 'BOA0011';

-- Deletar Volkswagen e o vendedor Fagundes de Azevedo consequentemente
DELETE FROM tbl_carros WHERE placa_do_carro = 'CVT3160';

-- Deletar Ford e a vendedora Marieta da Silva consequentemente
DELETE FROM tbl_carros WHERE placa_do_carro = 'KRS9835';


-- Deletar o vendedor Juca da Silva (Corrigido para codigo_do_vendedor)
DELETE FROM tbl_vendedores WHERE codigo_do_vendedor = 1;

-- Deletar a vendedora Maria Francisca
DELETE FROM tbl_vendedores WHERE codigo_do_vendedor = 6;

-- Deletar a vendedora Maria Guedes
DELETE FROM tbl_vendedores WHERE codigo_do_vendedor = 18;

-- Deletar o vendedor Ari Ribas
DELETE FROM tbl_vendedores WHERE codigo_do_vendedor = 40;

-- Deletar a vendedora Julieta da SIlva
DELETE FROM tbl_vendedores WHERE codigo_do_vendedor = 44;
