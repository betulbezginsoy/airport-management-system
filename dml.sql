INSERT INTO Plane_Model
(model_name, manufacturer, max_capacity, weight, fuel_capacity)
VALUES
('Boeing 737', 'Boeing', 180, 41410, 26000),
('Airbus A320', 'Airbus', 170, 42000, 24000),
('Boeing 777', 'Boeing', 396, 134800, 181000),
('Airbus A380', 'Airbus', 853, 277000, 320000);

INSERT INTO Airplane
(model_id, serial_number, capacity, manufacture_year, status)
VALUES
(1, 'B737-TR001', 180, 2018, 'Active'),
(1, 'B737-TR002', 180, 2020, 'Maintenance'),
(2, 'A320-TR003', 170, 2019, 'Active'),
(3, 'B777-TR004', 396, 2015, 'Active'),
(4, 'A380-TR005', 853, 2017, 'Maintenance');

INSERT INTO Hangar
(location, capacity, manager_name)
VALUES
('North Zone', 10, 'Ahmet Kaya'),
('South Zone', 8, 'Mehmet Demir'),
('VIP Maintenance Area', 5, 'Ayşe Yılmaz');

INSERT INTO Employee
(ssn, first_name, last_name, phone, salary, hire_date, union_membership_no)
VALUES
('1001', 'Ali', 'Çelik', '5551112233', 45000, '2018-05-01', 'UN1001'),
('1002', 'Zeynep', 'Kara', '5552223344', 47000, '2019-03-12', 'UN1002'),
('1003', 'Mert', 'Aydın', '5553334455', 52000, '2017-09-21', 'UN1003'),
('1004', 'Ece', 'Şahin', '5554445566', 43000, '2020-01-10', 'UN1004'),
('1005', 'Burak', 'Koç', '5555556677', 49000, '2016-11-15', 'UN1005');

INSERT INTO Technician
(ssn, license_no, experience_years)
VALUES
('1001', 'TECH-LIC-001', 8),
('1002', 'TECH-LIC-002', 6),
('1003', 'TECH-LIC-003', 10);

INSERT INTO Traffic_Controller
(ssn, last_medical_exam, shift_type)
VALUES
('1004', '2025-01-15', 'Day'),
('1005', '2024-10-20', 'Night');

INSERT INTO Test
(test_name, max_score, test_description, required_frequency_days)
VALUES
('Engine Test', 100, 'Engine performance evaluation', 180),
('Hydraulic Test', 100, 'Hydraulic system check', 365),
('Electrical Test', 100, 'Electrical systems inspection', 180),
('Safety Inspection', 100, 'Complete safety inspection', 90);

INSERT INTO Expertise
(tech_id, model_id, certification_date)
VALUES
(1, 1, '2019-01-10'),
(1, 2, '2020-05-12'),
(2, 2, '2021-03-15'),
(3, 3, '2018-07-01'),
(3, 4, '2019-09-20');

INSERT INTO Hangar_Stay
(plane_id, hangar_id, check_in, check_out)
VALUES
(1, 1, '2025-01-01 08:00:00', NULL),
(2, 2, '2025-02-01 09:30:00', '2025-02-10 14:00:00'),
(3, 1, '2025-03-05 10:00:00', NULL),
(4, 3, '2025-03-10 11:00:00', NULL);

INSERT INTO Test_Event
(plane_id, tech_id, test_id, test_date, hours_spent, score, result)
VALUES
(1, 1, 1, '2025-01-15', 4.5, 95, 'PASS'),
(2, 2, 2, '2025-02-10', 3.0, 88, 'PASS'),
(3, 1, 3, '2025-03-12', 5.0, 91, 'PASS'),
(4, 3, 4, '2025-03-18', 6.5, 76, 'PASS'),
(5, 3, 1, '2025-04-01', 7.0, 65, 'FAIL');

INSERT INTO Maintenance
(plane_id, tech_id, maintenance_date, description, cost)
VALUES
(1, 1, '2025-01-20', 'Routine engine maintenance', 15000),
(2, 2, '2025-02-15', 'Hydraulic repair', 22000),
(5, 3, '2025-04-05', 'Major engine overhaul', 75000);

INSERT INTO Shift_Schedule
(ssn, shift_date, shift_start, shift_end)
VALUES
('1001', '2025-05-01', '08:00:00', '16:00:00'),
('1002', '2025-05-01', '16:00:00', '00:00:00'),
('1003', '2025-05-02', '08:00:00', '16:00:00'),
('1004', '2025-05-02', '00:00:00', '08:00:00');