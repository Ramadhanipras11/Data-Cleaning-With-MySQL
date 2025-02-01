CREATE TABLE data_cleaning.customers_standarizing_data (
	CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(100)
)

INSERT INTO data_cleaning.customers_standarizing_data (CustomerID, CustomerName, Country) VALUES
(1, 'John Doe', 'USA'),
(2, 'jane SMITH', 'usA'),
(3, 'Michael Brown', 'Canada'),
(4, 'linda JOHNSON', 'CANADA')

UPDATE data_cleaning.customers_standarizing_data
SET CustomerName = LOWER(CustomerName);

UPDATE data_cleaning.customers_standarizing_data
SET Country = UPPER(Country);

SELECT * FROM data_cleaning.customers_standarizing_data