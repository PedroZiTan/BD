INSERT INTO estados
    (id, nome, sigla, regiao, populacao)
VALUES
    (1000, "novo1", 'N1', 'Norte', 0.33),
    (1001, "novo2", 'N2', 'Norte', 0.33),
    (1003, "novo3", 'N3', 'Norte', 0.33)


select * from estados

delete from estados
WHERE sigla = 'N3'

delete from estados
WHERE id >= 1000
