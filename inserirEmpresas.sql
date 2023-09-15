alter table empresas modify cnpj varchar(14);

insert into empresas
    (nome, cnpj)
VALUES 
    ('Bradesco', "9832908743274"),
    ('Vale', "321944214"),
    ('Cielo', "2121736778216")

select * from empresas  

select * from cidades

select * from empresas_unidades

insert into empresas_unidades
    (empresa_id, cidade_id, sede)
values
    (1, 1, 0),
    (2, (select id from cidades where nome = "Caruaru"), 1),
    (3,1,1)

