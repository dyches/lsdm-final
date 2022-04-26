CREATE DATABASE foodfacts ENCODING 'UTF8';
\c foodfacts

CREATE TABLE openfoodfacts (
    index INT, 
    product_name VARCHAR, 
    countries_en VARCHAR, 
    ingredients_text VARCHAR 
);

\copy openfoodfacts from '/docker-entrypoint-initdb.d/foodfacts.csv' with (format csv, header)
