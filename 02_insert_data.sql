PRAGMA foreign_keys = ON;


DELETE FROM Purchase;
DELETE FROM Supplier_ingredient;
DELETE FROM Recipe_ingredient;
DELETE FROM Recipe;
DELETE FROM Product;
DELETE FROM Ingredient;
DELETE FROM Supplier;
DELETE FROM Address;

INSERT INTO Address(
    address_id, 
    street, 
    postal_code, 
    city 
)VALUES(
    1,
    'Hemvägen 2',
    '24134',
    'Malmö'
);

INSERT INTO Address(
    address_id, 
    street, 
    postal_code, 
    city 
)VALUES(
    2,
    'Bortavägen 1',
    '21981',
    'Malmö'
);
INSERT INTO Address(
    address_id, 
    street, 
    postal_code, 
    city 
)VALUES(
    3,
    'Bortavägen 122',
    '31487',
    'Lund'
);

INSERT INTO Supplier(
    supplier_id,
    name,
    address_id,
    contact_person,
    phone,
    email
) VALUES(
    1,
    'Lantmännen',
    1,
    'Göran Göransson',
    '070-2222536',
    'goran@mail.se'
);
INSERT INTO Supplier(
    supplier_id,
    name,
    address_id,
    contact_person,
    phone,
    email
)VALUES(
    2,
    'Orkla',
    2,
    'Peter Petersson',
    '070-2255329',
    'peter@mail.se'
);
INSERT INTO Supplier(
    supplier_id,
    name,
    address_id,
    contact_person,
    phone,
    email
)VALUES(
    3,
    'Findus',
    3,
    'Daniel Petersson',
    '070-2254329',
    'Daniel@mail.se'
);
INSERT INTO Ingredient(
    ingredient_id,
    name
)VALUES(
    1,
    'Mjöl'
);
INSERT INTO Ingredient(
    ingredient_id,
    name
)VALUES(
    2,
    'Bakpulver'
);
INSERT INTO Ingredient(
    ingredient_id,
    name
)VALUES(
    3,
    'Socker'
);
INSERT INTO Ingredient(
    ingredient_id,
    name
)VALUES(
    4,
    'Smör'
);
INSERT INTO Ingredient(
    ingredient_id,
    name
)VALUES(
    5,
    'Jäst'
);
INSERT INTO Ingredient(
    ingredient_id,
    name
)VALUES(
    6,
    'Kanel'
);
INSERT INTO Ingredient(
    ingredient_id,
    name
)VALUES(
    7,
    'Mjölk'
);
INSERT INTO Product(
    product_id,
    name
)VALUES(
    1,
    'Kanelbulle'
);

INSERT INTO Recipe(
    recipe_id,
    product_id,
    instructions    
)VALUES(
    1,
    1,
    'Knåda degen, kavla ut, fyll med kanel och grädda i 225 grader i 8 minuter'

);
INSERT INTO Recipe_ingredient(
    recipe_id,
    ingredient_id,
    amount_kg
)VALUES(
    1,
    1,
    0.5
);
INSERT INTO Recipe_ingredient(
    recipe_id,
    ingredient_id,
    amount_kg
)VALUES(
    1,
    3,
    0.15
);
INSERT INTO Recipe_ingredient(
    recipe_id,
    ingredient_id,
    amount_kg
)VALUES(
    1,
    4,
    0.2
);
INSERT INTO Recipe_ingredient(
    recipe_id,
    ingredient_id,
    amount_kg
)VALUES(
    1,
    5,
    0.05
);
INSERT INTO Recipe_ingredient(
    recipe_id,
    ingredient_id,
    amount_kg
)VALUES(
    1,
    6,
    0.02
);
INSERT INTO Recipe_ingredient(
    recipe_id,
    ingredient_id,
    amount_kg
)VALUES(
    1,
    7,
    0.5
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    1,
    1,
    1003,
    2
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    1,
    5,
    1021,
    120
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    1,
    3,
    1010,
    14
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    2,
    4,
    2030,
    90
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    2,
    6,
    2041,
    250
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    3,
    7,
    3050,
    12
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    3,
    4,
    3060,
    95
);
INSERT INTO Supplier_ingredient (
    supplier_id,
    ingredient_id,
    article_number,
    price_per_kg
)VALUES(
    2,
    1,
    2022,
    4
);
INSERT INTO Purchase(
    purchase_id,
    supplier_id,
    ingredient_id,
    amount_kg,
    purchase_date
)VALUES(
    1,
    1,
    1,
    10,
    '2026-11-01'
);
INSERT INTO Purchase(
    purchase_id,
    supplier_id,
    ingredient_id,
    amount_kg,
    purchase_date
)VALUES(
    2,
    1,
    3,
    5,
    '2026-11-02'
);
INSERT INTO Purchase(
    purchase_id,
    supplier_id,
    ingredient_id,
    amount_kg,
    purchase_date
)VALUES(
    3,
    1,
    5,
    1,
    '2026-11-02'
);
INSERT INTO Purchase(
    purchase_id,
    supplier_id,
    ingredient_id,
    amount_kg,
    purchase_date
)VALUES(
    4,
    2,
    4,
    8,
    '2026-11-03'
);
INSERT INTO Purchase(
    purchase_id,
    supplier_id,
    ingredient_id,
    amount_kg,
    purchase_date
)VALUES(
    5,
    2,
    6,
    0.5,
    '2026-11-03'
);
INSERT INTO Purchase(
    purchase_id,
    supplier_id,
    ingredient_id,
    amount_kg,
    purchase_date
)VALUES(
    6,
    3,
    7,
    20,
    '2026-11-04'
);