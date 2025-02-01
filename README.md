
# Data Cleaning with MySQL

Data cleansing is an important step in the process of solving Data Science or data analysis problems to ensure the quality and reliability of data. This repository is designed for you to understand how to clean data with SQL especially MySQL. Here are some important SQL data cleansing methods that you should know for Data Science and data analysis:


## 1. Identifying Missing Data
You must identifying missing or NULL values before you cleaning data. you can use **IS NULL** condition to see missing data. You can see an example here :

#### [Example SQL for identifying missing data](https://github.com/Ramadhanipras11/Data-Cleaning-With-MySQL/blob/main/missing_data.sql)

## 2. Handling Missing Data
Missing data often appears in the form of NULL. NULL indicates that a value is not available, not zero or an empty string. To handle missing data in SQL, we can use various techniques, depending on the needs of data analysis and processing. You can see an example here :

#### [Example SQL for handling missing data](https://github.com/Ramadhanipras11/Data-Cleaning-With-MySQL/blob/main/handling_missing_data.sql)

## 3. Removing Duplicate Record
Duplicate records can skew analysis. You can use **DISTINCT** or **ROW_NUMBER()** with **PARTITION BY** to identify and remove duplicate. You can see an example here :

#### [Example SQL for removing duplicate records](https://github.com/Ramadhanipras11/Data-Cleaning-With-MySQL/blob/main/removing_duplicate_records.sql)

## 4. Correcting Data Entry Errors
Correcting data entry errors is the process to identifying correcting error that occur when entering data into table. These errors can include misspelt word or incorrect values. You can see an example here :

#### [Example SQL for correcting data entry errors](https://github.com/Ramadhanipras11/Data-Cleaning-With-MySQL/blob/main/correcting_data_entry_errors.sql)

## Standarizing Data
Standarizing data involves converting data to a consistent format such as converting all text to lowercase or uppercase. You can see an example here :

#### [Example SQL for standarizing data](https://github.com/Ramadhanipras11/Data-Cleaning-With-MySQL/blob/main/standarizing_data.sql)


## These are some data cleaning methods with SQL that you should know for Data Analysis or Data Science.
