SELECT u.id, u.name, c.name AS city 
FROM users u 
JOIN cities c 
ON u."cityId" = c.id 
WHERE c.name ILIKE '%Rio de Janeiro' 
ORDER BY u.id ASC;

=========================================================================

SELECT t.id, u.name AS writer, b.name AS recipient, t.message
FROM testimonials t
JOIN users u
ON t."writerId" = u.id 
JOIN users b
ON t."recipientId"= b.id
ORDER BY t.id;


==========================================================================

SELECT u.id, u.name, c.name AS course, s.name AS school, e."endDate"
FROM users u
JOIN educations e
ON u.id = e."userId"
JOIN schools s
ON s.id = e."schoolId"
JOIN courses c
ON c.id = e."courseId"
WHERE (e.status ILIKE '%finished%' AND u.id =30);

==========================================================================

SELECT u.id, u.name, r.name AS role, c.name AS company, e."startDate" AS "startDate"
FROM users u
JOIN experiences e
ON u.id = e."userId"
JOIN companies c
ON c.id = e."companyId"
JOIN roles r
ON r.id = e."roleId"
WHERE ( u.id = 50 AND e."endDate" IS NULL);