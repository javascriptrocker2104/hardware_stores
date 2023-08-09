CREATE TABLE IF NOT EXISTS shops(
shop_id Int32,
shop_name String
);
ENGINE = MergeTree()
PRIMARY KEY(shop_id);

CREATE TABLE IF NOT EXISTS products(
product_id Int32,
product_name String,
price Decimal32(2)
);
ENGINE = MergeTree()
PRIMARY KEY(product_id);

CREATE TABLE IF NOT EXISTS plan(
product_id Int32,
shop_id Int32,
plan_cnt Int32,
plan_date DATE
);
ENGINE = MergeTree()
ORDER BY product_id;

CREATE TABLE IF NOT EXISTS shop_dns(
product_id Int32,
shop_id Int32,
sales_cnt Int32,
date DATE
);
ENGINE = MergeTree()
ORDER BY product_id;

CREATE TABLE IF NOT EXISTS shop_mvideo(
product_id Int32,
shop_id Int32,
sales_cnt Int32,
date DATE
);

ENGINE = MergeTree()
ORDER BY product_id;

CREATE TABLE IF NOT EXISTS shop_sitilink(
product_id Int32,
shop_id Int32,
sales_cnt Int32,
date DATE
);

ENGINE = MergeTree()
ORDER BY product_id;