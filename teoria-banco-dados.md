# Teoria sobre Banco de dados

## Estrutura

- Antigamente (final da década de 50) nossos dados eram armazenados em *papeis (fichas)*, segmentadas por *pastas* e armazenada em *armários de aço*. Hoje com a tecnologia não ficou tão diferente o conceito de se armazenar dados. Seguindo a mesma linha dos banco de dados antigos, hoje temos:
  - **Registros** (fichas);
  - **Tabelas** (pastas);
  - **Arquivos** (armários de aço);  
No contexto atual:
- **Arquivos** guardam as **Tabelas** que armazenam os **Registros**.

## Tipos de arquivos

- Devido a tecnologia de armazenamento da época (cartões perfurados, fitas magnéticas), a primeira digitalização dos dados eram feitas com **arquivos sequencias**, no qual era necessário conferir toda a base de dados de maneira sequência (ordem) para se fazer consultas. Apesar de lento, na época ainda era bem melhor que trabalhar com dados em papeis.
- Com o avanço da tecnologia de armazenamento (disco, disquetes, HDs), os arquivos começaram a ser analisados de maneira direta, e não mais sequencial, ou seja, não era mais necessário mais analisar todo o arquivo, agora poderia ser feito uma análise direta. Com isso os dados conseguiram ser armazenados em *tabelas* com *indices* (numerações) e guardar *chaves identificadoras* de cada *registro*, e assim tornando a análise extremamente mais rápido. Esses arquivos são chamados de **arquivos de acesso direto**. Mas ainda que fossem mais rápidos, os arquivos tinham indices muito simplistas.

## História

- Na década de 60 ocorreu um evento chamado *Codaysl*, onde houve um grande encontro de militares, empresas e universidades, tais como IBM e o departamento de defesa dos EUA . Lá foram discutidas grandes tecnologias emergentes da época, e uma delas foi o *COBOL*, a primeira linguagem que se preocupou efetivamente com a lógica da programação e como os dados embutidos nela, pois os dados eram primordiais para essa linguagem. Nesse evento surgiu os principais conceitos de **Banco de Dados**.
- O modelo criado foi dividido em 4 partes:
  - **Base de dados** - São todos os dados obtidos.
  - **Sistema gerenciador (SGBD ou DMS)** - Sistema gerenciador de banco de dados ou *Database Management System* é um software que gerencia todo o contexto dos dados.
  - **Linguagem de Exploração** - É a linguagem de acesso ao dado, necessário para a sua exploração.
  - **Programas adicionais** - Seriam utilidades como gerencia de usuário, otimizadores de dados entre outras coisas.

## Referências

- O que é um banco de dados? - Curso em Vídeo - [https://youtu.be/Ofktsne-utM]
- O que é um banco de dados de documentos - Amazon Web Service - [https://aws.amazon.com/pt/nosql/document/]
- Bancos de Dados Orientados a Objetos - DevMedia - [https://www.devmedia.com.br/bancos-de-dados-orientados-a-objetos-sql-magazine-78/17717]
