-- QUESTIONS

-- 1. What is the gender breakdown of employees in the company?
SELECT gender,COUNT(1) 
FROM project
GROUP BY gender
-- 2. What is the race/ethnicity breakdown of employees in the company?
SELECT race,COUNT(1)
FROM project
GROUP BY 1
ORDER BY 2 DESC
-- 3. What is the age distribution of employees in the company?
SELECT CASE 
WHEN age >=18 AND age<=24 THEN '18-24'
WHEN age>=25 AND age<=34 THEN '25-34'
WHEN age>=35 AND age<=44 THEN '35-44'
WHEN age>=45 AND age<=54 THEN '45-54'
ELSE '55+' END AS age_group,COUNT(1)
FROM project
GROUP BY 1
ORDER BY 1

--4.What is the age distribution of employees in the company based on gender?
SELECT CASE 
WHEN age >=18 AND age<=24 THEN '18-24'
WHEN age>=25 AND age<=34 THEN '25-34'
WHEN age>=35 AND age<=44 THEN '35-44'
WHEN age>=45 AND age<=54 THEN '45-54'
ELSE '55+' END AS age_group,gender,COUNT(1)
FROM project
GROUP BY 1,2
ORDER BY 1

-- 5. How many employees work at headquarters versus remote locations?
SELECT location,COUNT(1)
FROM project
GROUP BY 1

-- 6. How does the gender distribution vary across departments and job titles?
SELECT department,jobtitle,gender,COUNT(gender)
FROM project
GROUP BY 1,2,3

-- 7. What is the distribution of job titles across the company?
SELECT jobtitle,COUNT(1)
FROM project
GROUP BY 1
ORDER BY 2 DESC

-- 8. What is the distribution of employees across locations by city and state?
SELECT jobtitle,COUNT(1)
FROM project
GROUP BY 1
ORDER BY 2 DESC
