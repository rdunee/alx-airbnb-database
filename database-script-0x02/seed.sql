-- ================================
-- Sample Data: Users
-- ================================
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
  ('uuid-user-001', 'Alice', 'Johnson', 'alice@example.com', 'hashedpass1', '1234567890', 'guest', CURRENT_TIMESTAMP),
  ('uuid-user-002', 'Bob', 'Smith', 'bob@example.com', 'hashedpass2', '0987654321', 'host', CURRENT_TIMESTAMP),
  ('uuid-user-003', 'Carol', 'Lee', 'carol@example.com', 'hashedpass3', NULL, 'admin', CURRENT_TIMESTAMP);

-- ================================
-- Sample Data: Property
-- ================================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  ('uuid-prop-001', 'uuid-user-002', 'Oceanview Apartment', 'Sea-facing 2-bedroom flat', 'Cape Town', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('uuid-prop-002', 'uuid-user-002', 'City Loft', 'Modern loft in city center', 'Kigali', 80.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- ================================
-- Sample Data: Booking
-- ================================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('uuid-book-001', 'uuid-prop-001', 'uuid-user-001', '2025-07-10', '2025-07-15', 600.00, 'confirmed', CURRENT_TIMESTAMP),
  ('uuid-book-002', 'uuid-prop-002', 'uuid-user-001', '2025-08-01', '2025-08-03', 160.00, 'pending', CURRENT_TIMESTAMP);

-- ================================
-- Sample Data: Payment
-- ================================
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('uuid-pay-001', 'uuid-book-001', 600.00, CURRENT_TIMESTAMP, 'credit_card'),
  ('uuid-pay-002', 'uuid-book-002', 160.00, CURRENT_TIMESTAMP, 'paypal');

-- ================================
-- Sample Data: Review
-- ================================
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('uuid-rev-001', 'uuid-prop-001', 'uuid-user-001', 5, 'Amazing stay, great view!', CURRENT_TIMESTAMP),
  ('uuid-rev-002', 'uuid-prop-002', 'uuid-user-001', 4, 'Nice place, but noisy at night.', CURRENT_TIMESTAMP);

-- ================================
-- Sample Data: Message
-- ================================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('uuid-msg-001', 'uuid-user-001', 'uuid-user-002', 'Hi, is the Oceanview Apartment available next weekend?', CURRENT_TIMESTAMP),
  ('uuid-msg-002', 'uuid-user-002', 'uuid-user-001', 'Yes, it is available. Feel free to book it.', CURRENT_TIMESTAMP);
