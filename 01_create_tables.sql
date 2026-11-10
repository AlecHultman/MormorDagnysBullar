PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Purchase;
DROP TABLE IF EXISTS Supplier_ingredient;
DROP TABLE IF EXISTS Recipe_Ingredient;
DROP TABLE IF EXISTS Recipe;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Ingredient;
DROP TABLE IF EXISTS Supplier;
DROP TABLE IF EXISTS Address;

CREATE TABLE IF NOT EXISTS Address(
    address_id INTEGER PRIMARY KEY,
    street VARCHAR(20) NOT NULL,
    postal_code VARCHAR(15) NOT NULL,
    city VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS Supplier(
    supplier_id INTEGER PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    address_id INTEGER NOT NULL,
    contact_person VARCHAR(40) NOT NULL,
    phone VARCHAR(50) NULL,
    email VARCHAR(128) NOT NULL,
    Foreign Key (address_id) REFERENCES Address (address_id)
);

CREATE TABLE IF NOT EXISTS Ingredient(
    ingredient_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Product(
    product_id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS Recipe(
    recipe_id INTEGER PRIMARY KEY,
    product_id INTEGER NOT NULL UNIQUE, 
    instructions VARCHAR(500) NOT NULL,
    Foreign Key (product_id) REFERENCES Product(product_id)
);
CREATE TABLE IF NOT EXISTS Recipe_Ingredient(
    recipe_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    amount_kg  REAL NOT NULL,
    PRIMARY KEY (recipe_id, ingredient_id),
    Foreign Key (recipe_id) REFERENCES Recipe (recipe_id),
    Foreign Key (ingredient_id) REFERENCES Ingredient (ingredient_id)
);

CREATE TABLE IF NOT EXISTS Supplier_ingredient(
    supplier_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    article_number INTEGER NOT NULL,
    price_per_kg REAL NOT NUll,
    PRIMARY KEY (supplier_id, ingredient_id),
    Foreign Key (supplier_id) REFERENCES Supplier (supplier_id),
    Foreign Key (ingredient_id) REFERENCES Ingredient (ingredient_id)
);

CREATE TABLE IF NOT EXISTS Purchase(
    purchase_id INTEGER PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    amount_kg REAL NOT NULL,
     purchase_date DATE NOT NULL,
     Foreign Key (supplier_id) REFERENCES Supplier (supplier_id),
     Foreign Key (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

