-- =====================================================
-- File Name:    insert_data.sql
-- Instructor:   Nguyen Thai
-- Student:      Ahmed Diab, Fengnan Zhang
-- Date:         11/17/2021
-- Description:  Insert Data in Final Project's Tables
-- =====================================================

INSERT INTO Grinta VALUES (4152, '111 Main St. Boston, MA, 02213', '617-818-9921');
INSERT INTO Grinta VALUES (6721, '23 North St. Cambridge, MA, 22154', '617-818-6781');
INSERT INTO Grinta VALUES (5471, '87 South St. Somerville, MA, 32617', '617-818-5491');
INSERT INTO Grinta VALUES (8182, '124 Boylston St. Malden, MA, 21782', '617-818-3146');
INSERT INTO Grinta VALUES (2175, '217 Henry St. Quincy, MA, 03341', '617-818-8649');


INSERT INTO Customer VALUES (0001, 'Ahmed Diab', '224 Henry St, Malden, MA, 02148', 'ahmed@wit.edu', '516-871-2341', 1);
INSERT INTO Customer VALUES (0002, 'Fengnan Zhang', '228 Henry St, Malden, MA, 02148', 'fengnan@wit.edu', '516-871-7831', 0);
INSERT INTO Customer VALUES (0003, 'Omer Diab', '214 Henry St, Malden, MA, 02148', 'omer@wit.edu', '516-871-8641', 1);
INSERT INTO Customer VALUES (0004, 'Mariam Diab', '887 Henry St, Malden, MA, 02148', 'mariam@wit.edu', '516-871-7645', 1);
INSERT INTO Customer VALUES (0005, 'Abdelaziz Diab', '316 Henry St, Malden, MA, 02148', 'abdel@wit.edu', '516-871-9124', 1);
INSERT INTO Customer VALUES (0006, 'Asmeret Jafarzade', '119 Henry St, Malden, MA, 02148', 'asmeret@wit.edu', '516-871-2746', 0);
INSERT INTO Customer VALUES (0007, 'Ha Kwan', '218 Henry St, Malden, MA, 02148', 'hakwan@wit.edu', '516-871-2178', 0);
INSERT INTO Customer VALUES (0008, 'Ibrahim Mostafa', '668 Henry St, Malden, MA, 02148', 'ibrahim@wit.edu', '516-871-2186', 0);
INSERT INTO Customer VALUES (0009, 'Patrick Swift', '888 Henry St, Malden, MA, 02148', 'patrick@wit.edu', '516-871-1256', 1);
INSERT INTO Customer VALUES (0010, 'John Wick', '992 Henry St, Malden, MA, 02148', 'john@wit.edu', '516-871-9992', 0);



INSERT INTO REGISTERED_CUSTOMER VALUES (0001, '4461-8879-7821-8561_02/24_214', 'Spicy Food');  -- card number_expiration date_security code
INSERT INTO REGISTERED_CUSTOMER VALUES (0002, '6681-5521-7189-4762_05/24_256', 'Pizza');  
INSERT INTO REGISTERED_CUSTOMER VALUES (0003,'5381-2176-2871-9781_05/26_891', 'Spicy Food');
INSERT INTO REGISTERED_CUSTOMER VALUES (0004,'6182-6624-2871-5571_07/26_218', 'Extra Sauce');
INSERT INTO REGISTERED_CUSTOMER VALUES (0005,'5381-8921-2218-4105_04/26_459', 'No Sauce');


INSERT INTO UNREGISTERED_CUSTOMER VALUES (0006, 15);
INSERT INTO UNREGISTERED_CUSTOMER VALUES (0007, 12.5);
INSERT INTO UNREGISTERED_CUSTOMER VALUES (0008, 12.5);
INSERT INTO UNREGISTERED_CUSTOMER VALUES (0009, 12.5);
INSERT INTO UNREGISTERED_CUSTOMER VALUES (0010, 15);



-- all the grinta id's and customer id's should be a valid ones.
INSERT INTO "Order" VALUES (4165, 10, 75.50, SYSDATE, 'Table 10', 6721, 0001);
INSERT INTO "Order" VALUES (7861, 6, 54.10, SYSDATE, 'Table 8', 5471, 0001);
INSERT INTO "Order" VALUES (2148, 7, 70.00, SYSDATE, 'Table 6', 8182, 0001);
INSERT INTO "Order" VALUES (1984, 12, 105.25, SYSDATE, '668 Henry St, Malden, MA, 02148', 4152, 0008);  -- customer id and order location should match. 
INSERT INTO "Order" VALUES (2286, 4, 26.50, SYSDATE, '218 Henry St, Malden, MA, 02148', 8182, 0007);


