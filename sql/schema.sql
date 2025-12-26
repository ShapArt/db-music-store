-- demo schema (simplified)
CREATE TABLE IF NOT EXISTS customers (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  phone TEXT UNIQUE NOT NULL,
  email TEXT UNIQUE,
  created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE IF NOT EXISTS suppliers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  contact_email TEXT
);

CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  price NUMERIC(10,2) NOT NULL CHECK (price>=0),
  stock INT NOT NULL DEFAULT 0 CHECK (stock>=0),
  supplier_id INT REFERENCES suppliers(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS orders (
  id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL REFERENCES customers(id),
  created_at TIMESTAMP DEFAULT now(),
  status TEXT NOT NULL DEFAULT 'new'
);

CREATE TABLE IF NOT EXISTS order_items (
  order_id INT REFERENCES orders(id) ON DELETE CASCADE,
  product_id INT REFERENCES products(id),
  qty INT NOT NULL CHECK (qty>0),
  price NUMERIC(10,2) NOT NULL CHECK (price>=0),
  PRIMARY KEY(order_id, product_id)
);

CREATE TABLE IF NOT EXISTS returns (
  id SERIAL PRIMARY KEY,
  order_id INT REFERENCES orders(id) ON DELETE CASCADE,
  product_id INT REFERENCES products(id),
  reason TEXT,
  created_at TIMESTAMP DEFAULT now()
);

-- helpful views
CREATE VIEW v_orders_total AS
SELECT o.id, o.created_at, o.customer_id, SUM(oi.qty*oi.price) AS total
FROM orders o JOIN order_items oi ON oi.order_id=o.id
GROUP BY o.id;
