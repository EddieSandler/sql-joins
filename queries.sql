 SELECT * FROM OWNERS FULL OUTER JOIN vehicles
ON owners.id= vehicles.owner_id;

SELECT first_name,last_name, COUNT(vehicles.owner_id) as count
FROM OWNERS FULL JOIN vehicles ON owners.id= vehicles.owner_id
GROUP BY first_name,last_name
HAVING COUNT(vehicles.owner_id)>0 ORDER BY count;


SELECT first_name,last_name,ROUND(AVG(price)) as avg_price, COUNT(vehicles.owner_id) as count
FROM OWNERS FULL JOIN vehicles
ON owners.id= vehicles.owner_id
GROUP BY owners.first_name,owners.last_name,owners.id
HAVING COUNT(owner_id) >1 AND ROUND(avg(price)) >10000 ORDER by count desc;