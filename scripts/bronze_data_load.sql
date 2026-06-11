-- 1. crm_cust_info
TRUNCATE TABLE bronze.crm_cust_info;
COPY bronze.crm_cust_info 
FROM 'C:/data/source_crm/cust_info.csv' 
WITH (FORMAT CSV, HEADER, DELIMITER ',');

-- 2. crm_prd_info
TRUNCATE TABLE bronze.crm_prd_info;
COPY bronze.crm_prd_info 
FROM 'C:/data/source_crm/prd_info.csv' 
WITH (FORMAT CSV, HEADER, DELIMITER ',');

-- 3. crm_sales_details
TRUNCATE TABLE bronze.crm_sales_details;
COPY bronze.crm_sales_details 
FROM 'C:/data/source_crm/sales_details.csv' 
WITH (FORMAT CSV, HEADER, DELIMITER ',');

-- 4. erp_cust_az12
TRUNCATE TABLE bronze.erp_cust_az12;
COPY bronze.erp_cust_az12 
FROM 'C:/data/source_erp/CUST_AZ12.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',');

-- 5. erp_loc_a101
TRUNCATE TABLE bronze.erp_loc_a101;
COPY bronze.erp_loc_a101 
FROM 'C:/data/source_erp/LOC_A101.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',');

-- 6. erp_px_cat_g1v2
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
COPY bronze.erp_px_cat_g1v2 
FROM 'C:/data/source_erp/PX_CAT_G1V2.csv' 
WITH (FORMAT CSV, HEADER, DELIMITER ',');


SELECT * FROM bronze.crm_cust_info
