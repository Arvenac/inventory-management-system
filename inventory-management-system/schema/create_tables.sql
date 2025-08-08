
CREATE TABLE Suppliers (
    supplier_id SERIAL PRIMARY KEY,            -- Auto-incrementing ID (the "main ID" for this table)
    name VARCHAR(100) NOT NULL,                -- Supplier name (must be filled in)
    contact_info TEXT                          -- Optional field for email/phone/etc.
);


CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,             -- Unique ID for each product
    name VARCHAR(100) NOT NULL,                -- Product name (required)
    category VARCHAR(50),                      -- Optional category (e.g., electronics)
    price DECIMAL(10, 2),                      -- Price with 2 decimal places (like 15.99)
    quantity_in_stock INT,                     -- How many are in stock
    supplier_id INT,                           -- Refers to the supplier of this product
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)  -- Make sure supplier exists
);


CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,            -- Unique ID for each customer
    name VARCHAR(100),                         -- Name (optional)
    contact_info TEXT                          -- Email/phone (optional)
);

-- 🧾 Create the Orders table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,               -- Unique ID for each order
    customer_id INT,                           -- Who placed the order
    order_date DATE DEFAULT CURRENT_TIMESTAMP,      -- Defaults to today's date if none provided
    total_amount DECIMAL(10, 2),               -- Final price of the order
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) -- Make sure customer exists
);


CREATE TABLE Order_Details (
    order_id INT,                              -- Which order this item belongs to
    product_id INT,                            -- Which product is being ordered
    quantity INT,                              -- How many were bought
    price_at_purchase DECIMAL(10,2),           -- The price *at the time* of the order
    PRIMARY KEY (order_id, product_id),        -- Together, these two make a unique entry
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),         -- Make sure the order exists
    FOREIGN KEY (product_id) REFERENCES Products(product_id)    -- Make sure the product exists
);
