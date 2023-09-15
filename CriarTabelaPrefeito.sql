create table IF NOT EXISTS prefeitos (
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cidade_id int unsigned not null,
    primary key (id),
    unique key (cidade_id),
    foreign key (cidade_id) references cidades (id)
);