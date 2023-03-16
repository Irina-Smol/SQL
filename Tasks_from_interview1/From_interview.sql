-- Решение
-- Junior

SELECT a.an_name, a.an_cost, o.ord_datetime
FROM Analysis a
JOIN Orders o
ON o.ord_an = a.an_id
WHERE o.ord_datetime BETWEEN '2020-02-05'
AND '2020-02-05'::TIMESTAMP + INTERVAL '1 week'
