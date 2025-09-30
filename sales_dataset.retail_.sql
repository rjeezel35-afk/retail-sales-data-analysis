SELECT * FROM sales_dataset.retail_sales_dataset;
SELECT COUNT(*) AS row_count FROM sales_dataset.retail_sales_dataset;

## finding duplicate
SELECT
 " Transaction ID", count(*) as dupes from sales_dataset.retail_sales_dataset
  group by  "Transaction ID" having count(*) > 1;
  
  ## finding blank spaces
  select sum("Date" is null) as null_date,
  sum("Customer ID" IS NULL) as null_Customer_ID,
  sum("Gender" is null) as null_Gender,
  sum("Age"is null) as null_Age,
  sum("Product Category" is null) as null_Product_Category,
  sum("Quantity" is null) as null_Quantity,
  sum("Price Per Unit" is null) as null_Price_Per_Unit,
  sum("Total Amount " is null) as null_Total_Amount from sales_dataset.retail_sales_dataset;
  
  
  ## checking inconsistencies
  SELECT * FROM sales_dataset.retail_sales_dataset
  where "Total Amount" <> "Quantity" * "Price Per Unit";
   
  
  SELECT
  COUNT(*)                    AS total_orders,
  COUNT(DISTINCT "Customer ID") AS unique_customers,
  SUM("Total Amount")           AS total_revenue,
  AVG("Total Amount")           AS avg_order_value,
  SUM("Quantity")               AS total_units
FROM sales_dataset.retail_sales_dataset;

select
sum("Total Amount") as total FROM sales_dataset.retail_sales_dataset;

describe sales_dataset.retail_sales_dataset;
show columns from sales_dataset.retail_sales_dataset;
