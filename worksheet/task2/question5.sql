-- ID: 201967257
-- KAYLA JANEETA RAHARDJO

-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

.mode columns
.headers on

SELECT Student.StudentId, FirstName, LastName, SUM(Course.Credits) AS TotalCreditsPassed
FROM Student
JOIN Enrolment ON Student.StudentId=Enrolment.StudentId
JOIN Course ON Enrolment.CourseId=Course.CourseId
GROUP BY Enrolment.CourseId HAVING Grade>=40;

-- if grade is greater than or equal to 40
-- then get the credits from that course