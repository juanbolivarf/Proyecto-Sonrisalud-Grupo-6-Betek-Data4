USE sonrisaludbetek;

GO

-- Crear tabla Sedes
CREATE TABLE Sedes (
    ID_Sede INT NOT NULL PRIMARY KEY,
    Nombre_Sede VARCHAR(50) NOT NULL,
    Direccion_Sede VARCHAR(100) NOT NULL,
    Telefono_Sede VARCHAR(30) NOT NULL,
    Correo_Sede VARCHAR(70) NOT NULL,
    Departamento VARCHAR(50) NOT NULL,
    Ciudad VARCHAR(50) NOT NULL
);

-- Crear tabla Pacientes
CREATE TABLE Pacientes (
    ID_Paciente INT NOT NULL PRIMARY KEY,
    Nombre_Paciente VARCHAR(60) NOT NULL,
    Sexo_Paciente VARCHAR(9) NOT NULL,
    Edad INT NOT NULL,
    Categoria_Edad VARCHAR(20) NOT NULL,
    Direccion VARCHAR(30) NOT NULL,
    Estrato INT NOT NULL,
    Telefono VARCHAR(30) NOT NULL,
    Correo_Electronico VARCHAR(100) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    ID_Historial_Medico INT NOT NULL
);

-- Crear tabla Odontologos
CREATE TABLE Odontologos (
    ID_Odontologo INT NOT NULL PRIMARY KEY,
    Nombre_Odontologo VARCHAR(60) NOT NULL,
    Especialidad VARCHAR(50) NOT NULL,
    Telefono VARCHAR(30) NOT NULL,
    Correo_Electronico VARCHAR(70) NOT NULL,
    ID_Sede INT NOT NULL,
    FOREIGN KEY (ID_Sede) REFERENCES Sedes(ID_Sede)
);

-- Crear tabla Citas
CREATE TABLE Citas (
    ID_Cita INT NOT NULL PRIMARY KEY,
    Fecha_Cita DATETIME NOT NULL,
    Motivo_Cita VARCHAR(100) NOT NULL,
    Estado_Cita VARCHAR(100) NOT NULL,
    ID_Paciente INT NOT NULL,
    ID_Odontologo INT NOT NULL,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente),
    FOREIGN KEY (ID_Odontologo) REFERENCES Odontologos(ID_Odontologo)
);

-- Crear tabla Tratamiento
CREATE TABLE Tratamiento (
    ID_Tratamiento NVARCHAR(50) NOT NULL PRIMARY KEY,
    Nombre_Tratamiento VARCHAR(100) NOT NULL,
    Descripcion_Tratamiento VARCHAR(200),
    Costo DECIMAL(10,2) NOT NULL,
    ID_Cita INT NOT NULL,
    FOREIGN KEY (ID_Cita) REFERENCES Citas(ID_Cita)
);

-- Crear tabla Historial_Medico
CREATE TABLE Historial_Medico (
    ID_Historial_Medico INT NOT NULL PRIMARY KEY,
    Tipo_Sangre VARCHAR(3) NOT NULL,
    Observaciones VARCHAR(200) NOT NULL,
    Antecedentes_Enfermedades_Alergias VARCHAR(100) NOT NULL,
    Estado VARCHAR(100) NOT NULL,
    ID_Paciente INT NOT NULL,
    ID_Cita INT NOT NULL,
    ID_Tratamiento NVARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente),
    FOREIGN KEY (ID_Cita) REFERENCES Citas(ID_Cita),
    FOREIGN KEY (ID_Tratamiento) REFERENCES Tratamiento(ID_Tratamiento)
);

-- Crear tabla Facturacion
CREATE TABLE Facturacion (
    ID_Factura INT NOT NULL PRIMARY KEY,
    Fecha_Factura DATE NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    Estado_Pago VARCHAR(100) NOT NULL,
    ID_Paciente INT NOT NULL,
    ID_Cita INT NOT NULL,
    ID_Sede INT NOT NULL,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente),
    FOREIGN KEY (ID_Cita) REFERENCES Citas(ID_Cita),
    FOREIGN KEY (ID_Sede) REFERENCES Sedes(ID_Sede)
);

-- Crear tabla Prescripcion
CREATE TABLE Prescripcion (
    ID_Prescripcion INT NOT NULL PRIMARY KEY,
    Fecha_Prescripcion DATE NOT NULL,
    Detalle_Prescripcion VARCHAR(200),
    Costo_Prescripcion DECIMAL(10,2) NOT NULL,
    ID_Tratamiento NVARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_Tratamiento) REFERENCES Tratamiento(ID_Tratamiento)
);