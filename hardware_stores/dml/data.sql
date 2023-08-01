INSERT INTO products (product_id, product_name, price)
VALUES
(1, 'Испорченный телефон', 100),
(2, 'Сарафанное радио', 200),
(3, 'Патефон', 300);

INSERT INTO shops (shop_id, shop_name)
VALUES
(1, 'dns'),
(2, 'mvideo'),
(3, 'sitilink');

INSERT INTO plan (product_id, shop_id, plan_cnt, plan_date)
VALUES
(1, 1, 10, '2023-05-31'),
(2, 1, 15, '2023-05-31'),
(3, 1, 20, '2023-05-31'),
(1, 2, 10, '2023-05-31'),
(2, 2, 15, '2023-05-31'),
(3, 2, 20, '2023-05-31'),
(1, 3, 10, '2023-05-31'),
(2, 3, 15, '2023-05-31'),
(3, 3, 20, '2023-05-31'),
(1, 1, 10, '2023-04-30'),
(2, 1, 15, '2023-04-30'),
(3, 1, 20, '2023-04-30'),
(1, 2, 10, '2023-04-30'),
(2, 2, 15, '2023-04-30'),
(3, 2, 20, '2023-04-30'),
(1, 3, 10, '2023-04-30'),
(2, 3, 15, '2023-04-30'),
(3, 3, 20, '2023-04-30');


INSERT INTO shop_dns (shop_id, date, product_id, sales_cnt)
VALUES
(1, '2023-05-08', 1, 9),
(1, '2023-05-28', 1, 5),
(1, '2023-05-21', 2, 5),
(1, '2023-05-29', 2, 9),
(1, '2023-05-12', 3, 9),
(1, '2023-05-31', 3, 8),
(1, '2023-04-08', 1, 5),
(1, '2023-04-28', 1, 5),
(1, '2023-04-21', 2, 5),
(1, '2023-04-29', 2, 9),
(1, '2023-04-12', 3, 9),
(1, '2023-04-20', 3, 9),
(1, '2023-04-10', 3, 8);

INSERT INTO shop_mvideo (shop_id, date, product_id, sales_cnt)
VALUES
(2, '2023-05-08', 1, 5),
(2, '2023-05-28', 1, 5),
(2, '2023-05-21', 2, 5),
(2, '2023-05-12', 2, 9),
(2, '2023-05-12', 3, 9),
(2, '2023-05-21', 3, 7),
(2, '2023-05-08', 1, 5),
(2, '2023-04-28', 1, 5),
(2, '2023-04-21', 2, 5),
(2, '2023-04-20', 2, 9),
(2, '2023-04-12', 3, 9),
(2, '2023-04-20', 3, 9),
(2, '2023-04-30', 3, 7);

INSERT INTO shop_sitilink (shop_id, date, product_id, sales_cnt)
VALUES
(3, '2023-05-08', 1, 5),
(3, '2023-05-12', 1, 6),
(3, '2023-05-21', 2, 5),
(3, '2023-05-23', 2, 9),
(3, '2023-05-12', 3, 10),
(3, '2023-05-31', 3, 9),
(3, '2023-05-08', 1, 5),
(3, '2023-04-28', 1, 5),
(3, '2023-04-21', 2, 5),
(3, '2023-04-12', 2, 9),
(3, '2023-04-12', 3, 9),
(3, '2023-04-20', 3, 9),
(3, '2023-04-08', 3, 10);
