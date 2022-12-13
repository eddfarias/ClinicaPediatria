DROP DATABASE IF EXISTS Clinica_Pediatrica;

CREATE DATABASE Clinica_Pediatrica;

USE Clinica_Pediatrica;

CREATE TABLE Admision (
	ID_personal INT NOT NULL PRIMARY KEY,
    Turno_ingreso INT NOT NULL,
    Fecha_ingreso DATETIME NOT NULL,
    ID_paciente INT NOT NULL,
    ID_medico INT NOT NULL,
    Especialidad_medico VARCHAR(50) NOT NULL
);

CREATE TABLE Paciente (
	ID_paciente INT NOT NULL PRIMARY KEY,
    Nombre_paciente VARCHAR(50) NOT NULL,
    Apellido_paciente VARCHAR(50) NOT NULL,
    Seguro_paciente VARCHAR(50) NULL,
    DNI INT NOT NULL,
    Fecha_nacimiento DATETIME NOT NULL
    );
    
CREATE TABLE AdultoResp (
	DNI INT NOT NULL PRIMARY KEY,
    Nombre_responsable VARCHAR(50) NOT NULL,
    Apellido_responsable VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100) NULL DEFAULT 'BuenosAires',
    Telf_1 INT NOT NULL,
    Telf_2 INT NOT NULL
);

CREATE TABLE Medico (
	ID_medico INT NOT NULL PRIMARY KEY,
    Nombre_medico VARCHAR(50) NULL,
    Apellido_medico VARCHAR(50) NULL,
    ID_colegiado INT NOT NULL,
    Telf_medico INT NOT NULL,
    Especialidad_medico VARCHAR(50) NOT NULL
);

CREATE TABLE Especialidad (
	Especialidad_medico VARCHAR(50) NOT NULL PRIMARY KEY,
    ID_medico INT NOT NULL
);

CREATE TABLE HistorialClinico (
	Historial_clinico VARCHAR(200) NOT NULL PRIMARY KEY,
    ID_paciente INT NOT NULL
);

CREATE TABLE Medicamentos (
	Medicamentos VARCHAR(50) NOT NULL PRIMARY KEY,
    ID_paciente INT NOT NULL,
    DOSIS VARCHAR(50) NOT NULL,
    Marca_Medicamento VARCHAR(50) NOT NULL
);