-- Checking Duplicates Data
-- kf_final_transaction
SELECT *, COUNT(*)
FROM `kimia_farma.kf_final_transaction`
GROUP BY 
  transaction_id,
  date,
  branch_id,
  customer_name,
  product_id,
  price,
  discount_percentage,
  rating
HAVING COUNT(*) > 1;

-- kf_kantor_cabang
SELECT *, COUNT(*)
FROM `kimia_farma.kf_kantor_cabang`
GROUP BY 
  branch_id,
  branch_category,
  branch_name,
  kota,
  provinsi,
  rating
HAVING COUNT(*) > 1;

-- kf_product
SELECT *, COUNT(*)
FROM `kimia_farma.kf_product`
GROUP BY 
  product_id,
  product_name,
  product_category,
  price
HAVING COUNT(*) > 1;

-- Conclusion: No Duplicates


-- Checking Missing Values Data
-- kf_final_transaction
SELECT *
FROM `kimia_farma.kf_final_transaction` AS ft
WHERE TO_JSON_STRING(ft) LIKE '%null%';

-- kf_kantor_cabang
SELECT *
FROM `kimia_farma.kf_kantor_cabang` AS kc
WHERE TO_JSON_STRING(kc) LIKE '%null%';

-- kf_product
SELECT *
FROM `kimia_farma.kf_product` AS p
WHERE TO_JSON_STRING(p) LIKE '%null%';

-- Conclusion: No Missing Values