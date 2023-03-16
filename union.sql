SELECT * FROM customer AS C 
LEFT JOIN payment AS P ON C.customer_id = P.customer_id
UNION ALL
SELECT * FROM customer AS C 
RIGHT JOIN payment AS P ON C.customer_id = P.customer_id
WHERE C.customer_id IS NULL OR P.customer_id IS NULL;
/*select p1.customer_id, p1.staff_id, p2.customer_id, p2.staff_id  from payment AS p1
LEFT OUTER JOIN payment AS p2 ON p2.customer_id = p1.customer_id*/

