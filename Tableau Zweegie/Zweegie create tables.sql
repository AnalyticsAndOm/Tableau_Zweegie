create database Swiggy;
use Swiggy;
create table if not exists customers
(
	c_id int not null primary key,
    c_fname varchar(8) not null,
    c_lname varchar(8) not null,
    c_city varchar(30) not null,
    c_state varchar(30) not null,
    c_type varchar(3) not null
);
create table if not exists restaurants
(
	rid int not null primary key,
    r_name varchar(15) not null,
    r_city varchar(8) not null,
    r_state varchar(8) not null,
    r_commission float not null
);
create table if not exists orders
(
	ord_date datetime not null,
    ord_id int not null primary key,
    cus_id int not null,
    rest_id int not null,
    qty tinyint not null,
    amount smallint not null,
    disc smallint not null,
    comm float not null,
    dist float not null,
    foreign key(rest_id) references restaurants(rid),
    foreign key(cus_id) references customers(c_id)
);
alter table restaurants
modify r_city varchar(30) not null,
modify r_state varchar(30) not null;