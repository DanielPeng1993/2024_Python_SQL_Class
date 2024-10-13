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
 