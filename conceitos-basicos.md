# CONCEITOS DE BANCO DE DADOS

## Dado

- **Fato do mundo real** que está registrado.
Ex: Endereço, Data.

## Informação

- **Fato útil** que pode ser extraído **direta ou indiretamente** a partir dos dados.
EX: Endereço de entrega, Idade.

## Banco de dados (DB - Database ou BD Banco de dados)

- **Coleção organizada de dados, inter-relacionados e persistentes** que representa um subconjunto dos fatos presente em um domínio de aplicação (universo de discurso), onde são armazenados em meio eletrônico, permitindo efetuar consultas que retornam os dados armazenados, de diversas maneiras distintas.
- Arquivo(s) armazenado(s) em algum meio, gerenciado por algum sistema específico de software, e utilizado por aplicações que acessam os dados armazenados.
- O mesmo que **base de dados (Database)**
- Banco de dados = instância de dado + meta-dados.
  - *Instância de dados* = Dado propriamente.
  - *Meta-dados* = Dicionário de dados
    - Esquema da base de dados;
    - Acessado através de linguagens de definição de dados;

## SGBD / DBMS

- **Sistema de Gerenciamento e Banco de Dados / DataBase Management System.**
- Conjunto de softwares e ferramentas que permite o acesso, criação e gerência da base de dados, além de fazer a interação entre aplicações, usuários e banco de dados.
- Permite realizar consultas e enviar comandos ao BD.
- São projetados para gerenciar grandes grupos de informações;
- Têm o poder de garantir a **Integridade dos dados** mesmo com vários usuários realizando alterações, além de conseguir isolar usuários dos detalhes mais internos do banco de dados, a chamada **abstração de dados**, que é um dos principais objetivos do sistema;
- **NÃO** é o banco de dados em si, mas um sistema de acesso.
- Existem os softwares relacionais (RDBMS - Relational DataBase Management System):
  - Oracle Database;
  - MySQL Server;
  - Microsoft SQL Server;
  - IBM DB2.
- e os não relacionais, que trabalham com NoSQL (DBMS - DataBase Management System)
  - MongoDB
  - Redis
  - Cassandra
- Já a sua arquitetura consiste em (respectivamente):
  - Interface;
  - Processamento de consultas;
  - Processamento de transações;
  - Acesso a Arquivos;
  - Base de dados;
- **Instância**: Coleção de informações armazenadas (mudam com frequência);
- **Esquema**: Projeto geral do banco de dados (não mudam com frequência);
  - **Independência dos dados**: É a modificação do esquema dos dados em um nível sem afetar a definição do esquema em um nível mais alto.  
![Exemplo](./img/independencia-dados.png)  
- Existem 2 tipos de independência:
  - *Física de dados*: Habilidade de modificar o esquema físico sem a necessidade de reescrever os programa aplicativo. Estas modificações são necessárias para melhorar o desempenho;
  - *Lógica de dados*: Habilidade de modificar o esquema conceitual sem a necessidade de reescrever os programas aplicativos. Estas modificações são necessárias quando a estrutura lógica é alterada. EX: adição de um novo atributo. Ela é a mais difícil de ser alcançada, pois os programas são bastante dependentes de estrutura lógica dos dados que eles acessam.
- **Tipos de Usuários**:
  - *Programadores de aplicativos*: São os usuários que escrevem os programas de aplicação através da DML;
  - *Usuários de alto nível*:  Interagem com o sistema sem escrever programas;
  - *Usuários especializados (especialistas)*: Escrevem aplicativos especializados como sistemas especialistas;
  - *Usuários ingênuos*: Interagem com o sistema invocando os programas aplicativos;
  - *Administrador do banco de dados (DBA - DataBase Administrator)*: Tem o controle central dos dados e dos programas de acesso aos dados;
    - Funções do Administrador do banco de dados:
      - Definição do esquema;
      - Definição de estruturas de armazenamento e métodos de acesso;
      - Modificação de esquema e de organização física;
      - Concessão de autorização para acesso aos dados;
      - Especificação de restrições de integridade;

