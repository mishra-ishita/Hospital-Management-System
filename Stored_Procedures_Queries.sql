-- Q1. Write a stored procedure GetPatientAppointments that takes a PatientID as input and returns 
-- all appointments for that patient, including Appointment Date, Doctor Name, Specialization, Diagnosis, and Fees.
SELECT * FROM Appointments;
SELECT * FROM Doctors;

DELIMITER $$
CREATE PROCEDURE GetPatientAppointments(IN p_PatientID INT)
BEGIN
    SELECT 
        a.AppointmentDate,
        d.Name AS DoctorName,
        d.Specialization,
        a.Diagnosis,
        a.Fees
    FROM Appointments a
    JOIN Doctors d ON a.DoctorID = d.DoctorID
    WHERE a.PatientID = p_PatientID;
END $$
DELIMITER ;
CALL GetPatientAppointments(2);

-- Q2. Write a stored procedure GetDoctorAppointments that takes a DoctorID as input and 
-- returns all appointments for that doctor, including Patient Name, Appointment Date, and Diagnosis.
SELECT * FROM Appointments;
SELECT * FROM Patients;

DELIMITER $$
CREATE PROCEDURE GetDoctorAppointments(IN p_DoctorID INT)
BEGIN
    SELECT 
        p.Name AS PatientName,
        a.AppointmentDate,
        a.Diagnosis
    FROM Appointments a
    JOIN Patients p ON a.PatientID = p.PatientID
    WHERE a.DoctorID = p_DoctorID;
END $$
DELIMITER ;
CALL GetDoctorAppointments(2);

-- Q3. Write a stored procedure GetAppointmentsInRange that takes two dates as input and 
-- returns all appointments within that range, including Patient Name, Doctor Name, and Diagnosis.
SELECT * FROM Patients;
SELECT * FROM Doctors;

DELIMITER $$
CREATE PROCEDURE GetAppointmentsInRange(IN p_StartDate DATE, IN p_EndDate DATE)
BEGIN
    SELECT 
        p.Name AS PatientName,
        d.Name AS DoctorName,
        a.Diagnosis,
        a.AppointmentDate
    FROM Appointments a
    JOIN Patients p ON a.PatientID = p.PatientID
    JOIN Doctors d ON a.DoctorID = d.DoctorID
    WHERE a.AppointmentDate BETWEEN p_StartDate AND p_EndDate
    ORDER BY a.AppointmentDate;
END $$
DELIMITER ;
CALL GetAppointmentsInRange('2024-03-01', '2024-03-31');

-- Q4. Write a stored procedure Get Total EarningsByDoctor that takes a DoctorID as input and 
-- returns the total earnings from all appointments for that doctor.
DELIMITER $$
CREATE PROCEDURE GetTotalEarningsByDoctor(IN p_DoctorID INT)
BEGIN
    SELECT 
        d.Name AS DoctorName,
        SUM(a.Fees) AS TotalEarnings
    FROM Appointments a
    JOIN Doctors d ON a.DoctorID = d.DoctorID
    WHERE a.DoctorID = p_DoctorID
    GROUP BY d.Name;
END $$
DELIMITER ;
CALL GetTotalEarningsByDoctor(2);

-- Q5. Write a stored procedure GetMostVisitedDoctor that returns the doctor with 
-- the highest number of appointments, along with the total number of patients seen.
SELECT * FROM Appointments;
SELECT * FROM Doctors;

DELIMITER $$
CREATE PROCEDURE GetMostVisitedDoctor()
BEGIN
    SELECT 
        d.DoctorID,
        d.Name AS DoctorName,
        d.Specialization,
        COUNT(a.AppointmentID) AS TotalAppointments
    FROM Doctors d
    JOIN Appointments a ON d.DoctorID = a.DoctorID
    GROUP BY d.DoctorID, d.Name, d.Specialization
    ORDER BY TotalAppointments DESC
    LIMIT 1;
END $$
DELIMITER ;
CALL GetMostVisitedDoctor();










