use master

drop database if exists trgovackicentar;

create database trgovackicentar;
use trgovackicentar;

create table trgovina(
	sifra int not null primary key identity(1,1),
	lokacija varchar(50),
	sef int not null,
);

create table osoba (
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,

);

create table trgovina_osoba(
	trgovina int not null primary key identity (1,1),
	osoba int not null
);

create table sef(
	sifra int not null primary key identity (1,1),
	osoba int not null,
	odjel varchar(50),
);