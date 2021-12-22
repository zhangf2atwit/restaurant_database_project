
--
-- =====================================================
-- File Name:    create_tables.sql
-- Instructor:   Nguyen Thai
-- Student:      Ahmed Diab, Fengnan Zhang
-- Date:         11/17/2021
-- Description:  Final Project, Create Tables
--                  
-- =====================================================


CREATE TABLE Grinta
            (GrintaID           NUMBER(11,0)           NOT NULL,
             Location           VARCHAR2(40)           NOT NULL,
             PhoneNumber        VARCHAR2(15),
CONSTRAINT Grinta_PK PRIMARY KEY (GrintaID));


CREATE TABLE "Order"
            (OrderID                NUMBER(11,0)                NOT NULL,
             Num_Of_Items           NUMBER(10),
             BillAmount             NUMBER(10, 2),
             TimeOfOrder            DATE DEFAULT SYSDATE,
             Order_Location         VARCHAR2(40),
             GrintaID               NUMBER(11,0)                NOT NULL,
             CustomerID             NUMBER(11,0)                NOT NULL,
CONSTRAINT Order1_PK  PRIMARY KEY(OrderID),
CONSTRAINT Order1_FK1 FOREIGN KEY (GrintaID)   REFERENCES Grinta(GrintaID),
CONSTRAINT Order1_FK2 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));



CREATE TABLE Customer
            (CustomerID               NUMBER(11,0)                NOT NULL,
             Name                     VARCHAR2(20)                NOT NULL,
             Address                  VARCHAR2(40),
             Email                    VARCHAR2(20),
             PhoneNumber              VARCHAR2(15),
             IsVIP                    NUMBER(1)
                                                CHECK(IsVIP IN(1, 0)),
CONSTRAINT Customer_PK PRIMARY KEY(CustomerID));


       
CREATE TABLE Registered_Customer
            (RCustomerID            NUMBER(11,0)                NOT NULL,
             PaymentInfo            VARCHAR2(20),
             MealPreference         VARCHAR2(40),
CONSTRAINT Registered_Customer_PK PRIMARY KEY(RCustomerID),
CONSTRAINT Registered_Customer_FK FOREIGN KEY(RCustomerID)
                                 REFERENCES Customer(CustomerID));



CREATE TABLE Unregistered_Customer
            (UCustomerID               NUMBER(11,0)           NOT NULL,
             Registeration_Discount    NUMBER(10,2),
CONSTRAINT Unregistered_Customer_PK PRIMARY KEY(UCustomerID),
CONSTRAINT Unregistered_Customer_FK FOREIGN KEY(UCustomerID)
                                    REFERENCES Customer(CustomerID));


CREATE TABLE Employee
            (EmployeeID               NUMBER(11,0)                NOT NULL,
             Name                     VARCHAR2(20)                NOT NULL,
             Position                 VARCHAR2(20)                NOT NULL,
             Email                    VARCHAR2(20),
             PhoneNumber              VARCHAR2(15),
             Is_Full_Time             NUMBER(1)
                                                       CHECK(Is_Full_Time IN(1, 0)),
             Is_Part_Time             NUMBER(1)
                                                       CHECK(Is_Part_Time IN(1, 0)),
             Is_Seasonal              NUMBER(1)
                                                       CHECK(Is_Seasonal IN(1, 0)),
             GrintaID                 NUMBER(11,0)                NOT NULL,
CONSTRAINT Employee_PK PRIMARY KEY(EmployeeID),
CONSTRAINT Employee_FK FOREIGN KEY(GrintaID)
                                    REFERENCES Grinta(GrintaID));

CREATE TABLE FullTime_Employee
            (FEmployeeID            NUMBER(11,0)                NOT NULL,
             AnnualSalary           NUMBER(12,2)                NOT NULL,
CONSTRAINT FullTime_Employee_PK PRIMARY KEY(FEmployeeID),
CONSTRAINT FullTime_Employee_FK FOREIGN KEY(FEmployeeID)
                                  REFERENCES Employee(EmployeeID));


