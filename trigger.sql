## This trigger is to add an additional brand_id for future potential analytics when adding more competitors.


START TRANSACTION; 


INSERT INTO brand 
SET brand_id = '942eklw931e'; 

SELECT *
FROM brand
WHERE brand_id = '942eklw931e';

COMMIT;