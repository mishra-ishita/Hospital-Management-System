CREATE DATABASE hospital_system;
USE hospital_system;

-- CREATE
-- Patients
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender ENUM('Male', 'Female', 'Other')
);

-- Doctors
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Specialization VARCHAR(100)
);

-- Appointments
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Diagnosis VARCHAR(255),
    Fees DECIMAL(10,2),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- INSERT
-- Patients
INSERT INTO Patients (Name, Age, Gender) VALUES
('John Doe', 30, 'Male'),
('Jane Smith', 45, 'Female'),
('Emily Davis', 28, 'Female');

-- Doctors
INSERT INTO Doctors (Name, Specialization) VALUES
('Dr. Robert Wilson', 'Cardiologist'),
('Dr. Lisa Brown', 'Dermatologist'),
('Dr. Mark Johnson', 'Neurologist');

-- Appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Diagnosis, Fees) VALUES
(1, 1, '2024-03-01', 'Hypertension', 200.00),
(2, 2, '2024-03-05', 'Skin Rash', 150.00),
(1, 3, '2024-03-10', 'Migraine', 250.00),
(3, 1, '2024-03-15', 'Chest Pain', 300.00);

