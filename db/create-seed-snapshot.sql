DELETE FROM categories_seed;
DELETE FROM products_seed;
DELETE FROM activity_logs_seed;
DELETE FROM import_batches_seed;
DELETE FROM import_items_seed;
DELETE FROM receipts_seed;
DELETE FROM receipt_items_seed;
DELETE FROM receipt_draft_seed;

INSERT INTO categories_seed SELECT * FROM categories;
INSERT INTO products_seed SELECT * FROM products;
INSERT INTO activity_logs_seed SELECT * FROM activity_logs;
INSERT INTO import_batches_seed SELECT * FROM import_batches;
INSERT INTO import_items_seed SELECT * FROM import_items;
INSERT INTO receipts_seed SELECT * FROM receipts;
INSERT INTO receipt_items_seed SELECT * FROM receipt_items;
INSERT INTO receipt_draft_seed SELECT * FROM receipt_draft;
