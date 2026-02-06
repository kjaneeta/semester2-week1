-- ID: 201967257
-- KAYLA JANEETA RAHARDJO


-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

.mode columns
.headers on

SELECT Student.StudentId, FirstName, LastName, CourseName FROM Student
-- note to self: cannot just use StudentId here because SQL does not know which of the StudentId s to pick (from student or enrolment)
JOIN Enrolment ON Student.StudentId=Enrolment.StudentId
JOIN Course ON Enrolment.CourseId=Course.CourseId;