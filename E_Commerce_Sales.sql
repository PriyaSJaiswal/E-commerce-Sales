Create database E_Commerce_Sales;

USE E_Commerce_Sales;

-- Find the number of Females who ordered Accessories where quantity 3-4
SELECT * FROM `e commerce sales`
WHERE Gender= 'Female'
AND Quantity BETWEEN 3 AND 4;

-- Find the number of Units from products and customer Id
SELECT 'Product Name''Customer ID', COUNT(*) AS units_sold FROM `e commerce sales`
GROUP BY 'Product Name''Customer ID'
ORDER BY units_sold DESC LIMIT 1;

-- Find age region wise using Case
SELECT Region, Age,
CASE
WHEN age>=50 THEN 'SENIOR'
WHEN age>=20 AND age<=50 THEN 'ADULT'
WHEN age<=20 AND age>=0 THEN 'CHILD'
ELSE 'no data'
END AS age_category  from `e commerce sales`;      

-- Find the average age from gender where age greater than 25
SELECT Gender ,avg(age) AS avg_age FROM `e commerce sales` 
GROUP BY Gender 
HAVING avg_age>25 
ORDER BY Gender ASC; 

-- Find average age region wise
SELECT Region, Gender ,avg(age) AS avg_age 
FROM `e commerce sales`
GROUP BY Region, Gender;   

-- Find Quantity in ascending along with Category and age
SELECT 'Customer Id',age, Category, Quantity FROM `e commerce sales` 
ORDER BY age, Quantity
ASC; 

-- Find the options of Category in E commerce
SELECT count(distinct(Category)) 
FROM `e commerce sales`;    

-- Find all orders from North region
SELECT * FROM `e commerce sales`
WHERE Region='North';

-- Find all order under Electronics Category
SELECT * FROM `e commerce sales`
WHERE Category='Electronics';

-- Find the maximum quantity from e commerce
SELECT * FROM `e commerce sales` WHERE Quantity=
(SELECT MAX(Quantity) FROM `e commerce sales`);


