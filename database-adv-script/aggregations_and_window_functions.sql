-- find the total number of bookings made by each user
-- using the COUNT function and GROUP BY clause.

SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM users as u
LEFT JOIN bookings as b
ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name;

-- rank properties based on the total number of bookings they have received.
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank_row_number,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM properties AS p
LEFT JOIN bookings AS b
ON p.property_id = b.property_id
GROUP BY p.property_id, p.name;