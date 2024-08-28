-- Crear tabla Departamento
CREATE TABLE Departamento (
    ID_Departamento INT PRIMARY KEY,
    Nombre_Departamento VARCHAR(100) NOT NULL
);

-- Crear tabla Proyecto
CREATE TABLE Proyecto (
    ID_Proyecto INT PRIMARY KEY,
    Nombre_Proyecto VARCHAR(100) NOT NULL,
    ID_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento)
);

-- Crear tabla Empleado
CREATE TABLE Empleado (
    ID_Empleado INT PRIMARY KEY,
    Nombre_Empleado VARCHAR(100) NOT NULL,
    ID_Jefe INT,
    ID_Departamento INT,
    FOREIGN KEY (ID_Jefe) REFERENCES Empleado(ID_Empleado),
    FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento)
);

-- Crear tabla Empleado_Proyecto
CREATE TABLE Empleado_Proyecto (
    ID_Empleado INT,
    ID_Proyecto INT,
    Rol VARCHAR(100),
    PRIMARY KEY (ID_Empleado, ID_Proyecto),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado),
    FOREIGN KEY (ID_Proyecto) REFERENCES Proyecto(ID_Proyecto)
);
