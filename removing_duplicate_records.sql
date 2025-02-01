CREATE TABLE data_cleaning.Orders_removing_duplicate_records (
	OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
)

INSERT INTO data_cleaning.Orders_removing_duplicate_records (OrderID, CustomerID, OrderDate) VALUES
(1, 101, '2024-08-01'),
(2, 102, '2024-08-02'),
(3, 101, '2024-08-01'),
(4, 103, '2024-08-03')

SELECT OrderID, CustomerID, OrderDate,
	   COUNT(*) OVER (PARTITION BY CustomerID, OrderDate) AS DuplicateCount
FROM data_cleaning.Orders_removing_duplicate_records

WITH CTE AS (
	SELECT OrderID, CustomerID, OrderDate,
		   ROW_NUMBER() OVER (PARTITION BY CustomerID, OrderDate ORDER BY OrderId) AS RowNum
	FROM data_cleaning.Orders_removing_duplicate_records
)

DELETE FROM data_cleaning.Orders_removing_duplicate_records
WHERE OrderID IN (SELECT OrderID FROM CTE WHERE RowNum > 1);

SELECT * FROM data_cleaning.Orders_removing_duplicate_records