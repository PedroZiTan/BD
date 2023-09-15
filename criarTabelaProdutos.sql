create table produto (
    id int not null auto_increment,
    nome_produto varchar(45) not null,
    preco_normal decimal(10,2) not null,
    preco_desconto decimal(10,2) not null,
    primary key (id)
)

--criando Trigger : por padrão o nome do trigger tem que começar com tr_
create TRIGGER tr_desconto before insert
on produto
FOR EACH row 
SET NEW.preco_desconto = (NEW.preco_normal * 0.90);

insert into produto 
    (nome_produto, preco_normal)
values
    ("Televisao", 120.00),
    ("PS5", 450.00)

select * from produto


--FOR EACH seria por linha