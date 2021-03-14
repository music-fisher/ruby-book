-- 男性向け、女性向け、男女兼用商品ごとに指定されたデータを取得してください
SELECT  items.gender,SUM(items.price) AS "売上額"
FROM items
JOIN sales_records
ON items.id = sales_records.item_id
GROUP BY items.gender;
