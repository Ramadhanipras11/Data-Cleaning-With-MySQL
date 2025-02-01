CREATE TABLE data_cleaning.sales_handling_missing_data (
	SaleID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    SaleAmount INT,
    SaleDate DATE
)

INSERT INTO data_cleaning.sales_handling_missing_data (SaleID, ProductName, SaleAmount, SaleDate) VALUES
(1, 'Laptop', 1000, '2024-08-01'),
(2, NULL, 500, '2024-08-02'),
(3, 'Phone', NULL, '2024-08-03'),
(4, 'Tablet', 300, NULL)

UPDATE data_cleaning.sales_handling_missing_data
SET ProductName = 'Unknown'
WHERE ProductName IS NULL

UPDATE data_cleaning.sales_handling_missing_data
SET SaleAmount = 0
WHERE SaleAmount IS NULL

UPDATE data_cleaning.sales_handling_missing_data
SET SaleDate = '2024-01-01'
WHERE SaleDate IS NULL

SELECT * FROM data_cleaning.sales_handling_missing_data