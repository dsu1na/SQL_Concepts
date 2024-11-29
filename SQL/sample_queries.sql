"""
All these queries are part of the tutorial in geeks for geeks.
https://www.geeksforgeeks.org/sql-exercises/

"""


/*
Query with select in select statement
*/

select
cat,
sum(amount) / (select sum(amount) from sample_table)
from  sample_table
group by cat;


/*
Use of window function while using aggregates
*/

select 
cat,
sum(amount),
rank() over (order by sum(amount) desc)
from sample_table
group by cat;


/*
Running total for a product
*/

SELECT 
p.category, 
p.product_name, 
s.sale_date, 
SUM(s.total_price) OVER (PARTITION BY p.category ORDER BY s.sale_date) AS running_total_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id;


/*
Query where where condition contains a select statement
*/

select
*
from sales
where quantity_sold >= (select avg(quantity_sold) from sales);



/*
UBER interview questions
https://www.geeksforgeeks.org/uber-sql-interview-questions-with-answers-and-explanations/?ref=ml_lbp
*/


/*
Event overlap question
*/

SELECT e1.EventID AS EventID1, e1.EventName AS EventName1,
       e2.EventID AS EventID2, e2.EventName AS EventName2
FROM Events e1
JOIN Events e2 ON e1.EventID < e2.EventID
              AND ((e1.StartTime <= e2.StartTime AND e1.EndTime > e2.StartTime)
                   OR (e2.StartTime <= e1.StartTime AND e2.EndTime > e1.StartTime));

