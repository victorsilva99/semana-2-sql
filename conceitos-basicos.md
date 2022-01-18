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

![Exemplo] (/img/exemplo-tabela.png)
