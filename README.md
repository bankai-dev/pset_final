# pset
### Aluno: Eduardo Kuster Antunes
### Professor: Abrantes Araújo Silva Filho
### Turma: Sí1N
#### Modelo Lógico
Foi nos dado um modelo lógico ''human_resources'' com alguns erros propositalmente inseridos pelo professor,
a fim de os encontrarmos e corrigi-los. Os erros estavam relacionados com uma das cardinalidades entre as tabelas,
todas as foreign keys que podiam ser nulas e uma primary key errada.
#### SQL Power Architect
Utilei o SQL Power Architect para a criação do modelo lógico correto. O SQL Power Architect além de permitir a criação do modelo
lógico, ele o possibilita a gerar um script SQL para a IDE que você precisa, assim gerando o script e fazendo as manuntenções do script
pelo postgre.
#### SQL Oracle Developer
Depois da implementação do modelo lógico no postgre e das alterações necessárias no script, utilizei o SQL Oracle Developer para gerar os
dados que foram inseridos na tabela. Depois de horas quebrando a cabeça consegui desenvolver os códigos utilizando o código da tabela
empregados postado pelo professor como base para fazer as outras.
#### PostgreSQL
Depois da inserção dos dados no Postgre, os últimos passos foram adicionar as foreign keys no script, porém, devido a alguns erros nos 
dados emitidos pelo SQL Oracle Developer, alguns dados não estavam correspondendo a suas respectivas foreign keys, sendo necessário a correção de 
dado por dado manualmente.
#### MariaDB
Depois de finalizar o Postgre o MariaDB foi bem simples e rápido, sendo necessário apenas algumas alterações no código, por conta da diferença 
entre as syntax do postgre e mariadb, porém, após finalizar o database no Terminal não consegui gerar o script. Tendo que gerar o script pelo MySQL
e fazer suas alterações pelo DBeaver, utilizando o terminal para verificar a validade do código.

