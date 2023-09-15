create table IF NOT EXISTS funcionariosTeste (
    id int unsigned NOT NULL auto_increment,
    nome_funcionario varchar(255) NOT NULL,
    salario decimal(10,2) NOT NULL,
    data_inicio date,
    data_fim date,
    rua varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    primary key (id)
)

create table produto (
    id int not null auto_increment,
    nome_produto varchar(45) NOT NULL,
    preco_normal decimal(10,2) NOT NULL,
    preco_desconto decimal(10,2) NOT NULL,
    primary key (id)
)

insert into funcionariosTeste
    (nome_funcionario,salario,data_inicio,data_fim, rua, cidade)
values
    ("Felipe", 12000.00, "2022-06-03", "2024-06-03", "capitao lessa", "guaruja"),
    ("joao", 5000.00, "2021-07-03", "2022-06-02", "oswaldo cruz", "guaruja"),
    ("lopes", 2500.00, "2022-07-03", "2022-03-05", "oswaldo cruz", "guaruja"),
    ("Thiago", 7000.00, "2013-06-03", "2022-07-03", "joana", "santos"),
    ("fernanda", 2500.00, "2013-06-03", "2015-09-07", "jhons", "santos"),
    ("Paula", 1300.00, "2014-09-04", "2014-09-07", "joana", "santos")

insert into funcionariosTeste
    (nome_funcionario,salario,data_inicio,data_fim, rua, cidade)
values
    ("Mauricio", 6000.00, "2022-06-03", "2024-06-03", "capitao lessa", "guaruja")

insert into funcionariosTeste
    (nome_funcionario,salario,data_inicio,data_fim, rua, cidade)
values
    ("fatima", 6000.00, "2022-06-03", "2024-06-03", "capitao lessa", "guaruja")


    insert into funcionariosTeste
    (nome_funcionario,salario,data_inicio,data_fim, rua, cidade)
values
    ("Jose", 12000.00, "2022-06-03", "2024-06-03", "rua rio", "Rio de janeiro"),
    ("Nathan", 5000.00, "2021-07-03", "2022-06-02", "rua pix", "Rio de janeiro"),
    ("Antonio", 2500.00, "2022-07-03", "2022-03-05", "rua verde", "Rio de janeiro")



select * from funcionariosTeste

select * from funcionariosTeste
order by cidade -- order by = pra orderna por nome, ex: mostrar todas as ruas 

select * from funcionariosTeste
order by rua desc --decrescente

select * from funcionariosTeste
order by rua asc --crescente 

select MIN(salario) as "Menor Salario"
from funcionariosTeste --MIN = minimo, ex: menor salario

select MAX(salario) as "Menor Salario"
from funcionariosTeste --MAX = maximo, ex: maior valor do salario

select count(id)
from funcionariosTeste --count = contas, ex: quantidade de funcionario

select AVG(salario)
from funcionariosTeste --AVG = é a media ex: média do salarial 

select SUM(salario)
from funcionariosTeste --SUM = soma

select * from funcionariosTeste --LIKE = 'l%' , ele vai pegar os nomes dos funcionarios, tudo que começa a prmeira letra "l" ex: Lucas, Lula
where nome_funcionario Like 'f%' 

select * from funcionariosTeste --LIKE = 'a%' , ele vai pegar os nomes funcionarios, tudo que começa no final do nome com a letra "a" ex: PaulA e FernandA 
where nome_funcionario Like '%a' 

select * from funcionariosTeste --LIKE = '%au%', tudo que contem o "au" ex: pAUlo, mAUricio
where nome_funcionario Like '%au%'

select * from funcionariosTeste
where nome_funcionario Like '_a%' --LIKE = '_a%' é em um carater, ele vai inguinora o primeiro e vai pro segundo 

select * from funcionariosTeste
where nome_funcionario Like '__l%' --LIKE = '%__l' ele vai inguinorar os dois primeiros e vai pro terceiro


select * from funcionariosTeste
where nome_funcionario Like 'f%a' --é tudo que começa com "f"  termina com "a"

select * from funcionariosTeste
where cidade in ("guaruja", "santos")

select * from funcionariosTeste
where cidade in ("Rio de janeiro", "santos")

select * from funcionariosTeste
where salario between 1000 and 4000

select SUM(salario), cidade from funcionariosTeste
GROUP BY  cidade
order by SUM(salario) desc

select DATEDIFF(data_inicio, data_fim) AS 'Duração'
    FROM funcionariosTeste
    where nome_funcionario = "Felipe"