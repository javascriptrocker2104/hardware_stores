CREATE TABLE IF NOT EXISTS public.shops(
shop_id serial PRIMARY key,
shop_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.products(
product_id serial PRIMARY key,
product_name VARCHAR(255) NOT NULL,
price INT NOT NULL
);

CREATE TABLE IF NOT EXISTS public.plan(
product_id INT,
FOREIGN KEY(product_id) REFERENCES products (product_id) ON DELETE CASCADE,
shop_id INT,
FOREIGN KEY(shop_id) REFERENCES shops (shop_id) ON DELETE CASCADE,
plan_cnt INT NOT NULL,
plan_date DATE
);

CREATE TABLE IF NOT EXISTS public.shop_dns(
product_id INT,
FOREIGN KEY(product_id) REFERENCES products (product_id) ON DELETE CASCADE,
dns_id INT,
FOREIGN KEY(dns_id) REFERENCES shops (shop_id) ON DELETE CASCADE,
sales_cnt INT NOT NULL,
date DATE
);

CREATE TABLE IF NOT EXISTS public.shop_mvideo(
product_id INT,
FOREIGN KEY(product_id) REFERENCES products (product_id) ON DELETE CASCADE,
mvideo_id INT,
FOREIGN KEY(mvideo_id) REFERENCES shops (shop_id) ON DELETE CASCADE,
sales_cnt INT NOT NULL,
date DATE
);

CREATE TABLE IF NOT EXISTS public.shop_sitilink(
product_id INT,
FOREIGN KEY(product_id) REFERENCES products (product_id) ON DELETE CASCADE,
sitilink_id INT,
FOREIGN KEY(sitilink_id) REFERENCES shops (shop_id) ON DELETE CASCADE,
sales_cnt INT NOT NULL,
date DATE
);

