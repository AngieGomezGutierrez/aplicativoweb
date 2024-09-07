CREATE TABLE computadoras (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL
);

CREATE PROCEDURE ingresarComputadora
    @nombre NVARCHAR(100)
AS
BEGIN
    INSERT INTO computadoras (nombre)
    VALUES (@nombre);
END;

CREATE PROCEDURE eliminarComputadora
    @id INT
AS
BEGIN
    DELETE FROM computadoras WHERE id = @id;
END;

select * from  computadoras

