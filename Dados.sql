


INSERT INTO Modelo (Nome, Descricao) VALUES ('Accelo', 'Caminhão de pequeno porte')
INSERT INTO Modelo (Nome, Descricao) VALUES ('550', 'Caminhão de pequeno médio')
INSERT INTO Modelo (Nome, Descricao) VALUES ('1100', 'Caminhão de pequeno porte')

INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-21', (SELECT IdModelo FROM Modelo WHERE Nome = 'Accelo'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-21', (SELECT IdModelo FROM Modelo WHERE Nome = '550'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-21', (SELECT IdModelo FROM Modelo WHERE Nome = '1100'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-22', (SELECT IdModelo FROM Modelo WHERE Nome = 'Accelo'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-22', (SELECT IdModelo FROM Modelo WHERE Nome = '550'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-22', (SELECT IdModelo FROM Modelo WHERE Nome = '1100'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-23', (SELECT IdModelo FROM Modelo WHERE Nome = 'Accelo'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-23', (SELECT IdModelo FROM Modelo WHERE Nome = '550'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-23', (SELECT IdModelo FROM Modelo WHERE Nome = '1100'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-24', (SELECT IdModelo FROM Modelo WHERE Nome = 'Accelo'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-24', (SELECT IdModelo FROM Modelo WHERE Nome = '550'))
INSERT INTO Caminhao (DataFabricao, IdModelo) VALUES ('2021-04-24', (SELECT IdModelo FROM Modelo WHERE Nome = '1100'))

INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-21')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-22')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-22')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-22')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-22')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-22')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-22')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-22')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-23')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-24')
INSERT INTO Eixo (DataFabricacao) VALUES ('2021-04-24')

INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (1, 1)
INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (1, 2)

INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (2, 3)
INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (2, 4)

INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (3, 5)
INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (3, 6)

INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (4, 7)
INSERT INTO CaminhaoEixo (NumeroProducaoCaminhao, NumeroProducaoEixo) VALUES (4, 8)