--Criando a Tabela do Estado!
CREATE TABLE estados (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    populacao DECIMAL(5, 2) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY(nome),
    UNIQUE KEY (sigla)
)

--create table -> criar tabela
--int -> numeros inteiros
--unsigned -> sem sinal, não pode ser negativo
--not null -> não nulo... campo não pode estar vazio, obrigatoriamente deve ser preenchido
--Auto_increment -> adicionando automaticamente + 1 no id
--varchar numero de caracteres pre-definidos
--enum -> enumerar para evitar erros de grafia
--decimal -> valores
--primary key -> chave primaria não pode se repetir
--unique key -> chave unica o dado não pode ser adicionado mais de 1 vez sem repetição
--id -> nao muda
--UNSIGNED -> não tem sinal
--foreign key -> chave estrangeira esta referenciando a chave primaria