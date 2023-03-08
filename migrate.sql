CREATE TABLE IF NOT EXISTS categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    description TEXT NOT NULL,
    created TIMESTAMP NOT NULL,
    modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS tax (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    rate NUMERIC(5, 2) NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(32) NOT NULL,
    description TEXT NOT NULL,
    price NUMERIC(10, 0) NOT NULL,
    category_id INT NOT NULL,
    tax_id INT,
    created TIMESTAMP NOT NULL,
    modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    img TEXT DEFAULT "data:image/png;base64,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",
    FOREIGN KEY (category_id) REFERENCES categories (id),
    FOREIGN KEY (tax_id) REFERENCES tax (id)
);
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    buyer_name VARCHAR(255) NOT NULL,
    buyer_cpf VARCHAR(11) NOT NULL,
    purchase_date DATE NOT NULL,
    items_list JSON NOT NULL,
    total_value NUMERIC(10, 2) NOT NULL,
);
--  insert tax 
INSERT INTO tax (name, rate, created, modified)
VALUES (
        'ICMS',
        18.00,
        '2023-03-07 09:00:00',
        '2023-03-07 09:00:00'
    ),
    (
        'IPI',
        10.00,
        '2023-03-07 09:00:00',
        '2023-03-07 09:00:00'
    ),
    (
        'PIS',
        1.65,
        '2023-03-07 09:00:00',
        '2023-03-07 09:00:00'
    ),
    (
        'COFINS',
        7.60,
        '2023-03-07 09:00:00',
        '2023-03-07 09:00:00'
    ),
    (
        'ISS',
        3.00,
        '2023-03-07 09:00:00',
        '2023-03-07 09:00:00'
    );
--  insert products 
INSERT INTO products (
        name,
        description,
        price,
        category_id,
        tax_id,
        created,
        modified
    )
VALUES (
        'iPhone 13 Pro',
        'New Apple iPhone',
        10999,
        1,
        1,
        NOW(),
        NOW()
    ),
    (
        'Samsung Galaxy S21 Ultra',
        'New Samsung smartphone',
        7999,
        1,
        2,
        NOW(),
        NOW()
    ),
    (
        'Sony PlayStation 5',
        'The latest Sony console',
        4999,
        2,
        3,
        NOW(),
        NOW()
    ),
    (
        'Xbox Series X',
        'The latest Microsoft console',
        4699,
        2,
        2,
        NOW(),
        NOW()
    ),
    (
        'Canon EOS R6',
        'New Canon camera',
        11999,
        3,
        1,
        NOW(),
        NOW()
    ),
    (
        'Nikon Z7 II',
        'New Nikon camera',
        13999,
        2,
        2,
        NOW(),
        NOW()
    ),
    (
        'LG OLED TV',
        'New LG TV',
        9999,
        2,
        3,
        NOW(),
        NOW()
    ),
    (
        'Samsung QLED TV',
        'New Samsung TV',
        8999,
        3,
        2,
        NOW(),
        NOW()
    ),
    (
        'Lenovo ThinkPad X1 Carbon',
        'New Lenovo laptop',
        9999,
        2,
        1,
        NOW(),
        NOW()
    ),
    (
        'Dell XPS 13',
        'New Dell laptop',
        8999,
        2,
        2,
        NOW(),
        NOW()
    );
--  insert categories 
INSERT INTO categories (name, description, created, modified)
VALUES (
        'Eletrônicos',
        'Categoria para produtos eletrônicos',
        NOW(),
        NOW()
    ),
    (
        'Móveis',
        'Categoria para produtos de móveis',
        NOW(),
        NOW()
    ),
    (
        'Esportes',
        'Categoria para produtos de esportes',
        NOW(),
        NOW()
    ),
    (
        'Roupas',
        'Categoria para produtos de roupas',
        NOW(),
        NOW()
    ),
    (
        'Alimentos',
        'Categoria para produtos de alimentos',
        NOW(),
        NOW()
    );
-- sales insert
INSERT INTO sales (
        buyer_name,
        buyer_cpf,
        purchase_date,
        items_list,
        total_value
    )
VALUES (
        'John Doe',
        '12345678901',
        '2023-03-07 14:30:00',
        '[{"item": "Product 1", "quantity": 2, "price": 10.50}, {"item": "Product 2", "quantity": 1, "price": 7.90}]',
        28.90
    );
INSERT INTO sales (
        buyer_name,
        buyer_cpf,
        purchase_date,
        items_list,
        total_value
    )
VALUES (
        'Jane Smith',
        '09876543210',
        '2023-03-07 15:00:00',
        '[{"item": "Product 3", "quantity": 1, "price": 15.75}]',
        15.75
    );
INSERT INTO sales (
        buyer_name,
        buyer_cpf,
        purchase_date,
        items_list,
        total_value
    )
VALUES (
        'Bob Johnson',
        '45678901234',
        '2023-03-07 16:30:00',
        '[{"item": "Product 4", "quantity": 3, "price": 5.00}]',
        15.00
    );
INSERT INTO sales (
        buyer_name,
        buyer_cpf,
        purchase_date,
        items_list,
        total_value
    )
VALUES (
        'Maria Silva',
        '98765432100',
        '2023-03-07 17:15:00',
        '[{"item": "Product 2", "quantity": 2, "price": 7.90}, {"item": "Product 5", "quantity": 1, "price": 25.00}]',
        40.80
    );
INSERT INTO sales (
        buyer_name,
        buyer_cpf,
        purchase_date,
        items_list,
        total_value
    )
VALUES (
        'Joe Black',
        '33333333333',
        '2023-03-07 18:00:00',
        '[{"item": "Product 1", "quantity": 4, "price": 10.50}]',
        42.00
    );
INSERT INTO sales (
        buyer_name,
        buyer_cpf,
        purchase_date,
        items_list,
        total_value
    )
VALUES (
        'Julia Garcia',
        '22222222222',
        '2023-03-07 19:45:00',
        '[{"item": "Product 6", "quantity": 2, "price": 8.00}, {"item": "Product 7", "quantity": 1, "price": 12.50}]',
        28.50
    );
INSERT INTO sales (
        buyer_name,
        buyer_cpf,
        purchase_date,
        items_list,
        total_value
    )
VALUES (
        'Carlos Oliveira',
        '77777777777',
        '2023-03-07 20:30:00',
        '[{"item": "Product 8", "quantity": 1, "price": 18.99}, {"item": "Product 9", "quantity": 1, "price": 7.00}]',
        25.99
    );