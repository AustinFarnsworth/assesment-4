INSERT INTO artist (name)
VALUES ('Austin');
VALUES ('The Garage Band');
VALUES ('The windy road');


SELECT * FROM artist
WHERE artist_id < 5
ORDER BY name ASC;

SELECT * FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT * FROM employee
WHERE city = 'Lethbridge'; 


SELECT COUNT(*) FROM invoice
WHERE billing_city = 'USA';

SELECT MAX(total) FROM invoice; 

SELECT MIN(total) FROM invoice; 

SELECT * FROM invoice 
WHERE total > 5; 

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice; 

SELECT * FROM invoice i 
JOIN invoice_line il ON il.invoice_id = i.invoice_id 
WHERE i.unit_price > 0.99;

SELECT i.invoice_data, c.first_name, c.last_name, i.total FROM invoice i 
JOIN customer c ON i.customer_id = c.customer_id;


SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer customer
JOIN employee e ON c.support_rep_id = e.employee.id;

SELECT al.title, ar.name FROM album al 
JOIN artist ar ON al.artist_id = ar.artist_id;


Extra Credit

SELECT * FROM artist 
WHERE artist_id <= 10
ORDER BY name ASC;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%BLACK%';

SELECT MIN(birth_date) FROM employee;

SELECT MAX(birth_date) FROM employee; 

SELECT COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice; 


SELECT pt.track_id FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

SELECT t.name, p.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;


SELECT t.name, a.title FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';