![Exemplo](./img/arquitetura-geral-sgbd.png)

## Modelagem de dados

- **Processo crucial no projeto de um banco de dados.**
- Permite determinar as tabelas com seus atributos e relacionamentos que comporão o BD (Banco de Dados).
- Elimina redundâncias e dados sem interesse.
- Aplicar regras de negócios de acordo com a real necessidade do cliente.
- Evita problemas futuros com retrabalho e eventual perda de dados.

## Tabelas, linhas e colunas

- **Coluna:** Domínio de valores de um tipo específico (definição técnica). É uma informação que você quer armazenar no banco de dados. Dependendo do estágio da modelagem também é conhecida como **Atributo**.  As colunas irão fazer a discrição dos atributos da tabela;
EX: Nome_Prod, Nome_Cliente, Valor_Prod, Endereco.
- **Linha:** Trata-se de um conjunto de valores de colunas relacionados, conhecido por vezes também como **tupla** ou **registro**.  
- **Tabela:** Resultado do cruzamento de linhas e colunas. É uma coleção de **linhas (registros)** em um banco de dados relacional, que armazena dados referentes a uma **entidade (assunto)** em particular.  

![Exemplo](./img/exemplo-tabela.png)

## Chave

- Uma ou mais colunas de uma relação cujos valores são usados para identificar de forma exclusiva uma linha ou conjunto de linhas.
- Pode ser:
  - Alternativa;
  - Candidata;
  - Composta;
  - Estrangeira; **(FK - Foreign Key)** // Chaves mais importantes, usadas para criar
  - Primária; **(PK - Primary Key)**   //  relacionamento entre as tabelas.
  - Substituta (Surrogada - Surrogate);

![Exemplo](./img/exemplo-chaves.png)

## Índices

- Estrutura de dados empregada para **otimizar a seleção de um conjunto específico de colunas** em um banco de dados relacional.
- Uma das ferramentas de otimização mais conhecidas e utilizadas pelos desenvolvedores de bancos de dados.
- Indexação em tabelas **pode aumentar significativamente a performance em consultas** ao banco de dados.
- Porém, **pode diminuir a velocidade de transações** como *inserts* e *updates*.

## Backup e Restauração

- **Operações de extrema importância em um BD.**
- Backup é uma cópia de segurança de dados que pode ser utilizada para realizar REstauração em caso de perda ou corrupção dos dados originais.
- Importante não apenas no contexto de BD, mas para toda e qualquer forma de armazenamento de dados / arquivos.
- Deve ser realizado periodicamente, e o melhor cenário é nunca precisar realizar a restauração.

## MER / ERM

- **Modelo Entidade-Relacionamento / Entity–Relationship Model**
- São diagramas utilizados para projetar Bancos de Dados Relacionais, utilizando como base a relação de objetos reais, e sendo representado por meio de **entidades** e relacionamentos. Nele ilustramos como os dados são estruturados nos processo de negócios ou para detalhar como os dados são armazenados nos bancos de dados relacionais.
- **Entidades**: As entidades representam um objeto do mundo real e que possuem uma existência independente, como: pessoas, empresa, carro, casa, entre outras coisas que podem ser representadas por uma entidade. Existem três tipos de entidades:
  - *Fortes*: Não dependem de outras entidades para existirem;
  - *Fracas*: Dependem de outras entidades para existir, ou seja, elas não possuem existência própria ou não possuem atributos próprios para identificação, dependendo assim, dos atributos chave das entidades fortes;
  - *Associativas*: são utilizadas quando existe a necessidade de associar uma entidade a um relacionamento;
