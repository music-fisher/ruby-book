-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」かつcharacter_nameカラムが「ひつじ仙人」であるデータを取得してください

SELECT *
FROM purchases
WHERE category = "食費"
AND character_name = "ひつじ仙人";