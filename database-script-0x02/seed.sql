-- Sample Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest'),
  (UUID(), 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '2345678901', 'host'),
  (UUID(), 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '3456789012', 'guest'),
  (UUID(), 'Diana', 'White', 'diana@example.com', 'hashed_pw4', '4567890123', 'host');


-- Sample properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'b1b1b1b1-b1b1-b1b1-b1b1-b1b1b1b1b1b1', 'Seaside Villa', 'Beautiful beachfront property', 'Mombasa, Kenya', 150.00, NOW()),
  ('22222222-2222-2222-2222-222222222222', 'd2d2d2d2-d2d2-d2d2-d2d2-d2d2d2d2d2d2', 'City Apartment', 'Modern apartment in city center', 'Nairobi, Kenya', 90.00, NOW());

-- Sample Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('bkg-1-uuid-0000-0000-0000-bkg1', '11111111-1111-1111-1111-111111111111', 'c3c3c3c3-c3c3-c3c3-c3c3-c3c3c3c3c3c3', '2025-07-01', '2025-07-05', 600.00, 'confirmed', NOW()),
  ('bkg-2-uuid-0000-0000-0000-bkg2', '22222222-2222-2222-2222-222222222222', 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1', '2025-07-10', '2025-07-12', 180.00, 'pending', NOW());


-- Sample Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('pay-uuid-0000-0000-0000-pay1', 'bkg-1-uuid-0000-0000-0000-bkg1', 600.00, NOW(), 'credit_card'),
  ('pay-uuid-0000-0000-0000-pay2', 'bkg-2-uuid-0000-0000-0000-bkg2', 180.00, NOW(), 'paypal');


-- Sample Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('rev-uuid-0000-0000-0000-rev1', '11111111-1111-1111-1111-111111111111', 'c3c3c3c3-c3c3-c3c3-c3c3-c3c3c3c3c3c3', 5, 'Amazing stay, will return again!', NOW()),
  ('rev-uuid-0000-0000-0000-rev2', '22222222-2222-2222-2222-222222222222', 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1', 4, 'Very comfortable and clean.', NOW());

-- Sample Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('msg-uuid-0000-0000-0000-msg1', 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1', 'b1b1b1b1-b1b1-b1b1-b1b1-b1b1b1b1b1b1', 'Hi, I’m interested in your property for July 10.', NOW()),
  ('msg-uuid-0000-0000-0000-msg2', 'b1b1b1b1-b1b1-b1b1-b1b1-b1b1b1b1b1b1', 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1', 'Hi Alice, the property is available! Feel free to book.', NOW());
