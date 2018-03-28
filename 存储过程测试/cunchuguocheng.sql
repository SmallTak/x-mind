-- 创建无参无返回值的存储过程
delimiter //
CREATE PROCEDURE p_1()
BEGIN 
SELECT * FROM products;
END //
CALL p_1();

delimiter //
CREATE PROCEDURE p_2()
BEGIN
SELECT prod_id, prod_name FROM products;
END//
CALL p_2();

-- 创建有返回值的存储过程
delimiter //
CREATE PROCEDURE p (
	OUT pMax DECIMAL (8, 2),
	OUT pMin DECIMAL (8, 2)
)
BEGIN
	SELECT
		MAX(products.prod_price) INTO pMax
	FROM
		products ; SELECT
			MIN(products.prod_price) INTO pMin
		FROM
			products ;
		END//
CALL p(@pMax,@pMin);
SELECT @pMax,@pMin;
-- 带有参数的存储过程
delimiter //
CREATE PROCEDURE p_6 (IN id CHAR(10))
BEGIN
	SELECT
		*
	FROM
		products
	WHERE
		prod_id = id ;
	END//

CALL p_6 ("ANV02")
-- 带有参数和返回值的储存过程
delimiter //
CREATE PROCEDURE pq (
	IN id CHAR (10),
	OUT price DECIMAL (8, 2)
)
BEGIN
	SELECT
		prod_price INTO price
	FROM
		products
	WHERE
		prod_id = id ;
	END //

delimiter ; 
CALL pq ("ANV02" ,@price) ; SELECT
	@price ;