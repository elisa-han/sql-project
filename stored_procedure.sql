/* This stored procedure will help future users refer back to these calculations when 
   attempting to make future conclusions about the data. 
*/
DELIMITER $$

CREATE PROCEDURE equations()
BEGIN
	SELECT
	  @n := COUNT(avg_rating) AS N,
	  @meanX := AVG(price_per_ounce) AS "X mean",
	  @sumX := SUM(price_per_ounce) AS "X sum",
	  @sumXX := SUM(price_per_ounce*price_per_ounce) "X sum of squares",
	  @meanY := AVG(avg_rating) AS "Y mean",
	  @sumY := SUM(avg_rating) AS "Y sum",
	  @sumYY := SUM(avg_rating*avg_rating) "Y sum of square",
	  @sumXY := SUM(price_per_ounce*avg_rating) AS "X*Y sum"
	FROM products;
END$$ 

DELIMITER ;

CALL equations();


