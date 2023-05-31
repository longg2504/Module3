DELIMITER //
create procedure findAllCustomer()

begin
	select * from customers;
end //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()

BEGIN

SELECT * FROM customers where customerNumber = 175;

END //