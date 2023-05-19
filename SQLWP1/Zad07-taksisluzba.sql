use master

drop database if exists taksisluzba;

create database taksisluzba;

use taksisluzba
go

create table vozila(
	sifra int not null primary key identity (1,1),
	marka varchar(50),
	brojvozila int not null,
	vozac int not null
);

create table vozac(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib int(11),
);

create table putnik (
	sifra int not null primary key identity (1,1),
	voznja int not null,
	cijena decimal(18,2) not null,
	vozac int not null
);

create table vozac_putnik (
	vozac int not null primary key identity,
	putnik int not null,
);