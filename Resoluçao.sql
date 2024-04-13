SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER by Duracao ASC;

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano order by SUM(duracao) DESC;

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome;

SELECT a.Nome
           as NomeFilme, b.Genero
           AS Gênero FROM Filmes a
                              INNER JOIN FilmesGenero c
                                         ON a.Id = c.IdFilme
                              INNER JOIN Generos b
                                         ON c.IdGenero = b.Id;

SELECT a.Nome, b.Genero
FROM Filmes a
         INNER JOIN FilmesGenero c
                    ON c.IdFilme = a.Id
         INNER JOIN Generos b
                    ON c.IdGenero = b.Id
where  genero ='Mistério'


SELECT a.Nome ,b.PrimeiroNome, b.UltimoNome, c.Papel
FROM Filmes
         as a INNER JOIN  ElencoFilme c
                          ON c.IdFilme = a.Id INNER JOIN Atores b
                                                         ON c.IdAtor = b.Id 