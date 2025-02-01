CREATE TABLE data_cleaning.products_correcting_data_entry_errors (
	ProductID INT,
    ProductName VARCHAR(100),
    Price INT
)

INSERT INTO data_cleaning.products_correcting_data_entry_errors (ProductID, ProductName,Price) VALUES
(1, 'Laptop', 1000),
(2, 'Phonne', 500),
(3, 'Tablet', 300),
(4, 'Desktop', 800)

UPDATE data_cleaning.products_correcting_data_entry_errors
SET ProductName = 'Phone'
WHERE ProductName = 'Phonne'

SELECT * FROM data_cleaning.products_correcting_data_entry_errors