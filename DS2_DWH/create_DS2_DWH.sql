use [master]
go

create database [DS2_DWH]
go


use [DS2_DWH]
go

create table [dbo].[Customer]
(
    CustomerID int primary key,
    FullName varchar(101) not null,
    Age tinyint null,
    Income int null,
    Gender varchar(10) null
)
go

create table [dbo].[Location]
(
    LocationID int identity(1,1) primary key,
	Region  varchar(50) not null,
	Country varchar(50) not null,
	[State] varchar(50) null,
	City varchar(50) not null
)
go

create table [dbo].[Product]
(
    ID int identity(1,1) primary key,
	ProductID int not null,
	Category varchar(50) not null,
	Title varchar(50) not null,
	Actor varchar(50) not null,
	Price money not null,
	Special varchar(5) null,
	EffectiveStartDate datetime not null,
	EffectiveEndDate datetime null
)
go

create table [dbo].[Date]
(
    DateID int identity(1,1) primary key,
	TheDate date not null,
	TheDay tinyint not null,
	TheMonth tinyint not null,
	TheMonthName varchar(50) not null,
	TheYear int not null,
	TheWeekDay tinyint not null,
	TheWeekDayName varchar(50) not null,
	TheWeekInYear tinyint not null,
	TheWeekInMonth tinyint not null
)
go

create table [dbo].[FactOrder]
(
    ID int identity(1,1) primary key,
	OrderID int not null,
	LocationID int not null,
	ProductID int not null,
	CustomerID int not null,
	DateID int not null,
	Quantity smallint not null,
	NetAmount money not null,
	Tax money not null,
	TotalAmount money not null
)
go

alter table [dbo].[FactOrder] with check add constraint [FK_order_location] foreign key(LocationID)
references [dbo].[Location]([LocationID])
go

alter table [dbo].[FactOrder] with check add constraint [FK_order_product] foreign key(ProductID)
references [dbo].[Product](ID)
go

alter table [dbo].[FactOrder] with check add constraint [FK_order_customer] foreign key(CustomerID)
references [dbo].[Customer](CustomerID)
go

alter table [dbo].[FactOrder] with check add constraint [FK_order_date] foreign key(DateID)
references [dbo].[Date](DateID)
go
