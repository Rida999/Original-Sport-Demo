TRUNCATE TABLE receipt_draft CASCADE;
TRUNCATE TABLE receipt_items CASCADE;
TRUNCATE TABLE receipts CASCADE;
TRUNCATE TABLE import_items CASCADE;
TRUNCATE TABLE import_batches CASCADE;
TRUNCATE TABLE activity_logs CASCADE;
TRUNCATE TABLE products CASCADE;
TRUNCATE TABLE categories CASCADE;

INSERT INTO categories SELECT * FROM categories_seed;
INSERT INTO products SELECT * FROM products_seed;
INSERT INTO activity_logs SELECT * FROM activity_logs_seed;
INSERT INTO import_batches SELECT * FROM import_batches_seed;
INSERT INTO import_items SELECT * FROM import_items_seed;
INSERT INTO receipts SELECT * FROM receipts_seed;
INSERT INTO receipt_items SELECT * FROM receipt_items_seed;
INSERT INTO receipt_draft SELECT * FROM receipt_draft_seed;