CREATE TABLE PartTime_Employee
            (PEmployeeID            NUMBER(11,0)                NOT NULL,
             HourlyRate             NUMBER(12,2)                NOT NULL,
CONSTRAINT PartTime_Employee_PK PRIMARY KEY(PEmployeeID),
CONSTRAINT PartTime_Employee_FK FOREIGN KEY(PEmployeeID)
                                  REFERENCES Employee(EmployeeID));

CREATE TABLE Seasonal_Employee
            (SEmployeeID            NUMBER(11,0)                NOT NULL,
             ContractNumber         NUMBER(11,0)                NOT NULL,
             WorkedSeason           VARCHAR2(20),
CONSTRAINT Seasonal_Employee_PK PRIMARY KEY(SEmployeeID),
CONSTRAINT Seasonal_Employee_FK FOREIGN KEY(SEmployeeID)
                                  REFERENCES Employee(EmployeeID));



CREATE TABLE Revenue
            (RevenueID               NUMBER(11,0)                   NOT NULL,
             DineIn_Income           NUMBER(12, 2),
             TakeOutIncome           NUMBER(12, 2),
             GrintaID                NUMBER(11,0)                   NOT NULL,           
CONSTRAINT Revenue_PK PRIMARY KEY(RevenueID),
CONSTRAINT Revenue_FK FOREIGN KEY(GrintaID)
                                    REFERENCES Grinta(GrintaID));


CREATE TABLE Expense
            (ExpenseID               NUMBER(11,0)                   NOT NULL,
             Salary                  NUMBER(12, 2)                  NOT NULL,
             Rent                    NUMBER(12, 2)                  NOT NULL,
             Electric_Bill           NUMBER(12, 2)                  NOT NULL,
             Water_Bill              NUMBER(12, 2)                  NOT NULL,
             Ingredients_Cost        NUMBER(12, 2),
             Equipment_Cost          NUMBER(12, 2),
             GrintaID                NUMBER(11,0)                   NOT NULL,           
CONSTRAINT Expense_PK PRIMARY KEY(ExpenseID),
CONSTRAINT Expense_FK FOREIGN KEY(GrintaID)
                                    REFERENCES Grinta(GrintaID));


CREATE TABLE ExtraExpense
            (ExtraexpenseID          NUMBER(11,0)                   NOT NULL,
             RenovationCost          NUMBER(12, 2),
             PromotionCost           NUMBER(12, 2),
             GrintaID                NUMBER(11,0)                   NOT NULL,           
CONSTRAINT ExtraExpense_PK PRIMARY KEY(ExtraexpenseID),
CONSTRAINT ExtraExpense_FK FOREIGN KEY(GrintaID)
                                    REFERENCES Grinta(GrintaID));



CREATE TABLE Equipment
            (EquipmentID             NUMBER(11,0)                   NOT NULL,
             "Type"                    VARCHAR2(20),          
             Price                   NUMBER(12, 2),
             "Size"                    VARCHAR2(20),
             GrintaID                NUMBER(11,0)                   NOT NULL,           
CONSTRAINT Equipment_PK PRIMARY KEY(EquipmentID),
CONSTRAINT Equipment_FK FOREIGN KEY(GrintaID)
                                    REFERENCES Grinta(GrintaID));

CREATE TABLE Promotion
            (PromotionID             NUMBER(11,0)                   NOT NULL,
             "Type"                  VARCHAR2(20),          
             Expense                 NUMBER(12, 2),
             Frequency               VARCHAR2(30),
             DateStart               VARCHAR2(40),
             DateEnd                VARCHAR2(40),
             GrintaID                NUMBER(11,0)                   NOT NULL,           
CONSTRAINT Promotion_PK PRIMARY KEY(PromotionID),
CONSTRAINT Promotion_FK FOREIGN KEY(GrintaID)
                                    REFERENCES Grinta(GrintaID));

