-- INNER JOIN
SELECT
    b.booking_id,
    b.start_date, 
    b.end_date,
    b.total_price,
    b.status,
    u.first_name,
    u.last_name,
    u.email
FROM Bookings as b
INNER JOIN Users as u
ON b.user_id = u.user_id;

-- LEFT JOIN
SELECT
    p.property_id,
    p.name,
    p.location,
    p.pricepernight,
    r.review_id,
    r.comment,
    r.rating
FROM Properties as p
LEFT JOIN Reviews as r
ON p.property_id = r.property_id;

-- FULL OUTER JOIN
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.status,
    b.total_price
FROM users AS u
LEFT JOIN bookings as b
ON u.user_id = b.user_id

UNION

SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.status,
    b.total_price
FROM bookings AS b
RIGHT JOIN users as u
ON u.user_id = b.user_id