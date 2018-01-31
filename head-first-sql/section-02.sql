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
