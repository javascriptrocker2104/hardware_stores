CREATE TABLE IF NOT EXISTS product
( product_id Int32
, product_name String
, price Float64
)
ENGINE = MergeTree()
PRIMARY KEY(product_id);

CREATE TABLE IF NOT EXISTS shop
( shop_id Int32
, shop_name String
)
ENGINE = MergeTree()
PRIMARY KEY(shop_id);

CREATE TABLE IF NOT EXISTS plan
( product_id Int32
, shop_id Int32
, plan_cnt Int32
, plan_date Date
)
ENGINE = MergeTree()
ORDER BY product_id;

CREATE TABLE IF NOT EXISTS shop_dns
( shop_id Int32
, product_id Int32
, date Date
, sales_cnt Int32
)
ENGINE = MergeTree()
ORDER BY product_id;

CREATE TABLE IF NOT EXISTS shop_mvideo
( shop_id Int32
, product_id Int32
, date Date
, sales_cnt Int32
)
ENGINE = MergeTree()
ORDER BY product_id;

CREATE TABLE IF NOT EXISTS shop_sitilink
( shop_id Int32
, product_id Int32
, date Date
, sales_cnt Int32
)
ENGINE = MergeTree()
ORDER BY product_id;
