-- 売上額が上位5位の商品の指定されたデータを取得してください
SELECT items.id, items.name, SUM(items.price) AS"売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id, items.name
ORDER BY SUM(items.price) DESC
LIMIT 5;
