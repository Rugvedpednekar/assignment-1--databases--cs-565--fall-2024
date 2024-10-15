-- Get SELECT store_name, url_address
SELECT store_name, url_address
from store_addresses
WHERE store_id IN (SELECT store_id FROM spices_purchased);  
-- Get the name of the store and its URL where spices were purchased, including their barcode.
SELECT spices_purchased.store_name, store_addresses.url_address, spices_purchased.barcode
FROM spices_purchased
JOIN store_addresses ON spices_purchased.store_id = store_addresses.store_id;

-- Get stores who only have an online address.
select store_name
from store_addresses
WHERE physical_address IS NULL;

-- Get stores who have an online and a physical address.
select store_name   
from store_addresses
WHERE physical_address and url_address IS NOT NULL;

-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.
 SELECT spice_name FROM spices s WHERE spice_name = s.brand;

-- Get spices whose names contain “cinnamon”.
SELECT spice_name       
from spices      
WHERE spice_name LIKE '%cinnamon%';
-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
SELECT sp.brand, st.store_name, st.url_address
FROM spices_purchased s, store_addresses st, spices sp
WHERE s.spice_name = 'Sumac'
AND s.store_id = st.store_id 
AND sp.barcode = s.barcode;
