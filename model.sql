CREATE TABLE products(
    products_id serial PRIMARY KEY,
    products_name VARCHAR(64) not null,
    products_description text not null,
    products_price VARCHAR(64) not null,
    products_image text not null
);

INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('MacBook Pro 13', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 1,200.00 USD', 'https://www.apple.com/v/macbook-pro-13/l/images/overview/compare/compare_mbp_13__givmvd62t5ua_large_2x.png');
INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('Apple Watch Ultra', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 800.00 USD', 'https://images.macrumors.com/t/azyR9txMs332yD0-lAtPlSLLF60=/2489x/article-new/2022/09/apple-watch-ultra-1.jpg');
INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('IPad Pro M2', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 1,099.00 USD', 'https://images.news18.com/ibnlive/uploads/2022/03/apple-ipad-pro-1-16485318563x2.jpg?impolicy=website&width=510&height=356');
INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('IPhone 14 Pro', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 999.00 USD', 'https://cdn.macbro.uz/macbro/d35cfadb-2308-42fe-b7f5-da7dd24a4b74');
INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('AirPods Pro 2', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 400.00 USD', 'https://cdn.macbro.uz/macbro/36e8f416-f521-4677-8ff5-e0b9dc777558');
INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('MacBook Air M2', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 1,999.00 USD', 'https://www.ixbt.com/img/r30/00/02/55/01/apple-macbook-air-2022-apple-m2-big.jpg');
INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('IPhome 13', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 1,000.00 USD', 'https://www.ixbt.com/img/x780x600/r30/00/02/45/67/cover.jpg');
INSERT INTO products(products_name, products_description, products_price, products_image) VALUES('IPhone 11', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '$ 800.00 USD', 'https://imei.org/storage/files/images/758/preview/apple-iphone-11-1.png');

-- DROP TABLE products;

SELECT * FROM products;