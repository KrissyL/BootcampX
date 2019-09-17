SELECT students.name, avg(assignment_submissions.duration) as avg_assigment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) DESC;