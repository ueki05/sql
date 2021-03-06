# 道化師の追跡
INSERT INTO clown_info
VALUES
(
  'Zippo',
  'Millstone Mall',
  'F, orange suit, baggy pants',
  'dancing, singing'
);

INSERT INTO clown_info
VALUES
(
  'Snuggles',
  'Dickson Park',
  'F, yellow shirt, baggy red pants',
  'horn, umbrella'
);

INSERT INTO clown_info
VALUES
(
  'Bonzo',
  'Ball-Mart',
  'M, in drag, polka dotted dress',
  'singing, dancing'
);

INSERT INTO clown_info
VALUES
(
  'Sniffles',
  'Tracy\'s',
  'M, green and purple suit, pointy nose',
  'riding a small car'
);

INSERT INTO clown_info
VALUES
(
  'Mr. Hobo',
  'Dickson Park',
  'M, cigar, black hair, tiny hat',
  'violin'
);

# メモ
同じレコードがあってcreated_atのようなカラムがないとき、最新の情報を取得する方法は？
最後のレコード＝最新だという確証はない。
行がテーブルに格納される際に、その順序を変えてしまうような内部的な要素が、データベースには多数ある。
使用しているRDBMSの種類や、列に対するインデックスも、その要素の1つ。

# DELETE文
DELETE FROM clown_info
WHERE activities = 'dancing';

# INSERT文とDELETE文を使ってdrink_infoテーブルを要求されたとおりに変更する
## Kiss on the Lipsのカロリーを170に変更する
INSERT INTO drink_info
VALUES
(
  'Kiss on the Lips',
  5.50,
  42.50,
  'purple',
  'Y',
  170
);

DELETE FROM drink_info
WHERE drink_name = 'Kiss on the Lips';

## 「yellow」という値を「gold」に変更
INSERT INTO drink_info
VALUES ('Blackthorn', 3.00, 8.40, 'gold', 'Y', 33), ('Greyhound', 4.00, 14.00, 'gold', 'Y', 50);

DELETE FROM drink_info
WHERE color = 'yellow';

## 価格が2.50ドルであるすべてのドリンクを3.50ドルにし、さらにこれまで価格が3.50ドルだったすべてのドリンクを4.50ドルにする
INSERT INTO drink_info
VALUES ('Oh My Gosh', 4.50, 8.60, 'orange', 'Y', 35);

DELETE FROM drink_info
WHERE cost = 3.50;

INSERT INTO drink_info
VALUES ('Blue Moon', 3.50, 3.20, 'blue', 'Y', 12), ('Lime Fizz', 3.50, 5.40, 'green', 'Y', 24);

DELETE FROM drink_info
WHERE cost = 2.50 ;

# 他のレコードに影響を与えずに、Mr. Hoboの余分なレコードを整理する
DELETE FROM clown_info
WHERE name = 'Mr.Hobo'
AND last_seen <> 'Tracy\'s';

DELETE FROM clown_info WHERE name = 'Mr. Hobo' AND last_seen <> 'Tracy\'s';

# UPDATE文を使ったデータの変更
UPDATE doughnut_ratings
SET type = 'glazed'
WHERE type = 'plain glazed';

# UPDATE文は新しいINSERT文/DELETE文
UPDATE clown_info
SET last_seen = 'Dickson Park'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Tracy\'s';

# 道化師の動作の更新
UPDATE clown_info
SET activities = 'singing'
WHERE name = 'Zippo';

UPDATE clown_info
SET appearance = 'F, yellow shirt, baggy bule pants'
WHERE name = 'Snuggles';

UPDATE clown_info
SET last_seen = 'Ball-Mart'
WHERE name = 'Bonzo';

UPDATE clown_info
SET activities = 'riding a small car'
WHERE name = 'Sniffles';

UPDATE clown_info
SET last_seen = 'Dickson Park'
WHERE name = 'Mr. Hobo';

# 価格のUPDATE
UPDATE drink_info
SET cost = cost + 1
WHERE drink_name = 'Blue Moon'
OR drink_name = 'Oh My Gosh'
OR drink_name = 'Lime Fizz';