-- Grinta Id's should be valid ones
INSERT INTO Revenue VALUES (2178, 35560, 25070, 4152);
INSERT INTO Revenue VALUES (7891, 34560, 26781, 6721);
INSERT INTO Revenue VALUES (4412, 31762, 24512, 5471);
INSERT INTO Revenue VALUES (4142, 37881, 23581, 8182);
INSERT INTO Revenue VALUES (7561, 41982, 21412, 2175);


INSERT INTO Expense VALUES (44112, 7000, 4000, 3000, 500, 2000, 1500, 4152);
INSERT INTO Expense VALUES (56712, 6540, 3670, 2940, 540, 1500, 1720, 6721);
INSERT INTO Expense VALUES (68541, 6300, 3850, 3150, 480, 2120, 1910, 5471);
INSERT INTO Expense VALUES (11341, 7150, 3591, 3040, 495, 2400, 1212, 8182);
INSERT INTO Expense VALUES (21891, 7350, 3992, 3240, 390, 2220, 1498, 2175);


-- Employee (EmployeeID, Name, Position, Email, PhoneNumber, Is_Full_Time, Is_Part_Time, Is_Seasonal,GrintaID)
INSERT INTO Employee VALUES (001, 'Amanda Zhang', 'Manager', 'amanda@wit.edu', '516-871-2341', 1, 0, 0, 4152);
INSERT INTO Employee VALUES (002, 'Fengnan Diab', 'Kitchen Manager', 'fengnan@wit.edu', '516-871-7831', 1, 0,0, 4152);
INSERT INTO Employee VALUES (003, 'Omer Hu', 'Assistant Manager', 'omer@wit.edu', '516-871-8641', 1, 0, 0, 4152);
INSERT INTO Employee VALUES (004, 'Amhed Du', 'Chef', 'Amhed@wit.edu', '516-871-7645',1, 0, 0, 6721);
INSERT INTO Employee VALUES (005, 'Abdelaziz Diab', 'Pastry Chef', 'abdel@wit.edu', '516-871-9124', 1, 0, 0, 6721);
INSERT INTO Employee VALUES (006, 'Asmeret Jafarzade', 'Waiter', 'asmeret@wit.edu', '516-871-2746', 0, 1, 0, 6721);
INSERT INTO Employee VALUES (007, 'Sam Kwan', 'Waiter', 'sam@wit.edu', '516-871-2178',0, 1, 0, 5471);
INSERT INTO Employee VALUES (008, 'Ibrahim Mostafa', 'Waiter', 'ibrahim@wit.edu', '516-871-2186', 0, 1, 0, 5471);
INSERT INTO Employee VALUES (009, 'Patrick Swift', 'Waiter', 'patrick@wit.edu', '516-871-1256', 0, 1, 0, 5471);
INSERT INTO Employee VALUES (010, 'John Wick', 'Waiter', 'john@wit.edu', '516-871-9992', 0, 1, 0, 8182);
INSERT INTO Employee VALUES (011, 'mariam Zhang', 'Waiter', 'mariam@wit.edu', '516-871-2341', 0, 0, 1, 8182);
INSERT INTO Employee VALUES (012, 'Brain Robert', 'Manager', 'btain@wit.edu', '516-871-2341', 0, 0, 1, 8182);
INSERT INTO Employee VALUES (013, 'Lily Zhang', 'Manager', 'lily@wit.edu', '516-871-2341', 0, 0, 1, 2175);
INSERT INTO Employee VALUES (014, 'Ray Hu', 'Waiter', 'ray@wit.edu', '516-871-2341', 0, 0, 1, 2175);
INSERT INTO Employee VALUES (015, 'Jack Walk', 'Waiter', 'jack@wit.edu', '516-871-2341', 0, 0, 1, 2175);

