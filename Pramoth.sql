create database BANK;
use bank;
create table CUSTOMERDETIAL(Acc_no int primary key , Acc_name varchar(50) not null,pin_no int unique,pan_no varchar (8)not null unique,balance int not null,address varchar(20),acc_type varchar(20)not null) ;
create table BANKDETIAL(e_id int primary key,bank_name varchar(20),IFSC_CODE int not null,branch varchar (10) not null,Phone_no int not null,pincode int not null,e_salary int not null);
insert into bankdetial values(1,"SBI",1,"Gangavalli",555555,505222,50000);
insert into bankdetial values(2,"IB",5,"Gangavalli",855555,505222,52500);
insert into bankdetial values(3,"CB",3,"Gangavalli",155555,505222,52000);
insert into CUSTOMERDETIAL values(12345,"Pramoth",1511,"Pram123",55000,"Attur","benificiary");
insert into CUSTOMERDETIAL values(12675,"Naveen",1212,"Nav123",25000,"Salem","Joint");
insert into CUSTOMERDETIAL values(12445,"Sudan",1410,"sud123",50000,"erode","benificiary");
insert into CUSTOMERDETIAL values(1235,"Sanjay",1507,"San123",25500,"Namkkal","Joint");
select * from customerdetial;
select * from bankdetial;
SELECT
  customerdetial.Acc_no,
  customerdetial.Acc_name,
  customerdetial.balance,
  bankdetial.bank_name,
  bankdetial.IFSC_CODE
FROM customerdetial
INNER JOIN bankdetial
ON customerdetial.Acc_no = bankdetial.e_id;