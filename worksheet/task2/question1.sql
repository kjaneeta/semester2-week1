-- ID: 201967257
-- KAYLA JANEETA RAHARDJO

-- List all students who enrolled in the year 2022.
-- Expected Columns:
-- StudentId, FirstName, LastName, EnrolmentYear

.mode columns
.headers on

SELECT StudentID, FirstName, LastName, EnrolmentYear 
FROM Student
WHERE EnrolmentYear=2022;