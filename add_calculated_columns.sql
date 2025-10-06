1. Add Total Amount
  
ALTER TABLE Sales_Data ADD COLUMN `Total Amount` DECIMAL(10,2);
UPDATE Sales_Data
SET `Total Amount` = (`Price Per Unit` * `Quantity Purchased`) - `Discount Applied`;

2. Add Profit
  
ALTER TABLE Sales_Data ADD COLUMN `Profit` DECIMAL(10,2);
UPDATE Sales_Data
SET `Profit` = `Total Amount` - (`Cost Price` + `Quantity Purchased`);
