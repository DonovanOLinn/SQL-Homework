

create table Concessions (
	Concession_id serial primary key,
	description varchar(70),
	total_cost numeric (4,2) 
);

create table Customers (
	Customer_id serial,
	first_name varchar(25),
	last_name varchar(25),
	movie_id serial,
	foreign key(movie_id) references Movies(movie_id),
	Concession_id serial,
	foreign key(Concession_id) references Concessions(Concession_id)
);

create table Movies (
	movie_id serial primary key,
	movie_name varchar(30),
	movie_release date default current_date,
	sales numeric(10,2),
	ticket_id serial,
	foreign key(ticket_id) references Ticket(ticket_id)
);

create table Ticket(
	ticket_id serial primary key,
	ticket_price numeric(4,2),
	theatre_bay integer
);

select *
from Customers

insert into Concessions(description, total_cost)
values ('Hot dog no bun', 52.43)

insert into Customers(first_name, last_name)
values ('Hello', 'There')

insert into Movies(Movie_name, Sales)
values ('Paul Blart 5', 473926.23)

insert into Ticket(Ticket_price, Theatre_bay)
values (23.53, 8)


