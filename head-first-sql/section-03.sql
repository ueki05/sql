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
