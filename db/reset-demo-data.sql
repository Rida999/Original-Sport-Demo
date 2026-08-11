-- Preserve superadmin-managed inventory and import data between demo resets.
-- Only demo transaction state is restarted every 30 minutes.
TRUNCATE TABLE receipt_draft CASCADE;
TRUNCATE TABLE receipt_items CASCADE;
TRUNCATE TABLE receipts CASCADE;
TRUNCATE TABLE activity_logs CASCADE;

INSERT INTO activity_logs SELECT * FROM activity_logs_seed;
INSERT INTO receipts SELECT * FROM receipts_seed;
INSERT INTO receipt_items SELECT * FROM receipt_items_seed;
INSERT INTO receipt_draft SELECT * FROM receipt_draft_seed;
