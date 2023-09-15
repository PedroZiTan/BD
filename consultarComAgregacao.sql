select 
     regiao as "Região",
     sum(populacao) as total
    from estados
    group by regiao
    order by total desc --"desc" decrescente

--"group by" = somar os estados, quantidades de população
--"order" = pela soma, em ordem

