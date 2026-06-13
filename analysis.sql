-- 1. Total Sales & Profit by Category
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM samplesuperstore
GROUP BY Category
ORDER BY total_sales DESC;

-- 2. Furniture Sub-Categories: Sales, Profit, Avg Discount
SELECT 
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM samplesuperstore
WHERE Category = 'Furniture'
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;

-- 3. Sales & Profit by Region
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM samplesuperstore
GROUP BY Region
ORDER BY total_profit DESC;

-- 4. Central Region: Profit & Discount by Category
SELECT 
    Region,
    Category,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM samplesuperstore
WHERE Region = 'Central'
GROUP BY Region, Category
ORDER BY total_profit ASC;

-- 5. Profit by Segment
SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM samplesuperstore
GROUP BY Segment
ORDER BY total_profit DESC;

-- 6. Profit by Category, Region, and Segment
SELECT 
    Category, Region, Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM samplesuperstore
GROUP BY Category, Region, Segment
ORDER BY total_profit DESC;

-- 7. Window Function: Rank Sub-Categories by Profit within each Category
SELECT 
    Category,
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS total_profit,
    RANK() OVER (PARTITION BY Category ORDER BY SUM(Profit) DESC) AS profit_rank
FROM samplesuperstore
GROUP BY Category, `Sub-Category`;
