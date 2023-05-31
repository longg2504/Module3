-- Tạo View có tên customer_views truy vấn dữ liệu từ bảng customers để lấy các dữ liệu: 
-- customerNumber, customerName, phone bằng câu lệnh SELECT:

CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM  customers;

select * from customer_views;

-- cập nhật view 
-- CREATE OR REPLACE VIEW view_name AS
-- SELECT column1, column2, ...
-- FROM table_name
-- VD: Cập nhật view customer_views: 
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

-- xoá view 
-- DROP VIEW view_name;
-- Ví dụ: xoá view customer_views:
DROP VIEW customer_views;