- **Atributos**: Os atributos descrevem as propriedades das entidades. A entidade pessoa pode ter como atributo o nome, data de nascimento, idade, endereço. Existem 5 tipos de atributos:
  - *Simples*: São indivisíveis, ou seja, são atributos atômicos, um exemplo seria o atributo CPF, ele não pode ser dividido em partes menores para formar outros atributos, ele é indivisível.
  - *Composto*: Podem ser divididos em partes menores, que representam outros atributos, como o atributo endereço, ele pode ser subdividido em atributos menores, como, por exemplo, cidade, estado, rua, CEP.
  - *Multivalorado*: Pode ter um ou N (vários) valores associados a ele, como, por exemplo, o atributo telefone de um cliente, ele pode ter um ou vários telefones.
  - *Derivado*: Dependem de outro atributo ou até mesmo outra entidade para existir, como, por exemplo, o atributo idade e o atributo data de nascimento, para descobrimos a idade de uma pessoa precisamos da sua data de nascimento, então, consideramos o atributo idade como derivado do atributo data de nascimento.
  - *Chave*: É utilizado para identificar de forma única uma entidade, ou seja, os valores associados a esse atributo são distintos dentre o conjunto de entidades. Como exemplo, podemos utilizar o CPF de uma pessoa, ele é único e pode ser utilizado como atributo chave, já que cada pessoa recebe um número de CPF distinto.
- **Relacionamento**: São o relacionamento entre entidades, criando assim uma associação, que normalmente são representados por verbos. Exemplo: "uma pessoa trabalha para uma empresa". A **Cardinalidade** expressa o número de entidades que a outra entidade pode ser associada, sendo classificada por 3 tipos:
  - *UM PARA UM (1:1)*: Onde uma entidade X se associa unicamente a uma ocorrência da entidade Y; (EX: Time - Técnico)
  - *UM PARA MUITOS (1:N - N:1)*: Onde uma entidade X se associa a várias ocorrências da entidade Y, porém, a entidade Y pode apenas se associar a uma ocorrência da entidade X; (EX: Cliente - Carro)
  - *MUITOS PARA MUITOS (N:N)*: Onde a entidade X o pode se associar a várias ocorrências da entidade Y e a entidade Y pode também se associar a várias ocorrências da entidade X; (EX: Paciente - Médico)

  ![Exemplo](./img/exemplo-mer.png)

## DER / ERD

- **Diagrama Entidade-Relacionamento / Entity–Relationship Model**
- Diagrama de modelagem de dados que **permite visualizar a interação entre entidades (tabelas), atributos (colunas) e seus relacionamentos.**
- Derivador do MER, é a representação gráfica do que foi escrito no MER, ele ajuda no processo de implementação do BD, sendo um artefato importante para a criação de um modelo físico. Por estarem tão vinculados, muitas vezes são tratados até como sinônimos.
- Pode ser criado com ferramentas específicas como **ERWin, Astah, Visual Paradigm, LucidChart** ou mesmo "na unha".
- Em sua representação ele pode ter:
  - *Retângulo* = Entidade;
  - *Losango* = Relacionamento;
  - *Elipse* = atributo;

![Exemplo](./img/exemplo-der.png)

## Bancos Não-Relacionais

- **NoSQL - Not Only SQL** - Classe de sistemas de bancos de dados que incorporam outras formas de consultas distintas do SQL tradicional, e que não utilizam estruturas relacionais tradicionais.
- Geralmente são usados quando se tem volumes de dados muito grandes, como BigDatas.
- Buscam consistência nas informações armazenadas, disponibilidade do banco de dados e tolerância ao particionamento das informações.
EX:
  - MongoDB;
  - Cassandra;
  - HBase;
  - Neo4j;
  - Redis.

## Sistemas de arquivos

- Seria o inverso do sistema de banco de dados, nele os dados tem vários problemas:
  - O dados pode aparecer várias vezes na base de dados;
  - Redundância não controlada;
  - Difícil implementação;
  - Muito propicio a falhas;
  - Segurança frágil;
  - Tamanho de memória;

## Abstração de Dados

