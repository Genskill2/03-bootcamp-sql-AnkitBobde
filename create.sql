create table publisher (
	id serial primary key,
	name text UNIQUE NOT NULL,
	country text NOT NULL
);

create table books (
	id serial primary key,
	title text NOT NULL,
	publisher serial references publisher(id)
);

create table subjects (
	id serial primary key,
	name text NOT NULL
);

create table books_subjects (
	book serial references books(id),
	subject serial references subjects(id)
);


