SHOW VARIABLES LIKE 'secure_file_priv';

-- Create database
CREATE DATABASE IF NOT EXISTS clinical_lab;
USE clinical_lab;

-- Create tables for clinical lab analytics database

CREATE TABLE CL_patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    sex ENUM('M', 'F')
);

CREATE TABLE lab_tests (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(100),
    test_type VARCHAR(50),
    normal_range_min FLOAT,
    normal_range_max FLOAT,
    units VARCHAR(50)
);

CREATE TABLE lab_results (
    result_id INT PRIMARY KEY,
    patient_id INT,
    test_id INT,
    test_date DATE,
    result_value VARCHAR(50),
    -- Foreign key relationships to ensure referential integrity
    FOREIGN KEY (patient_id) REFERENCES CL_patients(patient_id),
    FOREIGN KEY (test_id) REFERENCES lab_tests(test_id)
);

CREATE TABLE test_orders (
    order_id INT PRIMARY KEY,
    patient_id INT,
    test_id INT,
    order_date DATE,
    result_date DATE,
    FOREIGN KEY (patient_id) REFERENCES CL_patients(patient_id),
    FOREIGN KEY (test_id) REFERENCES lab_tests(test_id)
);
