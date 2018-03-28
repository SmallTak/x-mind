-- 创建视图
-- CREATE VIEW v_pro1 AS SELECT
-- 	products.prod_id,
-- 	products.prod_name,
-- 	products.prod_desc
-- FROM
-- 	products
-- 
-- 删除视图
-- DROP VIEW v_pro1;
-- SELECT  prod_name as '商品名称' FROM v_pro;
-- 视图嵌套
-- DROP view v_pro2;
-- CREATE VIEW v_pro AS SELECT prod_id,prod_name FROM products;
-- CREATE VIEW v_pro2 AS SELECT prod_name FROM v_pro;

-- ORDER BY
-- CREATE VIEW v_pro3 AS SELECT prod_id,prod_name from products ORDER BY prod_name;

-- 视图和表联查
SELECT * from productnotes pro, v_pro3 pr WHERE pro.prod_id = pr.prod_id;