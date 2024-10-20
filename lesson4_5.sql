/*從payment資料表中,取出所有員工的訂單總數*/

SELECT *
FROM payment
;

SELECT (first_name || ' ' || last_name) as full_name, COUNT(payment_id) as 訂單總數
FROM payment p JOIN staff s ON p.staff_id = s.staff_id
GROUP BY full_name
ORDER BY 訂單總數 ASC;

/*從payment資料表中,在每一個客戶的訂單總和*/

SELECT customer_id, COUNT(payment_id) as 訂單總數
FROM payment
GROUP BY customer_id
ORDER BY 訂單總數 ASC
;

/*取出每個員工,在每一個客戶的訂單總和*/
SELECT staff_id, customer_id, SUM(amount)
FROM payment
GROUP BY staff_id,customer_id
ORDER BY customer_id
;

/* 取出每日訂單的總和 */
/* cast operator */

SELECT payment_date::date AS 日期, SUM(amount) AS 總和
FROM payment
GROUP BY 日期
ORDER BY 日期
;

/* GROUP完，再處理資料時，使用HAVING */
SELECT customer_id,SUM(amount) AS 總和
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200
;

SELECT store_id,COUNT(customer_id) AS 客戶總數
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id)>300 
;


