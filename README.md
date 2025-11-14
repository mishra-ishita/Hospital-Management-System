# 🏥 Hospital Management System 

This project showcases a **Hospital Management Database System** built using **MySQL**.
It manages patients, doctors, and appointments efficiently, and includes advanced SQL concepts such as **joins, stored procedures, aggregate queries**, and relational database design.


## 📘 Project Overview

The database system includes three main modules:

### **👤 Patient Information**

* Stores patient details such as ID, name, age, and gender.

### **🩺 Doctor Information**

* Maintains doctor details including name, specialization, and related appointment info.

### **📅 Appointments**

* Records appointment date, diagnosis, doctor–patient mapping, and consultation fees.

This system acts as a foundation for health-care data management and analytics.


## ⚙️ Stored Procedures Implemented

### **1. Get_Patient_Appointments1(p_patient_id)**

Returns all appointments for a specific patient, including:
* Appointment Date
* Doctor Name
* Specialization
* Diagnosis
* Fees

### **2. Get_Doctor_Appointments(p_doctor_id)**

Displays all appointments associated with a specific doctor, including:
* Patient Name
* Appointment Date
* Diagnosis

### **3. get_appointments_in_range(start_date, end_date)**

Fetches all appointments that occurred **between two given dates**, returning patient name, doctor name, and diagnosis.

### **4. get_total_earnings_by_doctor(Doc_ID)**

Calculates the **total earnings** for a specific doctor using the `SUM()` function on appointment fees.

### **5. get_most_visited_doctor()**

Returns the doctor who has handled the **highest number of appointments**, along with:
* Doctor Name
* Total Patients

## 🧠 SQL Concepts Used

* Table creation & foreign key relationships
* `INNER JOIN` operations
* Stored procedures with `IN` parameters
* `GROUP BY` and aggregate calculations
* `SUM()` and `COUNT()` functions
* `ORDER BY`, `LIMIT`
* `DELIMITER` handling for procedures

## 💡 Key Learnings

Through this project, I strengthened my skills in:
* Writing stored procedures in MySQL
* Implementing joins across multiple tables
* Designing relational database queries
* Performing data aggregation (SUM, COUNT, GROUP BY)
* Handling real-world business logic scenarios
* Improving query accuracy and performance through proper schema design

## 🏁 Conclusion

This project provided a hands-on understanding of how real-world database systems operate within a hospital environment. By designing tables, establishing relationships, and developing advanced stored procedures, I gained practical experience in writing efficient SQL queries and extracting meaningful insights from structured data.

The Hospital Management System demonstrates my ability to work with relational databases, implement business logic using SQL, and build scalable solutions suitable for analytics and backend applications. This project strengthens my foundation in SQL and reflects my capability to handle real-world data scenarios.
