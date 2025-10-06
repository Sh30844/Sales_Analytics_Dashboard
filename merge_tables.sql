CREATE TABLE public."Sales_Data" AS
SELECT * FROM public."Sales_Canada"
UNION ALL
SELECT * FROM public."Sales_China"
UNION ALL
SELECT * FROM public."Sales_India"
UNION ALL
SELECT * FROM public."Sales_Nigeria"
UNION ALL
SELECT * FROM public."Sales_UK"
UNION ALL
SELECT * FROM public."Sales_US";
