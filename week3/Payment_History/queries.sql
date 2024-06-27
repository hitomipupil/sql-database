-- Find all payments made by payment method called 'PayPay'
SELECT payments.id, payment_methods.name FROM payments
JOIN payment_methods
ON payments.payment_method_id = payment_methods.id
WHERE payment_methods.name = 'PayPay';

-- Find all payment methods used by Emmanuel Macron
SELECT payment_methods.name AS 'payment_method', users.first_name, users.last_name
FROM payment_methods
JOIN users
ON payment_methods.user_id = users.id
WHERE first_name = 'Emmanuel' and last_name = 'Macron'

-- Insert data to each entity
INSERT INTO users (id, first_name, last_name) VALUES
(1, 'Hitomi', 'Yamamoto');

INSERT INTO users (first_name, last_name) VALUES
('Billie', 'Eilish'),
('Emmanuel', 'Macron'),
('Keanu', 'Reeves'),
('Tom', 'Cruise');

INSERT INTO shops (name, type_of_shop) Values
('Star Cafe', 'restaurant'),
('IYAGI', 'restaurant'),
('Flowershop', 'florist'),
('Best Hospital', 'hospital'),
('Lion', 'supermarket'),
('Hotel Brussels', 'Hotel');

INSERT INTO shops (name, type_of_shop) Values
('UNIQLO', 'clothing');

INSERT INTO products_and_services (name, type_of_product_or_service, price) Values
('Cappucino', 'drink', '3.00'),
('Carrot Cake', 'dessert', '4.00'),
('Salad', 'food', '5.00'),
('Bouquet', 'flower', '12.00'),
('Rose', 'flower', '3.00'),
('Treatment for leg', 'Hospital', '20.00'),
('Apple', 'fruits', '0.85'),
('stay with breakfast', 'hotel', '500.00'),
('Shorts', 'clothes', '60.00'),
('T-shirt', 'clothes', '55.00'),
('Socs', 'clothes', '12.00');

INSERT INTO bank_accounts (IBAN, bank_name, saving, user_id) Values
('5648415', 'UFJ', 300000, '1');


INSERT INTO bank_accounts (IBAN, bank_name, saving, user_id) Values
('8654154', 'KBC', 120000000, '1'),
('8454430', 'N26', 88000000, '2'),
('9564132', 'N26', 500000000, '3'),
('3445685', 'SWED', 600000000, '3'),
('7775422', 'KBC', 10, '4'),
('1002544', 'SWISS', 900000000, '4'),
('5028663', 'UFJ', 600000000, '5');

INSERT INTO payment_methods (name, company_name, user_id, IBAN) Values
('PayPay', 'SoftBank', '1', '5648415'),
('LinePay', 'Line', '1', '8654154'),
('R Debit Card', 'Rakuten', '2', '8454430'),
('R Credit Card', 'Rakuten', '3', '9564132'),
('M Debit Card', 'UFJ', '3', '3445685'),
('PayPay', 'SoftBank', '4', '7775422'),
('A Credit Card', 'SWEDBANK', '5', '5028663');

INSERT INTO payments (date_of_payment, user_id, payment_method_id) Values
('2024-1-2', '1', '1'),
('2023-5-5', '2', '3'),
('2019-6-1', '2', '3'),
('1999-5-8', '3', '4'),
('2020-12-20', '3', '4'),
('2022-8-12', '3', '5'),
('2016-2-23', '4', '6'),
('1996-7-27', '5', '7'),
('2014-9-29', '5', '7');

INSERT INTO purchase (payment_id, product_or_service_id) VALUES
(10, 1),
(11, 2),
(12, 3),
(13, 4),
(14, 5);

INSERT INTO inventory (shop_id, product_or_service_id) Values
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(7, 10),
(7, 11);