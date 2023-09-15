select * from estados as e, cidades as c
where e.id = c.estado_id


select
    e.nome as "Estados",
    c.nome as "Cidades",
    e.regiao as "Regiões"
from estados as e, cidades as c
where e.id = c.estado_id

select
    c.nome as Cidade,
    e.nome as Estado,
    e.regiao as Regiao
from estados as e
inner join cidades as c on e.id = c.estado_id