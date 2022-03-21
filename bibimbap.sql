DROP database bibimbap;
CREATE database bibimbap;
USE bibimbap;

CREATE TABLE Base(
	id int NOT NULL PRIMARY KEY,
    base_name varchar(50) NOT NULL);

INSERT INTO Base(id, base_name) VALUES (1, 'white rice');
INSERT INTO Base(id, base_name) VALUES (2, 'brown rice');
INSERT INTO Base(id, base_name) VALUES (3, 'mixed vegetables');

CREATE TABLE Protein(
	id int NOT NULL PRIMARY KEY,
	proteinType varchar(50) NOT NULL);
    
INSERT INTO Protein (id, proteinType) VALUES (1, 'Meat');
INSERT INTO Protein (id, proteinType) VALUES (2, 'Vegetarian');
    
    
CREATE TABLE Meat(
	id int NOT NULL PRIMARY KEY,
    meatType varchar(50) NOT NULL,
    proteinId int NOT NULL,
    additionalCharge FLOAT,
    FOREIGN KEY (proteinId) REFERENCES Protein(id)
    );
    
INSERT INTO Meat(id, meatType, proteinId, additionalCharge) VALUES (1, 'bulgogi', 1, null);
INSERT INTO Meat(id, meatType, proteinId, additionalCharge) VALUES (2, 'chicken', 1, null);
INSERT INTO Meat(id, meatType, proteinId, additionalCharge) VALUES (3, 'spicy pork', 1, null);
INSERT INTO Meat(id, meatType, proteinId, additionalCharge) VALUES (4, 'steak', 1, 2.00);
INSERT INTO Meat(id, meatType, proteinId, additionalCharge) VALUES (5, 'sashimi', 1, 2.00);
INSERT INTO Meat(id, meatType, proteinId, additionalCharge) VALUES (6, 'salmon', 1, 2.00);         
    
CREATE TABLE Vegetarian(
	id int NOT NULL PRIMARY KEY,
    vegType varchar(50) NOT NULL,
    proteinId int NOT NULL,
    additionalCharge FLOAT,
    FOREIGN KEY (proteinId) REFERENCES Protein(id)
    );
    
INSERT INTO Vegetarian(id, vegType, proteinId, additionalCharge) VALUES (1, 'tofu', 2, null); 
INSERT INTO Vegetarian(id, vegType, proteinId, additionalCharge) VALUES (2, 'plant based bulgogi', 2, 2.00);
INSERT INTO Vegetarian(id, vegType, proteinId, additionalCharge) VALUES (3, 'mushroom', 2, null);  
    
    CREATE TABLE Sauces(
	id int,
    name varchar(50),
    spiceLevel int);
    
INSERT INTO sauces (id, name, spiceLevel) VALUES (1, "soysauce", 1);
INSERT INTO sauces (id, name, spiceLevel) VALUES (1, "gochujiang paste", 5);

CREATE TABLE Toppings(
	id int NOT NULL PRIMARY KEY,
    name varchar(50)
);

INSERT INTO Toppings(id, name) VALUES (1, 'zucchini');
INSERT INTO Toppings(id, name) VALUES (2, 'lettuce');
INSERT INTO Toppings(id, name) VALUES (3, 'spinach');
INSERT INTO Toppings(id, name) VALUES (4, 'bean sprouts');
INSERT INTO Toppings(id, name) VALUES (5, 'carrots');
INSERT INTO Toppings(id, name) VALUES (6, 'mushrooms');
INSERT INTO Toppings(id, name) VALUES (7, 'cucumbers');
INSERT INTO Toppings(id, name) VALUES (8, 'soy bean sprouts');

CREATE TABLE Finishing(
	id int NOT NULL PRIMARY KEY,
    name varchar(50),
    additionalCharge FLOAT
);

INSERT INTO Finishing(id, name, additionalCharge) VALUES (1, 'sesame seed', null);
INSERT INTO Finishing(id, name, additionalCharge) VALUES (2, 'seaweed', null);
INSERT INTO Finishing(id, name, additionalCharge) VALUES (3, 'sesame oil', null);
INSERT INTO Finishing(id, name, additionalCharge) VALUES (4, 'sunny side up egg', null);
INSERT INTO Finishing(id, name, additionalCharge) VALUES (5, 'green onions', null);
INSERT INTO Finishing(id, name, additionalCharge) VALUES (6, 'tobiko', 1.00); 


CREATE TABLE Sides(
	id int NOT NULL PRIMARY KEY,
    name varchar(50),
    additionalCharge FLOAT
);

INSERT INTO sides (id, name, additionalCharge) VALUES (1, 'miso soup', 2.00);
INSERT INTO sides (id, name, additionalCharge) VALUES (2, 'soda', 1.50);
INSERT INTO sides (id, name, additionalCharge) VALUES (3, 'banchan', null);
INSERT INTO sides (id, name, additionalCharge) VALUES (4, 'toppoki', 3.00);

