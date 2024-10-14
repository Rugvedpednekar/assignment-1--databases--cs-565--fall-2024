CREATE TABLE IF NOT EXISTS stores_list
 (
    store_id   INT NOT NULL,
    store_name VARCHAR(255) NOT NULL,
    comment    VARCHAR(255)
    
);


INSERT INTO stores_list (store_id, store_name, comment)
VALUES
(1, 'Costco', NULL),
(2, 'Fairway', NULL),
(3, 'Food Bazaar', NULL),
(4, 'Fresh Direct', 'Fresh Direct only sells online.'),
(5, 'iHerb', 'iHerb only sells online'),
(6, 'Key Food', NULL),
(7, 'Trader Joe’s', NULL),
(8, 'Whole Foods', NULL),
(9, 'Amazon', NULL);
