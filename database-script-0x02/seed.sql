-- Sample data insertion for AirBnB database

-- Insert Users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_password1', '123-456-7890', 'host', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_password2', '234-567-8901', 'guest', NOW()),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol@example.com', 'hashed_password3', NULL, 'guest', NOW()),
('44444444-4444-4444-4444-444444444444', 'David', 'Lee', 'david@example.com', 'hashed_password4', '345-678-9012', 'admin', NOW());

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 'Cozy Downtown Apartment', 'A cozy 2-bedroom apartment in the city center.', 'New York, NY', 150.00, NOW(), NOW()),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 'Beachside Bungalow', 'Sunny bungalow with beach access.', 'Miami, FL', 200.00, NOW(), NOW());

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', '2025-06-01', '2025-06-05', 600.00, 'confirmed', NOW()),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbc', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', '2025-07-10', '2025-07-15', 1000.00, 'pending', NOW());

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 600.00, NOW(), 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('dddddddd-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 5, 'Amazing stay! Highly recommend.', NOW()),
('dddddddd-dddd-dddd-dddd-ddddddddddde', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', 4, 'Great location but a bit noisy.', NOW());

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi! Is the apartment available for the weekend?', NOW()),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeef', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, it is available. Let me know if you want to book.', NOW());
