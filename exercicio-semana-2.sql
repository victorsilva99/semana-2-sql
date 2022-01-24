/* Criação do Banco de dados*/
CREATE DATABASE semana2;
/* Criação da Tabela Modelo*/
CREATE TABLE Modelo
(
	Id_Modelo INT IDENTITY (1,1) PRIMARY KEY,
	Descricao VARCHAR(255),
	Nome VARCHAR(255)
);
/* Criação da Tabela Eixo*/
CREATE TABLE Eixo 
(
	Id_Eixo INT IDENTITY(1,1) PRIMARY KEY,
	Fab_Eixo CHAR(11),
	Id_Caminhao INT
);
/* Criação da Tabela Caminhao*/
CREATE TABLE Caminhao
(
	Num_Prod INT IDENTITY (1,1) PRIMARY KEY,
	Data_Fab CHAR(10),
	Id_Modelo INT FOREIGN KEY REFERENCES Modelo(Id_Modelo),
	Id_Eixo INT FOREIGN KEY REFERENCES Eixo(Id_Eixo) UNIQUE,
);
/* Criação da Chave Estrangeira (Id_Caminhao) da Tabela Eixo com a chave primária da tabela Caminhao (Num_Pro)*/
ALTER TABLE Eixo
ADD CONSTRAINT FK_Eixo_Caminhao FOREIGN KEY (Id_Caminhao) REFERENCES Caminhao (Num_Prod)

/* Inserção dados da tabela Modelo*/
INSERT INTO Modelo (Descricao, Nome) VALUES 
('Caminhão Pesado', 'Volvo FH 540'),
('Caminhão Pesado', 'Scania R450'),
('Caminhão Pesado', 'Volvo FH 460'),
('Caminhão Pesado', 'MB Actros 2651'),
('Caminhão Pesado', 'DAX XF 105'),
('Caminhão Pesado', 'SCANIA R500'),
('Caminhão Pesado', 'MB Axor 2544'),
('Caminhão Pesado', 'MB Axor 2546'),
('Caminhão Pesado', 'MB Axor 3344'),
('Caminhão Pesado', 'Volks Constellation 19.360');

/* Inserção de dados da tabela Eixo*/
INSERT INTO Eixo (Fab_Eixo) VALUES
('01/01/2022'),
('02/01/2022'),
('03/01/2022'),
('04/01/2022'),
('05/01/2022'),
('06/01/2022'),
('07/01/2022'),
('08/01/2022'),
('09/01/2022'),
('10/01/2022');

/* Inserção de dados da tabela Caminhao*/
INSERT INTO Caminhao (Data_Fab, Id_Modelo, Id_Eixo) VALUES
(GETDATE(),1,2);

SELECT * FROM Eixo

/* Exercicio 1*/
SELECT Num_Prod, Data_Fab, nome FROM caminhao
inner JOIN Modelo
ON caminhao.Id_Modelo = Modelo.Id_Modelo

/* Exercicio 2*/
SELECT Num_Prod, Data_Fab, Fab_Eixo FROM caminhao
inner JOIN Eixo
ON caminhao.Id_Eixo = Eixo.Id_Eixo

/* Exercicio 3*/
SELECT Num_Prod, Data_Fab, Fab_Eixo, nome FROM caminhao
inner JOIN Eixo
ON caminhao.Id_Eixo = Eixo.Id_Eixo
inner JOIN Modelo
ON caminhao.Id_Modelo = Modelo.Id_Modelo