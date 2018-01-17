SELECT class,AVG(price) FROM resource GROUP BY class HAVING count(class) >= 2;
