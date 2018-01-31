SELECT date,code,resource.name,class_name.name,num,price 
FROM purchase_history INNER JOIN resource USING(code) 
INNER JOIN class_name USING(class);
