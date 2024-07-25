# sql-challenge
## What is SQL?
SQL stands for “Structured Query Language.” which is the language that we use to interact with a database. SQL is the most widely-used database language as it’s incredibly effective at manipulating data.
The database can be seen as the third part of the client-server relationship. Essentially, the client sends a request to the server, and the server grabs the associated data from the database. Then the retrieved data is returned to the client by the server.

This challenge is about using PostgreSQL, an open-source object-relational database management system, as a new data engineer at Pewlett Hackard (a fictional company). The first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files. 

This Challenge is divided into three parts: data modelling, data engineering, and data analysis.

## Data Modelling
I sketched an Entity Relationship Diagram (ERD) of the tables using QuickDBD. 

## Data Engineering
I created a table schema for each of the six CSV files. I specified the data types, primary keys, foreign keys, and other constraints.
For the primary keys, verify that the column is unique. Otherwise, There are composite keys in both dept_emp and dept_manager, which takes two primary keys to uniquely identify a row.

## Data Analysis
Following by each questions listed in each step. Please refer to .sql files.
