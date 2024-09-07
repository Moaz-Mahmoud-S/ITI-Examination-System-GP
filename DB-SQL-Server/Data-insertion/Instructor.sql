
go
INSERT INTO Instructor (Instructor_ID, Instructor_Name, Ins_Degree, Salary, Department_ID)
SELECT TOP 30
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS Instructor_ID,
    FirstName + ' ' + LastName AS Instructor_Name,
    CASE 
        WHEN (ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 10) < 6 THEN 'Bachelor'
        WHEN (ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 10) < 9 THEN 'Master'
        ELSE 'PhD'
    END AS Ins_Degree,
    ROUND(CAST(10000 + (ABS(CHECKSUM(NEWID())) % 10001) AS FLOAT), -2) AS Salary,
    CASE 
        WHEN (ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 5) = 0 THEN 10
        WHEN (ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 5) = 1 THEN 20
        WHEN (ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 5) = 2 THEN 30
        WHEN (ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 5) = 3 THEN 40
        ELSE 50
    END AS Department_ID
FROM 
    (SELECT 'Ahmed' AS FirstName UNION ALL
     SELECT 'Mohamed' UNION ALL
     SELECT 'Ali' UNION ALL
     SELECT 'Khaled' UNION ALL
     SELECT 'Amr' UNION ALL
     SELECT 'Tamer' UNION ALL
     SELECT 'Osama' UNION ALL
     SELECT 'Youssef' UNION ALL
     SELECT 'Hassan' UNION ALL
     SELECT 'Mahmoud' UNION ALL
     SELECT 'Ibrahim' UNION ALL
     SELECT 'Mostafa' UNION ALL
     SELECT 'Sayed' UNION ALL
     SELECT 'Samir' UNION ALL
     SELECT 'Adel' UNION ALL
     SELECT 'Nour' UNION ALL
     SELECT 'Farid' UNION ALL
     SELECT 'Mansour' UNION ALL
     SELECT 'Salem') AS FirstNames
CROSS JOIN 
    (SELECT 'Youssef' AS LastName UNION ALL
     SELECT 'Hassan' UNION ALL
     SELECT 'Ibrahim' UNION ALL
     SELECT 'Mostafa' UNION ALL
     SELECT 'Sayed' UNION ALL
     SELECT 'Samir' UNION ALL
     SELECT 'Adel' UNION ALL
     SELECT 'Nabil' UNION ALL
     SELECT 'Gaber' UNION ALL
     SELECT 'Abdelrahman' UNION ALL
     SELECT 'Elshamy' UNION ALL
     SELECT 'Salem' UNION ALL
     SELECT 'Abdullah' UNION ALL
     SELECT 'Zaki' UNION ALL
     SELECT 'Rashid') AS LastNames;