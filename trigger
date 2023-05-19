create table bill(billno number(20)primary key,day number(30),tableno number(20),total number(20))

drop table bill

insert into bill values(1,3,21,500)

insert into bill values(2,6,31,650)

select * from bill

create table menu(dish_no number(20)primary key,dish_desc varchar(30),price number(20)check(price>0))

drop table menu

insert into menu values(11,'vadapav',10)

insert into menu values(12,'Misalpav',60)

select * from menu

create table bim(billno number(20) references bill(billno),dish_no number(20) references menu(dish_no),quantity number(20))

drop table bim 

insert into bim values(1,11,5)

insert into bim values(2,12,10)

select * from bim

create or replace trigger Menu

before insert or update on menu

for each row

declare

invalid_price exception;

begin

if(:new.price>0)then

raise invalid_price;

end if;

exception

when invalid_price then

dbms_output.put_line('error:');

end;

/

insert into menu values(9,'paneer',100)

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

create or replace trigger BILL

before insert or update on bill

for each row

declare

      invalid_day exception;

begin

     if(:new.day > 7)then

     raise invalid_day;

end if;

exception

      when invalid_day then

      dbms_output.put_line('error:');

end;

/

insert into bill values(5,8,22,800)

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

create or replace trigger total_bill

before insert or update on bill

for each row

declare

invalid_total exception;

begin

if(:new.total<=500)then

raise invalid_total;

end if;

exception

when invalid_total then

dbms_output.put_line('total galat hai:->');

end;

/

insert into bill values(9,4,25,100) 
