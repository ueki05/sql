# データベースdrinksを作成する
CREATE DATABASE drinks;

# easy_drinks.sqlでデータをコマンドでINSERT
mysql -D drinks < ~/Downloads/HeadFirstSQLTables/easy_drinks.sql

# 飲み物当てクイズ (テキストがわざと間違えているqueryもそのまま記入)
SELECT * FROM easy_drinks WHERE main = 'Sprite'; # Lime Fizz
SELECT * FROM easy_drinks WHERE main = soda; # ERROR 1054 (42S22): Unknown column 'soda' in 'where clause'
SELECT * FROM easy_drinks WHERE amount2 = 6; # Hot Gold, Indian Summer
SELECT * FROM easy_drinks WHERE second = "orange juice"; # Hot Gold (本当は結果なしが返ってくるのが正しい想定)
SELECT * FROM easy_drinks WHERE amount1 < 1.5; # Oh My Gosh
SELECT * FROM easy_drinks WHERE amount2 < '1'; # Lone Tree, Blue Moon, Lime Fizz
SELECT * FROM easy_drinks WHERE main > 'tonic water'; # Empty set
SELECT * FROM easy_drinks WHERE amount1 = '1.5'; # Lone Tree, Greyhound, Bull Frog, Blackthorn, Blue Moon, Lime Fizz
# 最後の2つはクエリとしては正しくないが、RDBMSがこれを許容してくれている

# 特定のデータのSELECT
SELECT drink_name, main, second
FROM easy_drinks
WHERE main = 'soda';

# すべてのコンピュータプログラマのメールアドレスを見つけるクエリ
SELECT email
FROM my_contacts
WHERE profession = 'Computer Programmer';

# 特定の誕生日の人の、名前と住所を見つけるクエリ
SELECT last_name, first_name, location
FROM my_contacts
WHERE birthday = '1959-10-09';

# 特定の街に住んでいる人の、名前とメールアドレスを見つけるクエリを書く。さらに、デートしたい性別の人だけを取り出す。
SELECT last_name, first_name, email
FROM my_contacts
WHERE location = 'San Fran, CA'
AND gender = 'F';

# サンフランシスコのすべてのアンを見つけるために使えるクエリ
SELECT last_name, first_name
FROM my_contacts
WHERE location = 'San Fran, CA'
AND first_name = 'Anne';

# 氷が入っていて、黄色で、33カロリーより多い飲み物の価格
SELECT cost
FROM drink_info
WHERE ice = 'Y'
AND color = 'yellow'
AND calories > 33;

# 炭水化物が4グラムより多くなくて、氷を使っている飲み物の名前と色
SELECT drink_name, color
FROM drink_info
WHERE carbs <= 4
AND ice = 'Y';

# 80カロリー以上の飲み物の価格
SELECT cost
FROM drink_info
WHERE calories >= 80;

# グレイハウンドとキスオンザリップスという名前の飲み物の色と、混ぜる際の氷の仕様有無
SELECT color, ice
FROM drink_info
WHERE drink_name = 'Greyhound'
OR drink_name = 'Kiss on the Lips';

## 本の中では正解が以下のようになっているが、おそらくまだ序盤でOR演算子やWHERE IN句が出てきていないから？
SELECT color, ice
FROM drink_info
WHERE cost >= 3.8;
