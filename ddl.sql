CREATE TABLE Plane_Model (
    model_id INT PRIMARY KEY AUTO_INCREMENT,
    model_name VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    max_capacity INT NOT NULL,
    weight DECIMAL(10,2),
    fuel_capacity DECIMAL(10,2)
);

CREATE TABLE Airplane (
    plane_id INT PRIMARY KEY AUTO_INCREMENT,
    model_id INT NOT NULL,
    serial_number VARCHAR(100) UNIQUE NOT NULL,
    capacity INT,
    manufacture_year YEAR,
    status VARCHAR(30),

    FOREIGN KEY (model_id)
    REFERENCES Plane_Model(model_id)
);

CREATE TABLE Hangar (
    hangar_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(100),
    capacity INT,
    manager_name VARCHAR(100)
);

CREATE TABLE Hangar_Stay (
    stay_id INT PRIMARY KEY AUTO_INCREMENT,
    plane_id INT NOT NULL,
    hangar_id INT NOT NULL,
    check_in DATETIME,
    check_out DATETIME,

    FOREIGN KEY (plane_id)
    REFERENCES Airplane(plane_id),

    FOREIGN KEY (hangar_id)
    REFERENCES Hangar(hangar_id)
);

CREATE TABLE Employee (
    ssn VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    salary DECIMAL(10,2),
    hire_date DATE,
    union_membership_no VARCHAR(50) UNIQUE
);

CREATE TABLE Technician (
    tech_id INT PRIMARY KEY AUTO_INCREMENT,
    ssn VARCHAR(20) UNIQUE,
    license_no VARCHAR(100),
    experience_years INT,

    FOREIGN KEY (ssn)
    REFERENCES Employee(ssn)
);

CREATE TABLE Traffic_Controller (
    controller_id INT PRIMARY KEY AUTO_INCREMENT,
    ssn VARCHAR(20) UNIQUE,
    last_medical_exam DATE,
    shift_type VARCHAR(20),

    FOREIGN KEY (ssn)
    REFERENCES Employee(ssn)
);

CREATE TABLE Test (
    test_id INT PRIMARY KEY AUTO_INCREMENT,
    test_name VARCHAR(100),
    max_score INT,
    test_description TEXT,
    required_frequency_days INT
);

CREATE TABLE Test_Event (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    plane_id INT,
    tech_id INT,
    test_id INT,
    test_date DATE,
    hours_spent DECIMAL(5,2),
    score INT CHECK(score >= 0 AND score <= 100),
    result VARCHAR(20),

    FOREIGN KEY (plane_id)
    REFERENCES Airplane(plane_id),

    FOREIGN KEY (tech_id)
    REFERENCES Technician(tech_id),

    FOREIGN KEY (test_id)
    REFERENCES Test(test_id)
);

CREATE TABLE Expertise (
    expertise_id INT PRIMARY KEY AUTO_INCREMENT,
    tech_id INT,
    model_id INT,
    certification_date DATE,

    FOREIGN KEY (tech_id)
    REFERENCES Technician(tech_id),

    FOREIGN KEY (model_id)
    REFERENCES Plane_Model(model_id)
);

CREATE TABLE Maintenance (
    maintenance_id INT PRIMARY KEY AUTO_INCREMENT,
    plane_id INT,
    tech_id INT,
    maintenance_date DATE,
    description TEXT,
    cost DECIMAL(10,2),

    FOREIGN KEY (plane_id)
    REFERENCES Airplane(plane_id),

    FOREIGN KEY (tech_id)
    REFERENCES Technician(tech_id)
);

CREATE TABLE Shift_Schedule (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    ssn VARCHAR(20),
    shift_date DATE,
    shift_start TIME,
    shift_end TIME,

    FOREIGN KEY (ssn)
    REFERENCES Employee(ssn)
);