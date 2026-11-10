SELECT * FROM Ingredient;

SELECT Product.name, Recipe.instructions
FROM Product 
JOIN Recipe ON Product.product_id = Recipe.product_id;

SELECT Product.name AS product, Ingredient.name AS ingredient,
Recipe_Ingredient.amount_kg
FROM Product
JOIN Recipe ON Product.product_id = Recipe.product_id
JOIN Recipe_Ingredient ON Recipe.recipe_id = Recipe_Ingredient.recipe_id
JOIN Ingredient ON Recipe_Ingredient.ingredient_id = Ingredient.ingredient_id;

SELECT Ingredient.name AS ingredient, Supplier.name AS supplier,
Supplier_ingredient.price_per_kg
FROM Ingredient
JOIN Supplier_ingredient ON Ingredient.ingredient_id = Supplier_ingredient.ingredient_id
JOIN Supplier ON Supplier_ingredient.supplier_id = Supplier.supplier_id;


SELECT Ingredient.name AS ingredient, SUM(Purchase.amount_kg) AS total_purchased_kg
FROM Ingredient
JOIN Purchase ON Ingredient.ingredient_id = Purchase.ingredient_id
GROUP BY Ingredient.name;


SELECT ingredient, bought_kg, used_kg, bought_kg - used_kg AS left_kg
FROM (
    SELECT Ingredient.name AS ingredient,
        (SELECT COALESCE(SUM(amount_kg), 0) FROM Purchase
         WHERE Purchase.ingredient_id = Ingredient.ingredient_id) AS bought_kg,
        (SELECT COALESCE(SUM(amount_kg), 0) FROM Recipe_Ingredient
         WHERE Recipe_Ingredient.ingredient_id = Ingredient.ingredient_id) AS used_kg
    FROM Ingredient
);

SELECT Supplier.name AS Supplier, Address.street AS Street, Address.postal_code AS Postal_Code, Address.city AS City
FROM Address
JOIN Supplier ON Supplier.address_id = Address.address_id;