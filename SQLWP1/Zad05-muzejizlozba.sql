use master
go

drop database if exists muzejizlozba;

create database muzejizlozba;

use muzejizlozba;
go

create table izlozbe(
	sifra int not null primary key identity(1,1),
	naziv varchar(50) not null,
	prostor int not null
);

create table djela (
	sifra int not null primary key identity (1,1),
	vrstadjela varchar(50) not null,
	umjetnik varchar(50) not null

);

create table izlozba_djela(
	izlozba int not null primary key identity (1,1),
	djela int not null

);

create table kustos(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	izlozba int not null
);

create table sponzor (
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	izlozba int not null
);
