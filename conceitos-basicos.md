# 10 CONCEITOS BÁSICOS DE BANCO DE DADOS

## 1. Definição de banco de dados

- Coleção organizada de dados, armazenados em meio eletrônico e que se relacionam de alguma forma, permitindo efetuar consultas que retornam os dados armazenados, de diversas maneiras distintas.
- Arquivo(s) armazenado(s) em algum meio, gerenciado por algum sistema específico de software, e utilizado por aplicações que acessam os dados armazenados.
- O mesmo que **base de dados (Database)**

## 2. SGBD

- **Sistema de Gerenciamento e Banco de Dados.**
- Conjunto de softwares e ferramentas que faz a interação entre aplicações, usuários e banco de dados.
- Permite realizar consultas e enviar comandos ao BD.
- **NÃO** é o banco de dados em si, mas um sistema de acesso.
- Exemplos:
  - Oracle Database;
  - MySQL Server;
  - Microsoft SQL Server;
  - IBM DB2;

## 3. Importância da Modelagem de dados

- **Processo crucial no projeto de um banco de dados.**
- Permite determinar as tabelas com seus atributos e relacionamentos que comporão o BD (Banco de Dados).
- Elimina redundâncias e dados sem interesse.
- Aplicar regras de negócios de acordo com a real necessidade do cliente.
- Evita problemas futuros com retrabalho e eventual perda de dados.

## 4. Tabelas, linhas e colunas

- **Coluna:** Domínio de valores de um tipo específico (definição técnica).  
É uma informação que você quer armazenar no banco de dados.  
Dependendo do estágio da modelagem também é conhecida como **Atributo**.  
EX: Nome_Prod, Nome_Cliente, Valor_Prod, Endereco.
- **Linha:** Trata-se de um conjunto de valores de colunas relacionados, conhecido por vezes também como **tupla** ou **registro**.  
- **Tabela:** Resultado do cruzamento de linhas e colunas. É uma coleção de **linhas (registros)** em um banco de dados relacional, que armazena dados referentes a uma **entidade (assunto)** em particular.  

![Exemplo](./img/exemplo-tabela.png)

## 5. SQL - Structured Query Language

- **Linguagem de Consulta Estruturada.**
- Usada para realizar a comunicação com um banco de dados.
- Padrão em bancos de dados relacionais.
- Permite efetuar tarefas como:
  - Inserir registros;
  - Atualizar informações;
  - Excluir dados de dados;
  - Consultar informações armazenadas de dados;
  - Gerenciar permissões e segurança;

## 6. Chave

- Uma ou mais colunas de uma relação cujos valores são usados para identificar de forma exclusiva uma linha ou conjunto de linhas.
- Pode ser:
  - Alternativa;
  - Candidata;
  - Composta;
  - Estrangeira; **(FK - Foreign Key)** // Chaves mais importantes, usadas para criar
  - Primária; **(PK - Primary Key)**   //  relacionamento entre as tabelas.
  - Substituta (Surrogada - Surrogate);

![Exemplo](./img/exemplo-chaves.png)

## 7. Índices

- Estrutura de dados empregada para **otimizar a seleção de um conjunto específico de colunas** em um banco de dados relacional.
- Uma das ferramentas de otimização mais conhecidas e utilizadas pelos desenvolvedores de bancos de dados.
- Indexação em tabelas **pode aumentar significativamente a performance em consultas** ao banco de dados.
- Porém, **pode diminuir a velocidade de transações** como *inserts* e *updates*.

## 8. Backup e Restauração

- **Operações de extrema importância em um BD.**
- Backup é uma cópia de segurança de dados que pode ser utilizada para realizar REstauração em caso de perda ou corrupção dos dados originais.
- Importante não apenas no contexto de BD, mas para toda e qualquer forma de armazenamento de dados / arquivos.
- Deve ser realizado periodicamente, e o melhor cenário é nunca precisar realizar a restauração.

## 9. DER

- **Diagrama Entidade-Relacionamento.**
- Diagrama de modelagem de dados que **permite visualizar a interação entre entidades (tabelas), atributos (colunas) e seus relacionamentos.**
- Derivador do MER, ajuda no processo de implementação do BD, sendo um artefato importante para a criação de um modelo físico.
- Pode ser criado com ferramentas específicas como **ERWin, Astah, Visual Paradigm, LucidChart** ou mesmo "na unha".

## 10. Bancos Não-Relacionais

- **No-SQL** - Classe de sistemas de bancos de dados que incorporam outras formas de consultas distintas do SQL tradicional, e que não utilizam estruturas relacionais tradicionais.
EX:
  - MongoDB
  - Cassandra
  - HBase
  - Neo4j
  - Redis

***

## Fonte

- Fábio dos Reis, Bóson Treinamentos - [https://youtu.be/2E7crqRI1iE]
