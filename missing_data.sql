CREATE DATABASE data_cleaning

CREATE TABLE data_cleaning.sales_missingdata(
	SaleID INT,
    ProductName VARCHAR(100),
    SaleAmount INT,
    SaleDate DATE
)

-- mengganti tipe data kolom
ALTER TABLE data_cleaning.sales_missingdata
MODIFY SaleID INT PRIMARY KEY

INSERT INTO data_cleaning.sales_missingdata (SaleID, 
ProductName, SaleAmount, SaleDate) VALUES
(1, 'Laptop', 1000, '2024-08-01'),
(2, NULL, 500, '2024-08-02'),
(3, 'Phone', NULL, '2024-08-03'),
(4, 'Tablet', 300, NULL)

SELECT *
FROM data_cleaning.sales_missingdata
WHERE ProductName IS NULL OR SaleAmount IS NULL OR SaleDate IS NULL