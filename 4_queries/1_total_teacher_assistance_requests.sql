SELECT teachers.name, count(assistance_requests.*) as total_assists
FROM assistance_requests
JOIN teachers on teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;