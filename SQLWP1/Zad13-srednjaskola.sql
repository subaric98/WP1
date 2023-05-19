use master

drop database if exists srednjaskola;

create database srednjaskola;

use srednjaskola;
go

create table razred(
	sifra int not null primary key identity (1,1),
	brojucenika int not null,
	naziv varchar(50) not null
);

create table ucenik(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	spol varchar(10) not null
);

create table razred_ucenik (
	razred int not null primary key identity (1,1),
	ucenik int not null
);

create table profesor (
	sifra int not null primary key identity (1,1),
	ime varchar(50),
	prezime varchar(50),
	strucnasprema varchar(10)
);

create table profesor_razred (
	profesor int not null primary key identity (1,1),
	razred int not null
);