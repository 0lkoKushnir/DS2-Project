DROP TABLE if exists f_order;
DROP TABLE if exists d_date;
DROP TABLE if exists d_location;
DROP TABLE if exists d_customer;
DROP TABLE if exists d_product;

CREATE TABLE d_date
(
  date_id                  INT primary key,
  date_actual              DATE NOT NULL,
  day_name                 VARCHAR(9) NOT NULL,
  day_of_week              INT NOT NULL,
  day_of_month             INT NOT NULL,
  week_of_month            INT NOT NULL,
  week_of_year             INT NOT NULL,
  month_actual             INT NOT NULL,
  month_name               VARCHAR(9) NOT NULL,
  year_actual              INT NOT NULL
);

create table d_customer
(
    Customer_ID bigint primary key,
    Full_Name varchar(101) not null,
    Age smallint,
    Income int,
    Gender varchar(10)
);

create table d_Location
(
    Location_ID bigserial primary key,
    Region varchar(50) not null,
    Country varchar(50) not null,
    State varchar(50),
    City varchar(50) not null
);

create table d_Product
(
    ID bigserial primary key,
    Product_ID bigint not null,
    Category varchar(50) not null,
    Title varchar(50) not null,
    Actor varchar(50) not null,
    Price money not null,
    Special varchar(5),
    Effective_Start_Date timestamp not null,
    Effective_End_Date timestamp
);

create table f_Order
(
    ID bigserial primary key,
    Order_ID bigint not null,
    Location_ID bigint references d_Location(Location_ID) not null,
    Product_ID bigint references d_Product(ID) not null,
    Customer_ID bigint references d_Customer(Customer_ID) not null,
    Date_ID bigint references d_Date(Date_ID) not null,
    Quantity smallint not null,
    Net_Amount money not null,
    Tax money not null,
    Total_Amount money not null
);