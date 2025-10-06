1.Revenue & Profit by Country
  
SELECT Country, SUM(`Total Amount`) AS `Total Revenue`, SUM(Profit) AS `Total Profit`
FROM Sales_Data
WHERE Date BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY Country
ORDER BY `Total Revenue` DESC;

2.Top 5 Best-Selling Products
  
SELECT `Product Name`, SUM(`Quantity Purchased`) AS `Total Units Sold`
FROM Sales_Data
WHERE Date BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY `Product Name`
ORDER BY `Total Units Sold` DESC
LIMIT 5;

3.Best Sales Representatives
  
SELECT `Sales Representative`, SUM(`Total Amount`) AS `Total Sales`
FROM Sales_Data
WHERE Date BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY `Sales Representative`
ORDER BY `Total Sales` DESC
LIMIT 5;

4.Top Store Locations
  
SELECT `Store Location`, SUM(`Total Amount`) AS `Total Sales`, SUM(Profit) AS `Total Profit`
FROM Sales_Data
WHERE Date BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY `Store Location`
ORDER BY `Total Sales` DESC
LIMIT 5;

5.Key Sales & Profit Insights
  
SELECT 
    MIN(`Total Amount`) AS `Min Sales Value`,
    MAX(`Total Amount`) AS `Max Sales Value`,
    AVG(`Total Amount`) AS `Avg Sales Value`,
    SUM(`Total Amount`) AS `Total Sales Value`,
    MIN(Profit) AS `Min Profit`,
    MAX(Profit) AS `Max Profit`,
    AVG(Profit) AS `Avg Profit`,
    SUM(Profit) AS `Total Profit`
FROM Sales_Data
WHERE Date BETWEEN '2025-02-10' AND '2025-02-14';
