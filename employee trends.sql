-- 1. Count the number of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM EmployeeDetails
GROUP BY department;

-- 2. Calculate the average age for each department
SELECT department, AVG(age) AS average_age
FROM EmployeeDetails
GROUP BY department;

-- 3. Identify the most common job roles in each department
SELECT department, job_role, COUNT(*) AS role_count
FROM EmployeeDetails
GROUP BY department, job_role
ORDER BY department, role_count DESC;

-- 4. Calculate the average job satisfaction for each education level
SELECT education, AVG(job_satisfaction) AS average_satisfaction
FROM EmployeeDetails
GROUP BY education;

-- 5. Determine the average age for employees with different levels of job satisfaction
SELECT job_satisfaction, AVG(age) AS average_age
FROM EmployeeDetails
GROUP BY job_satisfaction;

-- 6. Calculate the attrition rate for each age band

SELECT  age_band, COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate
FROM EmployeeDetails E
GROUP BY age_band;

-- 7. Identify the department with the highest and lowest average job satisfaction

    SELECT department, AVG(job_satisfaction) AS average_satisfaction
    FROM EmployeeDetails
    GROUP BY department;

--------------------------------------------------------------------------------------------------------------
SELECT top 1 age_band,education,CAST(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5, 2)) AS attrition_rate
FROM EmployeeDetails
GROUP BY age_band, education
ORDER BY attrition_rate DESC;
--------------------------------------------------------------------------------------------------------------
select education, avg(job_satisfaction) AS average_job_sat
from EmployeeDetails
where business_travel='travel_frequently'
GROUP BY education
ORDER BY average_job_sat DESC;
--------------------------------------------------------------------------------------------------------------
SELECT age ,avg(job_satisfaction) as avg_job_satisfaction
FROM EmployeeDetails
WHERE marital_status ='Married'
GROUP BY age
ORDER BY avg_job_satisfaction DESC;