CREATE TABLE Renovation
            (RenovationID             NUMBER(11,0)                   NOT NULL,
             "Type"                  VARCHAR2(20),          
             Expense                 NUMBER(12, 2),
             Frequency               VARCHAR2(30),
             DateStart               VARCHAR2(40),
             DateEnd                 VARCHAR2(40),
             GrintaID                NUMBER(11,0)                   NOT NULL,           
CONSTRAINT Renovation_PK PRIMARY KEY(PromotionID),
CONSTRAINT Renovation_FK FOREIGN KEY(GrintaID)
                                    REFERENCES Grinta(GrintaID));


CREATE TABLE Grinta_Pizza
            (GrintaID                  NUMBER(11,0)                   NOT NULL,
             PizzaID                   NUMBER(11,0)                   NOT NULL,
             Amount                    NUMBER(4),                                           
CONSTRAINT Grinta_Pizza_PK PRIMARY KEY(GrintaID, PizzaID),
CONSTRAINT Grinta_Pizza_FK1 FOREIGN KEY (GrintaID) REFERENCES Grinta(GrintaID),
CONSTRAINT Grinta_Pizza_FK2 FOREIGN KEY (PizzaID) REFERENCES Pizza(PizzaID));



CREATE TABLE Pizza
            (PizzaID                 NUMBER(11,0)                   NOT NULL,
             "Name"                  VARCHAR2(30),                            
             "Size"                  VARCHAR2(30)                   NOT NULL,
             Price                   NUMBER(12,2),
             Sauce                   VARCHAR2(30),
           
CONSTRAINT Pizza_PK PRIMARY KEY(PizzaID));


CREATE TABLE Pizza_Topping
            (PizzaID                    NUMBER(11,0)                   NOT NULL,
             Topping                    NUMBER(11,0)                   NOT NULL,                                           
CONSTRAINT Pizza_Topping_PK PRIMARY KEY(PizzaID, Topping),
CONSTRAINT Pizza_Topping_FK1 FOREIGN KEY (PizzaID) REFERENCES Pizza(PizzaID));


CREATE TABLE Grinta_Dish
            (GrintaID                  NUMBER(11,0)                   NOT NULL,
             DishID                    NUMBER(11,0)                   NOT NULL,
             Amount                    NUMBER(4),                                           
CONSTRAINT Grinta_Dish_PK PRIMARY KEY(GrintaID, DishID),
CONSTRAINT Grinta_Dish_FK1 FOREIGN KEY (GrintaID) REFERENCES Grinta(GrintaID),
CONSTRAINT Grinta_Dish_FK2 FOREIGN KEY (DishID) REFERENCES Dish(DishID));


20. CREATE TABLE Dish
            (DishID                  NUMBER(11,0)                   NOT NULL,
             "Name"                  VARCHAR2(30),                            
             "Size"                  VARCHAR2(30)                   NOT NULL,
             Price                   NUMBER(12,2),           
CONSTRAINT Dish_PK PRIMARY KEY(DishID));



21. CREATE TABLE Dish_Ingredient
            (DishID                    NUMBER(11,0)                   NOT NULL,
             Ingredient                VARCHAR2(30)                   NOT NULL,                                           
CONSTRAINT Dish_Ingredient_PK PRIMARY KEY(DishID, Ingredient),
CONSTRAINT Dish_Ingredient_FK1 FOREIGN KEY (DishID) REFERENCES Dish(DishID));


CREATE TABLE Grinta_Sandwich
            (GrintaID                  NUMBER(11,0)                   NOT NULL,
             SandwichID                NUMBER(11,0)                   NOT NULL,
             Amount                    NUMBER(4),                                           
CONSTRAINT Grinta_Sandwich_PK PRIMARY KEY(GrintaID, SandwichID),
CONSTRAINT Grinta_Sandwich_FK1 FOREIGN KEY (GrintaID) REFERENCES Grinta(GrintaID),
CONSTRAINT Grinta_Sandwich_FK2 FOREIGN KEY (SandwichID) REFERENCES Sandwich(SandwichID));


