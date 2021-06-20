PRAGMA foreign_keys = on;

drop table if exists publisher;
drop table if exists books;
drop table if exists subjects;
drop table if exists books_subjects;


create table publisher(
	id integer primary key,
	name text,
	country text
);

create table books(
	id integer primary key,
	title text,
	publisher integer foreign_key publisher references publisher(id)
); 

create table subjects(
	id integer primary key,
	name text
	
); 

create table books_subjects(
	book integer references books(id),
	subject integer references subjects(id)
);