- Pode ser divido em 3 partes:
  - **Nível físico** – Nível de abstração mais baixo, descreve como os dados são armazenados.
  - **Nível lógico** – O próximo nível de abstração, descreve quais dados estão armazenados no banco de dados e quais relações existem entre eles.
  - **Nível de visão** – A abstração mais alta, descreve apenas parte do banco de dados.

## Eco-sistema do Banco de Dados

- Gerenciador de arquivos;
- Gerenciados do banco de dados;
- Processador de consultas;
- Pré-compilador da DML;
- Compilador da DDL
  - Arquivos de dados;
  - Dicionário de dados;
  - Índices;

- Transações
  - Utilizadas para controlar a integridade dos dados no Banco de dados;

- Otimizador de Consultas
  - Escolhe a forma mais eficiente para execução de uma consulta;

## Views

- As views(visões), também são chamados de **tabelas virtuais** ou **derivadas**;
- Os dados nessas tabelas virtuais são derivados de tabelas de base de dados ou views previamente definidas;
- Há possíveis limitações nas operações de atualização que podem ser aplicadas à views, mas não existe quaisquer limitações sobre a consulta de uma view.
- Ela é criada quando:
  - Precisamos referenciar determinada(s) tabela(s) com frequência; ou
  - Quando precisamos realizar consultas complexas;
- **Vantagens**:
  - Controle sobre o que o usuário pode ver;
  - Simplifica a consulta;
  - Segurança;
  - Exportação de dados;

## Stored Procedures / Procedimentos Armazenados

- São um conjunto de declarações SQL armazenadas no servidor.
- Eles são utilizados quando:
  - Aplicações clientes são escritas em diferentes linguagens ou trabalham em diferentes plataformas, mas precisam executar as mesas operações de banco de dados;
  - Segurança é primordial. Bancos, por exemplo, utilizam funções e procedimentos armazenados para tordas as operações comuns. Isso provê consistência e segurança, pois cada operação é devidamente registrada.
- Rotinas armazenadas podem fornecer melhor desempenho pois menos informações precisam ser enviadas entre o cliente e o servidor;
- A desvantagem é que aumenta-se a carga no servidor de banco de dados;
- Permitem a criação de uma biblioteca de funções no servidor de banco de dados;

## Triggers / Gatilhos

- É um objeto do banco de dados que está associado a uma tabela, e é ativado quando um evento particular ocorre na tabela;
- Principais usos são:
  - Executar verificações de valores; ou
  - Fazer cálculos sobre os valores informados em uma atualização;
- Ele é ativado quando uma declaração INSERT, UPDATE ou DELETE ocorre na tabela associada;
- O disparo do "gatilho" pode ser configurado para ocorrer antes ou depois do evento de disparo.

## Data Types

- Cada SGBD tem independencia para criar seus próprios data types, porém os tipos padrões são respeitados:
  - Integer (int)
  - Char
  - Long
  - Float
  - DateTime
  - Binary

- No caso do SQL Server, ele tem tipos de dados para tratar XML e imagens também.

## Referências

- Fábio dos Reis, Bóson Treinamentos - [https://youtu.be/2E7crqRI1iE]
- Vania Bogorny, UFSC - [https://www.inf.ufsc.br/~alexandre.goncalves.silva/courses/15s1/ine5223/slides/aula0602.pdf]
- Estratégia Concursos - [https://www.estrategiaconcursos.com.br/blog/conceitos-basicos-de-banco-de-dados/]
- Andre Cortes - Remessa Online, MER e DER, o que são? - [encurtador.com.br/drxQ4]
- Danielle Oliveira - Alura, MER e DER - [https://www.alura.com.br/artigos/mer-e-der-funcoes]
- OPServices, Diferença entre banco de dados - [https://www.opservices.com.br/banco-de-dados/]
- Daniel Maia, Utilizando views, stored procedures e triggers - [https://pt.slideshare.net/maiamg/utilizando-views-stored-procedures-e-triggers]
- Código Fonte TV, SQL // Dicionário do Programador - [https://youtu.be/kMznyI7r2Tc]