CREATE TABLE Sandwich
            (SandwichID                  NUMBER(11,0)                   NOT NULL,
             "Name"                  VARCHAR2(30),                            
             "Size"                  VARCHAR2(30)                   NOT NULL,
             Price                   NUMBER(12,2),           
CONSTRAINT Sandwich_PK PRIMARY KEY(SandwichID));


CREATE TABLE Sandwich_Ingredient
            (SandwichID                    NUMBER(11,0)                   NOT NULL,
             Ingredient                VARCHAR2(30)                   NOT NULL,                                           
CONSTRAINT Sandwich_Ingredient_PK PRIMARY KEY(SandwichID, Ingredient),
CONSTRAINT Sandwich_Ingredient_FK1 FOREIGN KEY (SandwichID) REFERENCES Sandwich(SandwichID));




CREATE TABLE Grinta_Side
            (GrintaID                  NUMBER(11,0)                   NOT NULL,
             SideID                    NUMBER(11,0)                   NOT NULL,
             Amount                    NUMBER(4),                                           
CONSTRAINT Grinta_Side_PK PRIMARY KEY(GrintaID, SideID),
CONSTRAINT Grinta_Side_FK1 FOREIGN KEY (GrintaID) REFERENCES Grinta(GrintaID),
CONSTRAINT Grinta_Side_FK2 FOREIGN KEY (SideID) REFERENCES Side(SideID));


CREATE TABLE Side
            (SideID                  NUMBER(11,0)                   NOT NULL,
             "Name"                  VARCHAR2(30),                            
             "Size"                  VARCHAR2(30)                   NOT NULL,
             Price                   NUMBER(12,2),           
CONSTRAINT Side_PK PRIMARY KEY(SideID));



CREATE TABLE Side_Ingredient
            (SideID                    NUMBER(11,0)                   NOT NULL,
             Ingredient                VARCHAR2(30)                   NOT NULL,                                           
CONSTRAINT Side_Ingredient_PK PRIMARY KEY(SideID, Ingredient),
CONSTRAINT Side_Ingredient_FK FOREIGN KEY (SideID) REFERENCES Side(SideID));




CREATE TABLE Grinta_Drink
            (GrintaID                  NUMBER(11,0)                   NOT NULL,
             DrinkID                    NUMBER(11,0)                   NOT NULL,
             Amount                    NUMBER(4),                                           
CONSTRAINT Grinta_Drink_PK PRIMARY KEY(GrintaID, DrinkID),
CONSTRAINT Grinta_Drink_FK1 FOREIGN KEY (GrintaID) REFERENCES Grinta(GrintaID),
CONSTRAINT Grinta_Drink_FK2 FOREIGN KEY (DrinkID) REFERENCES Drink(DrinkID));



CREATE TABLE Drink
            (DrinkID                  NUMBER(11,0)                   NOT NULL,
             "Name"                   VARCHAR2(30),                            
             "Size"                   VARCHAR2(30)                   NOT NULL,
             Price                    NUMBER(12,2),      
             IsAlcoholic              NUMBER(1)
                                        CHECK(IsAlcoholic IN(1, 0)),
CONSTRAINT Drink_PK PRIMARY KEY(DrinkID));

CREATE TABLE Drink_Ingredient
            (DrinkID                    NUMBER(11,0)                   NOT NULL,
             Ingredient                 VARCHAR2(30)                   NOT NULL,                                           
CONSTRAINT Drink_Ingredient_PK PRIMARY KEY(DrinkID, Ingredient),
CONSTRAINT Drink_Ingredient_FK FOREIGN KEY (DrinkID) REFERENCES Drink(DrinkID));







