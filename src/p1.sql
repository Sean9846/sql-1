CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT,
    position TEXT,
    department TEXT,
    salary NUMERIC
);

CREATE TABLE sales (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER, 
    quantity INTEGER,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INTEGER,
    total_amount NUMERIC,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE inventories (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    quantity INTEGER,
    price NUMERIC,
);

INSERT INTO employees (name, position, department, salary) VALUES
('Adam', 'Manager', 'Sales', 60000),
('Ben', 'Sales Representative', 'Sales', 8000),
('Chris', 'Accountant', 'Finance', 6000);

INSERT INTO customers (customer_name, city) VALUES
('Aria', 'New York'),
('Boonie', 'London'),
('Christian', 'Chicago');

INSERT INTO inventories (product_name, quantity, price) VALUES
('PROD_A', 100, 50),
('PROD_B', 120, 60),
('PROD_C', 150, 40);

INSERT INTO sales (customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 4, '2023-10-01'),
(2, 2, 5, '2023-10-02'),
(3, 3, 6, '2023-10-03');

INSERT INTO orders (order_date, customer_id, total_amount) VALUES
('2023-10-01', 1, 200),
('2023-10-02', 2, 300),
('2023-10-03', 3, 240);