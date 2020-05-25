### Triggers

A)
```sql
DROP TRIGGER IF EXISTS LINEA;
CREATE TRIGGER LINEA
AFTER INSERT ON Reparacao
FOR EACH ROW
BEGIN
    UPDATE Reparacao
    SET idCliente = (SELECT idCliente FROM CARRO WHERE idCarro == ROW.idCarro) 
    WHERE idCliente = NULL;
END
```
B)
```sql
to do
```
C)
```sql
DROP TRIGGER IF EXISTS LINEC;
CREATE TRIGGER LINEC
AFTER INSERT ON ReparacaoPeca
FOR EACH ROW
BEGIN
    UPDATE Peca
    SET quantidade = (CASE WHEN quantidade - New.quantidade < 0 THEN 0 ELSE quantidade - New.quantidade END)
    WHERE idPeca=New.idPeca;
END;
```