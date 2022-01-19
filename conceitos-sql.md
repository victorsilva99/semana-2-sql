# SQL - STRUCTURE QUERY LANGUAGE

- **Linguagem de Consulta Estruturada.**
- Usada para realizar a comunicação com um banco de dados.
- Padrão em bancos de dados relacionais.
- Permite efetuar tarefas como:
  - Inserir registros;
  - Atualizar informações;
  - Excluir dados de dados;
  - Consultar informações armazenadas de dados;
  - Gerenciar permissões e segurança.

- Inicialmente conhecida como Structured English Query Language (SEQUEL), SQL é uma linguagem de consulta criada pela IBM na década de 70, onde basicamente você pode dar comandos/instruções ao meio ambiente do banco de dados, e ele irá te retornar uma *query*(solicitação). A ideia inicial era que o SQL fosse uma linguagem universal, porém com o passar do tempo as empresas começaram a fazer incrementos que acabaram segmentando a linguagem. Isso fez que no mercado houvessem várias linguagens SQL, criando muita incompatibilidade. Com isso, na década de 80, os órgãos ANSI e ISO decidiram criar uma padronização, assim algumas soluções indicam com ANSI SQL, mostrando que há compatibilidade com o SQL padronizado.

- Exemplos de soluções de Banco de dados SQL:
**Pagas**: Oracle Database, IBM DB2, Microsoft SQL Server;
**Free**: MySQL, MariaDB, Firebird, PostgreSQL.

## Categorias da linguagem SQL

### DML / LMD: Data Manipulation Language

- Linguagem de manipulação de dados;
- Comandos DML são comandos que tratam do conteúdo dos dados. Eles alteram as informações em um banco de dados SQL. Seus comandos mais usados, são:
  - SELECT;
  - INSERT;
  - DELETE;
  - UPDATE.

### DDL / LDD: Data Definition Language

- **Data Definition Language** = Linguagem de Definição de Dados.
- Utilizamos para manipular elementos do banco de dados como as *tabelas*, *índices*, *views*, *stored procedures*.
- Ela representa um conjunto de definições na qual um banco de dados é especificado.
- São comandos que criam ou alteram as estruturas das tabelas onde os dados estão armazenados. Seus comandos mais comuns são:
  - CREATE;
  - ALTER;
  - DROP.

- São acionados em situações de atualização de sistemas, Geralmente, são executados pela figura do DBA (Database Administrator).

### DCL / LCD: Data Control Language

- Linguagem de controle de dados;
- São usados pelo administrador do banco de dados para dar as permissões de acesso, conforme determinado no processo de modelagem do sistema e pelos seus gestores. Seus comandos mais usados, são:
  - GRANT;
  - REVOKE.

- Esses comandos geralmente ficam sob a atribuição do DBA, como responsável pela segurança do ambiente de banco de dados SQL.

### DTL: Data Transaction Language

- São comandos que controlam as transações no banco de dados. A forma como um banco de dados relacional implementa a consistência de seus dados se dá por meio dessas transações, esse comandos são:
  - COMMIT;
  - REVOKE.

- O isolamento das transações é baseado no seguinte princípio: ou uma alteração nos dados é concluída totalmente ou os dados devem retornar à situação original antes da mudança.
