CREATE DATABASE superstore_project;
USE superstore_project;

SELECT * FROM superstore_project.samplesuperstore LIMIT 5;

SELECT COUNT(*) FROM superstore_project.samplesuperstore;
SELECT * FROM superstore_project.samplesuperstore LIMIT 5;
select  Category, Round(SUM(Sales),2) as Total_Sales,Round(sum(Profit),2) as Total_Profit From superstore_project.samplesuperstore
group by Category
order by Category desc;

SELECT 
    'Sub-Category',
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount), 2) AS avg_discount
FROM superstore_project.samplesuperstore
WHERE category = 'Furniture'
GROUP BY 'Sub-Category'
ORDER BY total_profit ASC;

SHOW COLUMNS FROM superstore_project.samplesuperstore;

SELECT * FROM superstore_project.samplesuperstore LIMIT 3;

SELECT 
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM superstore_project.samplesuperstore
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;

select Region , ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_project.samplesuperstore
GROUP BY Region
ORDER BY total_profit DESC;

SELECT 
    Region,
    Category,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM superstore_project.samplesuperstore
WHERE Region = 'Central'
GROUP BY Region, Category
ORDER BY total_profit ASC;

SELECT 
    Segment,
    ROUND(SUM(Profit), 2) AS total_profit,ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM superstore_project.samplesuperstore
GROUP BY Segment
ORDER BY total_profit DESC;

SELECT 
Category, Region,Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM superstore_project.samplesuperstore
GROUP BY  Category,Region,Segment
ORDER BY total_profit DESC;

SELECT 
    Category,
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS total_profit,
    RANK() OVER (PARTITION BY Category ORDER BY SUM(Profit) DESC) AS profit_rank
FROM superstore_project.samplesuperstore
GROUP BY Category, `Sub-Category`;
