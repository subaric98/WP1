use master

drop database if exists osnovnaskola;

create database osnovnaskola;
use osnovnaskola;

create table radionice(
	sifra int not null primary key identity (1,1),
	termin datetime not null,
	lokacija varchar(50),
	uciteljica int not null

);

create table dijete(
	sifra int not null primary key identity (1,1),
	ime varchar(50),
	prezime varchar(50),
	spol varchar(1),
	email varchar(50),
);

create table radionica_dijete(
	radionica int not null primary key identity (1,1),
	dijete int not null
);

create table uciteljica(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null
);