SELECT code,resource.name,price,class_name.name FROM resource INNER JOIN class_name 
USING(class) WHERE price >= 3000;
