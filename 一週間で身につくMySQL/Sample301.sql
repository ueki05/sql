# データベースSCHOOLを作成する。（作成してある場合は、必要ありません。)
CREATE DATABASE SCHOOL;

# データベースをSCHOOLに切り替える
USE SCHOOL;

# テーブルstudentを作成する。（作成してある場合は、必要ありません。)
CREATE TABLE student(
    id      int PRIMARY KEY,
    name    varchar(128),
    grade   int
);

# データの挿入
INSERT INTO student (id,name,grade) VALUES(1001,'山田太郎',1);
INSERT INTO student (id,name,grade) VALUES(2001,'太田隆',2);
INSERT INTO student (id,name,grade) VALUES(3001,'林敦子',3);
INSERT INTO student (id,name,grade) VALUES(3002,'市川次郎',3);
