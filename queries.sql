-- QUERY 1
SELECT * FROM Airplane;

-- QUERY 2
SELECT 
    A.plane_id,
    A.serial_number,
    P.model_name,
    P.manufacturer,
    A.status
FROM Airplane A
JOIN Plane_Model P
ON A.model_id = P.model_id;

-- QUERY 3
SELECT 
    tech_id,
    COUNT(*) AS total_tests
FROM Test_Event
GROUP BY tech_id;

-- QUERY 4
SELECT *
FROM Test_Event
WHERE result = 'FAIL';

-- QUERY 5
SELECT 
    AVG(score) AS average_test_score
FROM Test_Event;

-- QUERY 6
SELECT 
    plane_id,
    MAX(score) AS highest_score
FROM Test_Event
GROUP BY plane_id;

-- QUERY 7
SELECT 
    plane_id,
    SUM(cost) AS total_maintenance_cost
FROM Maintenance
GROUP BY plane_id;

-- QUERY 8
SELECT 
    tech_id,
    COUNT(*) AS total_tests
FROM Test_Event
GROUP BY tech_id
HAVING COUNT(*) > 1;

-- QUERY 9
SELECT *
FROM Airplane
WHERE plane_id NOT IN (
    SELECT plane_id
    FROM Test_Event
);

-- QUERY 10
SELECT *
FROM Test_Event
ORDER BY test_date DESC;

-- QUERY 11
SELECT *
FROM Hangar_Stay
WHERE check_out IS NULL;

-- QUERY 12
SELECT *
FROM Technician
ORDER BY experience_years DESC
LIMIT 1;

-- QUERY 13
SELECT 
    SUM(salary) AS total_salary_budget
FROM Employee;

-- QUERY 14
SELECT 
    T.tech_id,
    P.model_name
FROM Expertise E
JOIN Technician T
ON E.tech_id = T.tech_id
JOIN Plane_Model P
ON E.model_id = P.model_id;

-- QUERY 15
SELECT 
    model_id,
    COUNT(*) AS total_planes
FROM Airplane
GROUP BY model_id;

-- QUERY 16
SELECT *
FROM Employee
WHERE YEAR(hire_date) = 2020;

-- QUERY 17
SELECT 
    tech_id,
    COUNT(*) AS total_tests
FROM Test_Event
GROUP BY tech_id
ORDER BY total_tests DESC
LIMIT 1;

-- QUERY 18
SELECT 
    hangar_id,
    COUNT(*) AS total_planes
FROM Hangar_Stay
GROUP BY hangar_id
ORDER BY total_planes DESC;

-- QUERY 19
SELECT 
    result,
    COUNT(*) AS total
FROM Test_Event
GROUP BY result;