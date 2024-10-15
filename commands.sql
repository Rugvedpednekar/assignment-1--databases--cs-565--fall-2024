-- Get the name of the store and its URL where any spices were purchased.

-- Get the name of the store and its URL where spices were purchased, including their barcode.

-- Get stores who only have an online address.
select store_name
from store_addresses
WHERE physical_address IS NULL;

-- Get stores who have an online and a physical address.
select store_name   
from store_addresses
WHERE physical_address and url_address IS NOT NULL;

-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.


-- Get spices whose names contain “cinnamon”.
SELECT spice_name       
from spices      
WHERE spice_name LIKE '%cinnamon%';
-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
