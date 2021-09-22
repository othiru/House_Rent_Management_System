CREATE TABLE RENTER(
RenterId int identity(1,1) NOT NULL PRIMARY KEY,
Flat_name varchar(3) not null,
NoOfCars int NULL DEFAULT 0,
NoOfBikes int NULL DEFAULT 0,


);

select * from RENTER
CREATE TABLE RENTERSPI(
RenterPIId int identity(1,1) not null primary key,
RenterID int foreign key references RENTER(RenterId),
Name varchar(100) not null,
P_Address varchar(200) null,
Occupation varchar(50) not null,
PhoneNo varchar(11) not null,
EntryDate Date not null,
);


CREATE TABLE Unit
(UnitId int identity(1,1) not null primary key,
RenterID int foreign key references RENTER(RenterId),
Flat_name varchar(3) not null,
RentedAmount decimal(13,2) not null,
Utility decimal (13,2) not null,
GandWBill decimal(13,2) not null,


);


CREATE TABLE PAYMENTRECORD(
PaymentRecordId int identity(1,1) not null primary key,
RenterID int foreign key references RENTER(RenterId),
Flat_name varchar(3) not null,
Month varchar(20) not null,
Year int not null,
DateOfPayment decimal(13,2) not null,
PaidAmount decimal(13,2) not null,
);
CREATE TABLE ElectricityBill(
EBillId int identity(1,1) not null primary key,
UnitID int foreign key references Unit(UnitId),
Flat_name varchar(3) not null,
E_Bill decimal(13,2) not null,
Month varchar(20) not null,
Year int not null,

);