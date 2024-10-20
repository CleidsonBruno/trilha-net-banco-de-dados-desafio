--1
SELECT Nome, Ano FROM Filmes

--2
SELECT * FROM Filmes
ORDER BY Ano ASC;

--3
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4
SELECT *
FROM Filmes
WHERE Ano = 1997;

--5
SELECT *
FROM Filmes
WHERE Ano > 2000;

--6
SELECT *
FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--7
SELECT   
 Ano, COUNT(*) AS quantidade
FROM Filmes
GROUP BY Ano
ORDER BY quantidade DESC;

--8
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

--9
SELECT id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10

SELECT F.NOME AS NomeFilme, G.GENERO AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.ID = FG.IDFilme
JOIN Generos G ON FG.IDGenero = G.ID;

--11

SELECT F.NOME AS NomeFilme, G.GENERO AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.ID = FG.IDFilme
JOIN Generos G ON FG.IDGenero = G.ID
WHERE G.GENERO = 'Mistério';

--12

SELECT F.NOME AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.PAPEL
FROM Filmes F
JOIN ElencoFilme EF ON F.ID = EF.IDFilme
JOIN Atores A ON EF.IDAtor = A.ID;

