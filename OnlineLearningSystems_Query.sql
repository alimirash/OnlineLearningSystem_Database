   
SELECT UserID, Username, Password, Email 
FROM account 
WHERE UserID > 2
ORDER BY Username asc;


SELECT s.FirstName , s.LastName , c.Title
FROM courses c
INNER JOIN instructor s
ON s.LastName = c.Instructor_Name
WHERE c.Course_ID = '3';


select s.FirstName , s.LastName
from support s
inner join feedback f
on f.Support_ID = s.Support_ID;


select FirstName,LastName ,max(grade) 
from certificate
where year(AchivedDate)  > '1995';  


SELECT Course_ID , FirstName , grade
FROM certificate
GROUP BY Course_ID
having grade >= 80 ;



