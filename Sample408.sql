SELECT * FROM resource WHERE class=(SELECT class FROM resource WHERE price = 2700);
