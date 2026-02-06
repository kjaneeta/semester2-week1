-- ID: 201967257
-- KAYLA JANEETA RAHARDJO


-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

.mode columns
.headers on

SELECT DepartmentName, COUNT(EnrolmentId) AS TotalEnrolments FROM Course
JOIN Department ON Course.DepartmentId=Department.DepartmentId
JOIN Enrolment ON Enrolment.CourseId=Course.CourseId
GROUP BY DepartmentName;
