UPDATE estados
set nome = 'Maranhão'
where sigla ='MA'

SELECT nome, sigla FROM estados
    WHERE sigla = 'MA'

UPDATE estados
set nome = "Paraná",
    populacao = 11.32
WHERE sigla = 'PR'

select nome, sigla from estados
    WHERE sigla ='PR'

SELECT est.nome, est.regiao from estados as est