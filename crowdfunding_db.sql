-- drop table if exists
drop table contacts;
drop table category;
drop table subcategory;
drop table campaign;

-- insert tables 
create table contacts(
	contact_id int PRIMARY KEY, 
	email varchar,
	first_name varchar, 
	last_name varchar
);
create table category(
	category_id varchar PRIMARY KEY, 
	category varchar
);
create table subcategory(
	subcategory_id varchar PRIMARY KEY, 
	subcategory varchar
);

create table campaign(
	cf_id int PRIMARY KEY,  
	contact_id int,
	company_name varchar,
	description varchar,
	goal float,
	pledged float,
	outcome varchar(10),
	backers_count int,
	country varchar(2),
	currency varchar(3),
	launch_date date,
	end_date date, 
	staff_pick varchar(5),
	spotlight varchar(5),
	category_subcategory varchar,
	category varchar,
	subcategory varchar,
	categoryID varchar(5) REFERENCES category(category_id),
	subcategoryID varchar(8) REFERENCES subcategory(subcategory_id)
);

--verify tables
select * from contacts
select * from category
select * from subcategory
select * from campaign

--import files and verify
select * from contacts
select * from category
select * from subcategory
select * from campaign
