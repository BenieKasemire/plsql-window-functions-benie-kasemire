-- Customers table
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    region VARCHAR2(50)
);

-- Products table 
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    category VARCHAR2(50)
);

-- Transactions table 
CREATE TABLE transactions (
    transaction_id NUMBER PRIMARY KEY,
    customer_id NUMBER REFERENCES customers(customer_id),
    product_id NUMBER REFERENCES products(product_id),
    sale_date DATE,
    amount NUMBER(10,2)
);

-- Insert Customers
INSERT INTO customers VALUES (1001, 'Papa Joseph', 'Birere');
INSERT INTO customers VALUES (1002, 'Mama Benie', 'Himbi');
INSERT INTO customers VALUES (1003, 'David Kambale', 'Kyeshero');
INSERT INTO customers VALUES (1004, 'Sophie Bahati', 'Birere');
INSERT INTO customers VALUES (1005, 'Robert Zaina', 'Himbi');

-- Insert Products
INSERT INTO products VALUES (2001, 'Rice 5kg', 'Grains');
INSERT INTO products VALUES (2002, 'Tomatoes 1kg', 'Vegetables');
INSERT INTO products VALUES (2003, 'Cooking Oil 2L', 'Cooking');
INSERT INTO products VALUES (2004, 'Beans 2kg', 'Grains');
INSERT INTO products VALUES (2005, 'Bread', 'Bakery');
INSERT INTO products VALUES (2006, 'Sugar 2kg', 'Baking');
INSERT INTO products VALUES (2007, 'Milk 1L', 'Dairy');

-- Insert Transactions
INSERT INTO transactions VALUES (3001, 1001, 2001, DATE '2025-01-15', 12500);
INSERT INTO transactions VALUES (3002, 1002, 2002, DATE '2025-01-20', 8500);
INSERT INTO transactions VALUES (3003, 1001, 2003, DATE '2025-02-10', 15000);
INSERT INTO transactions VALUES (3004, 1003, 2001, DATE '2025-02-15', 12500);
INSERT INTO transactions VALUES (3005, 1004, 2005, DATE '2025-03-05', 4000);
INSERT INTO transactions VALUES (3006, 1005, 2006, DATE '2025-03-20', 9000);
INSERT INTO transactions VALUES (3007, 1001, 2001, DATE '2025-04-10', 12500);
INSERT INTO transactions VALUES (3008, 1002, 2003, DATE '2025-04-25', 15000);
INSERT INTO transactions VALUES (3009, 1003, 2004, DATE '2025-05-15', 11000);
INSERT INTO transactions VALUES (3010, 1004, 2007, DATE '2025-05-20', 6000);
INSERT INTO transactions VALUES (3011, 1005, 2002, DATE '2025-06-10', 8500);
INSERT INTO transactions VALUES (3012, 1001, 2006, DATE '2025-06-25', 9000);

COMMIT;