-- FullTime_Employee (FEmployeeID, AnnualSalary）
INSERT INTO FullTime_Employee Values (001, 850000);
INSERT INTO FullTime_Employee Values (002, 750000);
INSERT INTO FullTime_Employee Values (003, 750000);
INSERT INTO FullTime_Employee Values (004, 650000);
INSERT INTO FullTime_Employee Values (005, 650000);


-- PartTime_Employee (PEmployeeID, HourlyRate）
INSERT INTO PartTime_Employee Values (006, 25);
INSERT INTO PartTime_Employee Values (007, 25);
INSERT INTO PartTime_Employee Values (008, 25);
INSERT INTO PartTime_Employee Values (009, 25);
INSERT INTO PartTime_Employee Values (010, 25);


-- Seasonal_Employee (SEmployeeID, ContractNumber, WorkedSeason）
INSERT INTO Seasonal_Employee Values (011, 14200, 'Summer');
INSERT INTO Seasonal_Employee Values (012, 12340, 'Summer');
INSERT INTO Seasonal_Employee Values (013, 11500, 'Winter');
INSERT INTO Seasonal_Employee Values (014, 10000, 'Winter');
INSERT INTO Seasonal_Employee Values (015, 12400, 'Winter');


INSERT INTO EXTRAEXPENSE VALUES(2166, 530, 1040, 4152);
INSERT INTO EXTRAEXPENSE VALUES(5761, 530, 0, 6721);
INSERT INTO EXTRAEXPENSE VALUES(2143, 349, 1202, 5471);
INSERT INTO EXTRAEXPENSE VALUES(2897, 722, 670, 8182);
INSERT INTO EXTRAEXPENSE VALUES(8751, 630, 450, 2175);


-- Equipment (EquipmentID, "Type", "Price", "Size", GrintaID)
INSERT INTO Equipment Values (2781, 'Dining Item', 200, 'Medium', 4152);
INSERT INTO Equipment Values (1821, 'Kichen Item', 270, 'Large', 4152);
INSERT INTO Equipment Values (6581, 'Dinner Set', 5, 'Small', 4152);
INSERT INTO Equipment Values (8881, 'Dining Item', 300, 'Large', 8182);
INSERT INTO Equipment Values (8371, 'Kichen Item', 50, 'Small', 2175);


INSERT INTO Promotion VALUES (6821, 'Happy Hour', 650, 7, 'Nov 19, 2021, 2:00 pm', 'Nov 19, 2021, 3:00 pm', 4152);
INSERT INTO Promotion VALUES (7641, 'Christmas Event', 750, 7, 'Dec 31, 2020, 10:00 pm', 'Jan 1, 2021, 1:00 am', 6721);
INSERT INTO Promotion VALUES (9891, 'Happy Hour', 650, 7, 'Nov 20, 2021, 2:00 pm', 'Nov 20, 2021, 3:00 pm', 5471);
INSERT INTO Promotion VALUES (9142, '4th of July', 650, 7, 'Jul 04, 2021, 2:00 pm', 'Jul 04, 2021, 10:00 pm', 8182);
INSERT INTO Promotion VALUES (2183, 'Happy Hour', 620, 7, 'Nov 21, 2021, 2:00 pm', 'Nov 21, 2021, 3:00 pm', 2175);


INSERT INTO Renovation VALUES (7631, 'Decoration', 1120, 1, 'Nov 11, 2021, 8:00 am', 'Nov 19, 2021, 11:00 am', 4152);
INSERT INTO Renovation VALUES (4621, 'Decoration', 750, 7, 'Nov 12, 2021, 8:00 am', 'Nov 19, 2021, 11:00 am', 6721);
INSERT INTO Renovation VALUES (5153, 'Decoration', 820, 7, 'Nov 13, 2021, 8:00 am', 'Nov 19, 2021, 11:00 am', 5471);
INSERT INTO Renovation VALUES (5189, 'Decoration', 780, 7, 'Nov 14, 2021, 8:00 am', 'Nov 19, 2021, 11:00 am', 8182);
INSERT INTO Renovation VALUES (3271, 'Decoration', 690, 7, 'Nov 15, 2021, 8:00 am', 'Nov 21, 2021, 11:00 am', 2175);


INSERT INTO Pizza VALUES(0001, 'Pepperoni Pizza', 'Medium', 15, 'BBQ');
INSERT INTO Pizza VALUES(0002, 'Cheese Pizza', 'Medium', 15, 'Alfredo');
INSERT INTO Pizza VALUES(0003, 'Honululu Hawaiian Pizza', 'Large', 18, 'Tomato');
INSERT INTO Pizza VALUES(0004, 'Veggie Pizza', 'Small', 12, 'Tomato');
INSERT INTO Pizza VALUES(0005, 'Pepperoni Pizza', 'Medium', 15, 'Parm');


INSERT INTO Pizza_Topping VALUES (0001, 'Pepperoni');
INSERT INTO Pizza_Topping VALUES (0002, 'Feta Cheese');
INSERT INTO Pizza_Topping VALUES (0003, 'Bacon');
INSERT INTO Pizza_Topping VALUES (0004, 'Mushroom');
INSERT INTO Pizza_Topping VALUES (0005, 'Pepperoni');


INSERT INTO Grinta_Pizza VALUES (4152, 0001, 4); 
INSERT INTO Grinta_Pizza VALUES (6721, 0002, 2); 
INSERT INTO Grinta_Pizza VALUES (5471, 0003, 7); 
INSERT INTO Grinta_Pizza VALUES (4152, 0004, 5); 
INSERT INTO Grinta_Pizza VALUES (8182, 0005, 9); 


INSERT INTO Dish VALUES(0001, 'Lasagna', 'Medium', 25);
INSERT INTO Dish VALUES(0002, 'Spaghetti with Meatballs', 'Large', 29.5);
INSERT INTO Dish VALUES(0003, 'Kushari', 'Small', 18);
INSERT INTO Dish VALUES(0004, 'Lasagna', 'Large', 30);
INSERT INTO Dish VALUES(0005, 'Manicotti', 'Large', 35);


INSERT INTO Dish_Ingredient VALUES (0001, 'Cheese');
INSERT INTO Dish_Ingredient VALUES (0002, 'Pasta');
INSERT INTO Dish_Ingredient VALUES (0003, 'Beef');
INSERT INTO Dish_Ingredient VALUES (0004, 'Mozarella Cheese');
INSERT INTO Dish_Ingredient VALUES (0005, 'Spaghetti');


INSERT INTO Grinta_Dish VALUES (4152, 0001, 3); 
INSERT INTO Grinta_Dish VALUES (6721, 0002, 2); 
INSERT INTO Grinta_Dish VALUES (5471, 0003, 1); 
INSERT INTO Grinta_Dish VALUES (4152, 0004, 6); 
INSERT INTO Grinta_Dish VALUES (8182, 0005, 3); 


INSERT INTO Sandwich VALUES(0001, 'Steak Cheese', 'Medium', 16);
INSERT INTO Sandwich VALUES(0002, 'Italian Beef', 'Large', 21.50);
INSERT INTO Sandwich VALUES(0003, 'Hawaiian Grinder', 'Small', 15);
INSERT INTO Sandwich VALUES(0004, 'Veg Cheese Sandwich', 'Large', 22.5);
INSERT INTO Sandwich VALUES(0005, 'Masala Burger', 'Small', 12);


INSERT INTO Sandwich_Ingredient VALUES (0001, 'Steak');
INSERT INTO Sandwich_Ingredient VALUES (0002, 'Beef');
INSERT INTO Sandwich_Ingredient VALUES (0003, 'Bacon');
INSERT INTO Sandwich_Ingredient VALUES (0004, 'Feta Cheese');
INSERT INTO Sandwich_Ingredient VALUES (0005, 'Burger');


INSERT INTO Grinta_Sandwich VALUES (4152, 0001, 4); 
INSERT INTO Grinta_Sandwich VALUES (6721, 0002, 2); 
INSERT INTO Grinta_Sandwich VALUES (5471, 0003, 7); 
INSERT INTO Grinta_Sandwich VALUES (4152, 0004, 5); 
INSERT INTO Grinta_Sandwich VALUES (8182, 0005, 9); 


INSERT INTO Side VALUES(0001, 'French Fries', 'Medium', 5.50);
INSERT INTO Side VALUES(0002, 'Tahini Sauce', 'Large', 6.50);
INSERT INTO Side VALUES(0003, 'Italian Bread', 'Small', 4.50);
INSERT INTO Side VALUES(0004, 'Onion Rings', 'Large', 4.95);
INSERT INTO Side VALUES(0005, 'Fried Pickles', 'Small', 4.95);


INSERT INTO Side_Ingredient VALUES (0001, 'Potato');
INSERT INTO Side_Ingredient VALUES (0002, 'Hummus');
INSERT INTO Side_Ingredient VALUES (0003, 'Flour');
INSERT INTO Side_Ingredient VALUES (0004, 'Onion');
INSERT INTO Side_Ingredient VALUES (0005, 'Oil');


INSERT INTO Grinta_Side VALUES (4152, 0001, 1); 
INSERT INTO Grinta_Side VALUES (6721, 0002, 2); 
INSERT INTO Grinta_Side VALUES (5471, 0003, 4); 
INSERT INTO Grinta_Side VALUES (4152, 0004, 1); 
INSERT INTO Grinta_Side VALUES (8182, 0005, 3); 


INSERT INTO Drink VALUES(0001, 'Margarita', 'Large', 45.50, 1);
INSERT INTO Drink VALUES(0002, 'Tequila', 'Large', 40, 1);
INSERT INTO Drink VALUES(0003, 'Italian Coffee', 'Medium', 7.50, 0);
INSERT INTO Drink VALUES(0004, 'Orange Juice', 'Small', 6.50, 0);
INSERT INTO Drink VALUES(0005, 'Green Tea', 'Small', 4.95, 0);


INSERT INTO Drink_Ingredient VALUES (0001, 'Salt');
INSERT INTO Drink_Ingredient VALUES (0002, 'Sugar');
INSERT INTO Drink_Ingredient VALUES (0003, 'Sugar');
INSERT INTO Drink_Ingredient VALUES (0004, 'Orange');
INSERT INTO Drink_Ingredient VALUES (0005, 'Sugar');


INSERT INTO Grinta_Drink VALUES (4152, 0001, 2); 
INSERT INTO Grinta_Drink VALUES (6721, 0002, 4); 
INSERT INTO Grinta_Drink VALUES (5471, 0003, 5); 
INSERT INTO Grinta_Drink VALUES (4152, 0004, 3); 
INSERT INTO Grinta_Drink VALUES (8182, 0005, 1); 


