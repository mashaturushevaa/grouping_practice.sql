--  Завдання 1: Список назв товарів через кому для кожного виробника
SELECT
  manufacturer,
  STRING_AGG(product_name, ', ') AS product_list
FROM products
GROUP BY manufacturer;
-- Завдання 2: Кількість товарів ціною менше 20 гривень для кожного виробника
SELECT
  manufacturer,
  COUNT(*) AS low_price_count
FROM products
WHERE price < 20
GROUP BY manufacturer;
-- Завдання 3: Середня ціна всіх товарів
SELECT
  ROUND(AVG(price), 2) AS average_price
FROM products;
-- Завдання 4: Виробники, що виготовляють більше одного товару ціною менше 20 гривень
SELECT
  manufacturer,
  COUNT(*) AS low_price_count
FROM products
WHERE price < 20
GROUP BY manufacturer
HAVING COUNT(*) > 1;

