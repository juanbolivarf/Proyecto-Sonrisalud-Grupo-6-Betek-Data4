USE sonrisaludbetek;


-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Citas';

-- Cargar los datos
BULK INSERT Citas
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Citas.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);

-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Facturacion';

-- Cargar los datos
BULK INSERT Facturacion
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Facturacion.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);

-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Historial_Medico';

-- Cargar los datos
BULK INSERT Historial_Medico
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Historial_Medico.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);

-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Odontologos';

-- Cargar los datos
BULK INSERT Odontologos
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Odontologos.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);

-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Pacientes';

-- Cargar los datos
BULK INSERT Pacientes
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Pacientes.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);

-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Prescripcion';

-- Cargar los datos
BULK INSERT Prescripcion
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Prescripcion.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);

-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Sedes';

-- Cargar los datos
BULK INSERT Sedes
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Sedes.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);

-- Verificar que la tabla exista
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'Tratamiento';

-- Cargar los datos
BULK INSERT Tratamiento
FROM 'C:\Users\Juan\Downloads\data_sonrisalud\Tratamiento.csv'
WITH (
    FIELDTERMINATOR = ',',         -- Separador de campo
    ROWTERMINATOR = '0x0a',        -- Salto de línea (LF)
    FIRSTROW = 2                  -- Comienza desde la segunda fila
);