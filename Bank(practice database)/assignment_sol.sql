--The databse is some random student databse



SELECT s.name, c.course_id, e.grade FROM students AS s

INNER JOIN enrollments AS e

ON c.student_id = e.student_id

INNER JOIN courses as c

ON e.student_id = c.course_id; 