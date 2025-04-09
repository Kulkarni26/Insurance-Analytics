select * from invoice;

-- KPI 1 --

SELECT `Account Executive`, COUNT(`invoice_number`) AS Invoice_Count
FROM invoice
GROUP BY `Account Executive`
ORDER BY Invoice_Count DESC;

-- KPI 2 --
select * FROM meeting;

SELECT YEAR(STR_TO_DATE(`meeting_date`, '%d-%m-%Y')) AS Year, COUNT(*) AS Meeting_Count
FROM meeting
GROUP BY Year
ORDER BY Year;

-- KPI 6 --
SELECT * FROM opportunity;

select
opportunity_name,
    opportunity_id, 
    premium_amount, 
    revenue_amount, 
     
    stage, 
    product_group
FROM 
   opportunity 
WHERE 
    stage IN ('qualify opportunity','negotiate','propose solution')
ORDER BY 
    revenue_amount DESC
LIMIT 4;

-- KPI 5 --

select * FROM meeting;

SELECT `Account Executive`, COUNT(*) AS Meeting_Count
FROM meeting
GROUP BY `Account Executive`
ORDER BY Meeting_Count DESC;

-- KPI 4 --
select * from opportunity;

select
    stage,
    SUM(revenue_amount) AS total_revenue
FROM 
    opportunity
GROUP BY 
    stage
ORDER BY 
    total_revenue DESC;
    
    -- KPI 3 --DATA_BY_INCOME_CLASS
    



   