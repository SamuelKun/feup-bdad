# SQL

SQL is a DDL
> Define relational schemata
> Create/alter/delete tables and their attributes

Data Manipulation Language (DML)


> Insert/delete/modify tuples in tables
> Query one or more tables

## Relations in SQL

- Tables
- Views
- Temporary tables

## Data Types in SQL

### Text

- CHAR(N)
- VARCHAR(N)

### Numeric values

- INT
- SORTINT
- FLOAT
- DECIMAL

### Boolean values

- TRUE
- FALSE
- UNKNOWN

### Dates and Times

- DATE ‘1948-05-14’
- TIME ‘15:00:02.5’

Essentially character strings of a special form

## Storage Classes and Data Types in SQLite

- NULL
The value is a NULL value.

- INTEGER
The value is a signed integer, stored in 1, 2, 3, 4, 6, or 8 bytes depending on the
magnitude of the value.

- REAL
The value is a floating point value, stored as an 8-byte IEEE floating point
number.

- TEXT
The value is a text string, stored using the database encoding (UTF-8, UTF16BE or UTF-16LE).

- BLOB
The value is a binary large object of data, stored exactly as it was input.

- BOOLEAN
SQLite does not have a separate Boolean storage class
Boolean values are stored as integers 0 or 1.
