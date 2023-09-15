select * from cidades

insert into prefeitos
    (nome, cidade_id)
Values
    ('Marcos Neves', (select id from cidades where nome = "Mogi das cruzes")),
    ('Raquel Lyra', (select id from cidades where nome = "Joinville")),
    ('Gabriella', (select id from cidades where nome = "Rio Branco"))

select * from prefeitos