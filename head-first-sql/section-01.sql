# gregs_listという名前のデータベースを作成する
CREATE DATABASE gregs_list;

# 作成済みのデータベースを実際に使用することを、RDBMSに知らせる
USE gregs_list;

# テーブルを作成する
CREATE TABLE doughnut_list
(
  doughnut_name VARCHAR(10),
  doughnut_type VARCHAR(6)
);

CREATE TABLE my_contacts
(
  last_name VARCHAR(30),
  first_name VARCHAR(20),
  email VARCHAR(50),
  birthday DATE,
  profession VARCHAR(50),
  location VARCHAR(50),
  status VARCHAR(20),
  interests VARCHAR(100),
  seeking VARCHAR(100)
);

# テーブルへのDESCコマンドの実行
DESC my_contacts;

# 古きテーブルを捨て、新しきを得る
DROP TABLE my_contacts;

CREATE TABLE my_contacts
(
  last_name VARCHAR(30),
  first_name VARCHAR(20),
  email VARCHAR(50),
  gender CHAR(1),
  birthday DATE,
  profession VARCHAR(50),
  location VARCHAR(50),
  status VARCHAR(20),
  interests VARCHAR(100),
  seeking VARCHAR(100)
);
