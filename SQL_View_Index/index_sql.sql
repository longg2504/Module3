-- câu lệnh truy vấn thường
SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 
-- sử dụng lệnh truy vấn EXPLAIN Querry 
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 
-- thêm chỉ mục cho bảng customer 
ALTER TABLE customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 
-- thêm chỉ mục theo cặp (contactFirstName , contactLastName)
ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';
-- xoá chỉ mục trong bảng customer
ALTER TABLE customers DROP INDEX idx_full_name;