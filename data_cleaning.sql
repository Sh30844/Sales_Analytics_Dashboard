1. Check for missing values
  
SELECT *
FROM public."Sales_Data"
WHERE "Country" IS NULL
   OR "Price Per Unit" IS NULL
   OR "Quantity Purchased" IS NULL
   OR "Cost Price" IS NULL
   OR "Discount Applied" IS NULL;

2.Update specific rows
  
UPDATE public."Sales_Data"
SET "Quantity Purchased" = 3
WHERE "Transaction ID" = '00a30472-89a0-4688-9d33-67ea8ccf7aea';

UPDATE public."Sales_Data"
SET "Price Per Unit" = (
    SELECT AVG("Price Per Unit")
    FROM public."Sales_Data"
    WHERE "Price Per Unit" IS NOT NULL
)
WHERE "Transaction ID" = '001898f7-b696-4356-91dc-8f2b73d09c63';

3. Check for duplicates
  
SELECT "Transaction ID", COUNT(*)
FROM public."Sales_Data"
GROUP BY "Transaction ID"
HAVING COUNT(*) > 1;
