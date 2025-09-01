CREATE OR REPLACE TABLE `kimia_farma.kf_business_performance_2020_2023` AS
SELECT 
  ft.transaction_id,
  ft.date AS transaction_date,
  ft.branch_id,
  branch.branch_name,
  branch.kota,
  branch.provinsi,
  branch.rating AS rating_branch,
  ft.customer_name,
  ft.product_id,
  pd.product_name,
  pd.product_category,
  ft.price AS actual_price,
  ft.discount_percentage,

  -- Gross Profit Percentage
  CASE
    WHEN ft.price <= 50000 THEN 0.10
    WHEN ft.price <= 100000 THEN 0.15
    WHEN ft.price <= 300000 THEN 0.20
    WHEN ft.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS gross_profit_percentage,

  -- Nett Sales = price after discount
  ft.price * (1 - ft.discount_percentage) AS nett_sales,

  -- Nett Profit = nett_sales * gross_profit_percentage
  (ft.price * (1 - ft.discount_percentage)) *
  CASE
    WHEN ft.price <= 50000 THEN 0.10
    WHEN ft.price <= 100000 THEN 0.15
    WHEN ft.price <= 300000 THEN 0.20
    WHEN ft.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS nett_profit,

  ft.rating AS rating_transaction
FROM `kimia_farma.kf_final_transaction` AS ft
LEFT JOIN `kimia_farma.kf_kantor_cabang` branch
  ON ft.branch_id = branch.branch_id
LEFT JOIN `kimia_farma.kf_product` pd
  ON ft.product_id = pd.product_id;
