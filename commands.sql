-- Get the name of the store and its URL where any spices were purchased.
SELECT DISTINCT s.store_name, st.url_address
FROM spices_purchased
JOIN stores st ON s.store_id = st.store_id;

-- Get the name of the store and its URL where spices were purchased, including their barcode.

-- Get stores who only have an online address.

-- Get stores who have an online and a physical address.

-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.

-- Get spices whose names contain “cinnamon”.

-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
