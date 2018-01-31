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

# INSERT文の作成
INSERT INTO my_contacts
(
  last_name,
  first_name,
  email,
  gender,
  birthday,
  profession,
  location,
  status,
  interests,
  seeking
)
VALUES
(
  'アンダーソン',
  'ジリアン',
  'jill_anderson@breakpizza.com',
  'F',
  '1980-09-05',
  'テクニカルライター',
  'カリフォルニア州パロアルト',
  '独身',
  'カヤック乗り、爬虫類',
  '恋人、友達'
);

# INSERT文のバリエーション
## 1. 列と順序の変更
INSERT INTO my_contacts
(
  interests,
  first_name,
  last_name,
  gender,
  email,
  birthday,
  profession,
  location,
  status,
  seeking
)
VALUES
(
  'カヤック乗り、爬虫類',
  'ジリアン',
  'アンダーソン',
  'F',
  'jill_anderson@breakneckpizza.com',
  '1980-09-05',
  'テクニカルライター',
  'カリフォルニア州パロアルト',
  '独身',
  '恋人、友達'
);

## 2. 列名の省略
INSERT INTO my_contacts
VALUES
(
  'アンダーソン',
  'ジリアン',
  'jill_anderson@breakneckpizza.com',
  'F',
  '1980-09-05',
  'テクニカルライター',
  'カリフォルニア州パロアルト',
  'カヤック乗り、爬虫類',
  '独身',
  '恋人、友達'
);

## 3. 列の除外
INSERT INTO my_contacts
(
  last_name,
  first_name,
  email
)
VALUES
(
  'アンダーソン',
  'ジリアン',
  'jill_anderson@breakneckpizza.com'
);

# 値を持たない列
INSERT INTO my_contacts
(
  first_name,
  email,
  profession,
  location
)
VALUES
(
  'パット',
  'patpost@preakneckpizza.com',
  '郵便局',
  'ニュージャージー州プリンストン'
);

SELECT * FROM my_contacts;

# NULLの内部統制
CREATE TABLE my_contacts
(
  last_name VARCHAR (30) NOT NULL,
  first_name VARCHAR (20) NOT NULL
);

CREATE TABLE my_contacts
(
  last_name VARCHAR(30) NOT NULL,
  first_name VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  gender CHAR(1) NOT NULL,
  birthday DATE NOT NULL,
  profession VARCHAR(50) NOT NULL,
  location VARCHAR(50) NOT NULL,
  status VARCHAR(20) NOT NULL,
  interests VARCHAR(100) NOT NULL,
  seeking VARCHAR(100) NOT NULL
);

# デフォルト値で空欄を埋める
CREATE TABLE doughnut_list
(
  doughnut_name VARCHAR(10) NOT NULL,
  doughnut_type VARCHAR(6) NOT NULL,
  doughnut_cost DEC(3, 2) NOT NULL DEFAULT 1.00
);
