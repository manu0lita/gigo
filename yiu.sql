CREATE DATABASE StudentManagement;
USE StudentManagement;
SHOW DATABASES;
SHOW DATABASES;
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT,
    -- Ensure Gender only accepts 'M' or 'F'
    CHECK (Gender IN ('M', 'F'))
);
DESCRIBE Students;
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Aarav Sharma', 'M', 16, 'A', 95, 92, 88),
('Ishita Verma', 'F', 15, 'B', 80, 85, 78),
('Rohan Mehta', 'M', 17, 'A', 90, 87, 93),
('Sneha Kapoor', 'F', 16, 'C', 72, 75, 70),
('Vihaan Gupta', 'M', 15, 'B', 85, 80, 82),
('Ananya Iyer', 'F', 16, 'A', 94, 90, 96),
('Devansh Saxena', 'M', 17, 'C', 68, 70, 72),
('Kriti Malhotra', 'F', 15, 'B', 78, 83, 80),
('Kabir Joshi', 'M', 16, 'A', 98, 95, 99),
('Riya Singh', 'F', 17, 'C', 74, 76, 78);
SHOW TABLES;
SELECT * FROM Students;
SELECT 
    AVG(MathScore) AS Average_Math_Score, 
    AVG(ScienceScore) AS Average_Science_Score, 
    AVG(EnglishScore) AS Average_English_Score
FROM Students;
SELECT Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore,
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
WHERE (MathScore + ScienceScore + EnglishScore) = (
    SELECT MAX(MathScore + ScienceScore + EnglishScore) FROM Students
);
SELECT Grade, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY Grade
ORDER BY Grade;

SELECT Gender,
       AVG(MathScore + ScienceScore + EnglishScore) AS AverageTotalScore
FROM Students
GROUP BY Gender;

SELECT * FROM Students  
WHERE MathScore > 80;  

UPDATE Students
SET Grade = 'A'
WHERE StudentID = 5;
