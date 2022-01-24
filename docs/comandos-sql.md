# Principais comandos

Para executar um comando, basta seleciona-lo com o mouse clicar no botão executar;

- *// Criar e depois usar o banco de dados;*
`CREATE DATABASE <nome do banco>;`
`USE <nome do banco>`

- *// Criar uma tabela*

```CREATE TABLE <nome da tabela> (
   <nome do campo> <tipo de dados> <restrições>,
   <nome do campo> <tipo de dados> (quant. dígitos/caracteres),
   <nome do campo> <tpo de dados> (dígitos, casa decimais),
);
```

- *// Inserir dados nas tabelas, os dados devem ser colocados na mesma ordem que os campos, no caso do campo ser auto-incrimento o valor não precisa ser informado*

```INSERT INTO <nome da tabela> (nomes dos campos)
VALUES (valor)
```

- *// Fazer consultas no banco*

`SELECT <nome do campo> FROM <nome da tabela>`
`SELECT * FROM <nome da tabela>` - Mostra todos os dados da tabela;

- *// Consultando uma tabela com filtros específicos*

```SELECT <nome campo> FROM <nome da tabela>
   WHERE <nome da coluna> = dado;
```

- *// Alterar um registro na tabela*

```UPDATE <nome da tabela>
SET <nome da coluna> = <novo dado>
WHERE <nome do campo> = <dado do campo>;
```

- *// Excluir registros de uma tabela*

```DELETE FROM <nome da tabela>
WHERE <nome do campo> = <valor do campo>;
```

- *// Trazer dados de duas ou mais tabelas relacionadas;*

```SELECT <nome da coluna>, <nome da coluna>
FROM <nome da tabela>
INNER JOIN <nome da tabela relacionada>
ON <nome da tabela>.<campo relacionado> = <nome da tabela relacionada>.<nome do campo relacionado>;
```

- *// Retornar resultados ordenados em uma consulta*

```SELECT <nome da coluna>
FROM <nome da tabela>
ORDER BY <nome do da tabela que irá seguir a ordem>
```

- *// Apagar todos os dados da tabela*

`TRUNCATE TABLE <nome da tabela>`
