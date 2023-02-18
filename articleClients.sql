--* DATABASE PUBLIC
-- EXERCICE3_GOLD DAY2

-- Première partie

/*Créez une table nommée achats .
Il doit avoir 3 colonnes :
id: la clé primaire de la table
customer_id: cette colonne référence la table clients
item_id: cette colonne référence les éléments du tableau
quantity_purchased: cette colonne est la quantité d'articles achetés par un certain client*/

--  table items
CREATE TABLE items (
  items_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  description TEXT,
  price DECIMAL(10,2)
);

--  table customers
CREATE TABLE customers (
  customers_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(20)
);

--  données dans la table "items"
INSERT INTO items (items_id, name, description, price) VALUES
  (1, 'Petit bureau', '', 100),
  (2, 'Grand bureau', '', 300),
  (3, 'Ventilateur', '', 80);
  
  
SELECT * FROM items



--Partie II

-- Utilisez SQL pour obtenir les éléments suivants à partir de la base de données :
-- Tous les achats. Ces informations nous sont-elles utiles ?
-- Tous les achats, joint à la table des clients .
-- Achats du client avec l'ID égal à 5.
-- Achats pour un grand bureau ET un petit bureau

-- Utilisez SQL pour afficher tous les clients qui ont effectué un achat. Afficher les champs/colonnes suivants :
-- Prénom du client
-- Nom de famille du client
-- Nom de l'article

-- Ajoutez une ligne qui référence un client par ID, mais ne référence pas un article par
-- ID (laissez-la vide). Est-ce que ça marche? Pourquoi pourquoi pas?