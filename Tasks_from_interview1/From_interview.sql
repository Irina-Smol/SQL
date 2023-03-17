-- Решение
-- Junior

SELECT a.an_name, a.an_cost, o.ord_datetime
FROM Analysis a
JOIN Orders o
ON o.ord_an = a.an_id
WHERE o.ord_datetime BETWEEN '2020-02-05'
AND '2020-02-05'::TIMESTAMP + INTERVAL '1 week'

-- Middle

WITH sales as
(
  SELECT EXTRACT(YEAR FROM o.ord_datetime) as year,
         EXTRACT(MONTH FROM o.ord_datetime) as month,
         g.gr_id as group,
         COUNT(o.ord_an) as cnt
  FROM Orders o
  JOIN Analysis a
  ON o.ord_an = a.an_id
  JOIN Groups g
  ON a.an_group = g.gr_id
  GROUP BY EXTRACT(YEAR FROM o.ord_datetime),
           EXTRACT(MONTH FROM o.ord_datetime),
           g.gr_id
)
  SELECT s.yesr,
         s.month,
         s.group,
         SUM(s.cnt) OVER(PARTITION BY s.group
                         ORDER BY s.year, s.month)
  FROM sales s
  ORDER BY s.group, s.year, s.month
