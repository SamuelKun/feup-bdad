14 - Query
```sql
SELECT estudante.nome AS Estudante
    FROM estudante, curso
        WHERE estudante.curso = curso.id 
              AND curso.nome = "MIEIC" 
              AND estudante.nome LIKE "%a%";
```

15 - Query
```sql
DROP VIEW amigos;
CREATE VIEW amigos AS
    SELECT estudante.nome AS aluno, amigo.nome AS amigo
    FROM estudante, estudante AS amigo, amizade
        WHERE amizade.id1 = estudante.id
              AND amizade.id2 = amigo.id;

SELECT aluno AS nome
    FROM amigos
        WHERE amigo LIKE "Gabriel%";
```

16 - Query
```sql
SELECT E1.nome 
FROM Estudante E1, Estudante E2, Amizade 
    WHERE E1.id = id1 AND E2.id = id2
        GROUP BY E1.id  
        HAVING (count(DISTINCT E2.anoCurricular) = 5);            
```

17 - Query
```sql
DROP VIEW amigos;
CREATE VIEW amigos AS
    SELECT estudante.id AS original, amigo.id AS amigo
    FROM estudante, estudante AS amigo, amizade
        WHERE amizade.id1 = estudante.id
              AND amizade.id2 = amigo.id;

DROP VIEW amigos2;
CREATE VIEW amigos2 AS
    SELECT original, transitivo.id AS transitivoID
    FROM amigos, amizade, estudante AS transitivo
        WHERE amizade.id1 = amigo
              AND amizade.id2 = transitivo.id;

DROP TABLE IF EXISTS AmizadeTransitiva;
CREATE TABLE AmizadeTransitiva AS

SELECT DISTINCT original AS ID1, transitivoID AS ID2
FROM amigos2
WHERE original != transitivoID 
    AND transitivoID NOT IN (
        SELECT amizade.id2
        FROM amizade
        WHERE amizade.id1 = original
)
ORDER BY original, transitivoID;

SELECT * FROM AmizadeTransitiva;
```

18 - Query
```sql
SELECT DISTINCT amigo1.nome AS Nome, amigo2.nome AS Nome
FROM estudante AS amigo1, estudante AS amigo2, amizade
WHERE amizade.id1 = amigo1.id AND amizade.id2 = amigo2.id AND 
    amigo1.curso != amigo2.curso AND amigo1.id < amigo2.id;
```

19 - Trigger
```sql
DROP TRIGGER T1;
CREATE TRIGGER T1
AFTER INSERT ON Amizade
BEGIN
INSERT INTO Amizade VALUES (
    new.id2,
    new.id1
);
END;

DROP TRIGGER T2;
CREATE TRIGGER T2
AFTER DELETE ON Amizade
BEGIN
DELETE FROM Amizade WHERE
    Amizade.id1 = old.id2 AND Amizade.id2 = old.id1;
END;

DROP TRIGGER T3;
CREATE TRIGGER T3
BEFORE UPDATE ON Amizade
BEGIN
    SELECT raise(ignore);
END;
```