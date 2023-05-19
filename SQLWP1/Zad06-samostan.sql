use master

drop database if exists samostan;
go

create database samostan;
use samostan;

create table svecenici(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	izlozba int not null
);

create table poslovi(
	sifra int not null primary key identity (1,1),
	vrstaposla varchar(50) not null,
	vrijeme datetime not null,
	
	);

	create table svecenici_poslovi (
		svecenici int not null primary key identity (1,1),
		poslovi int not null
	);

	create table nadredeni(
		sifra int not null primary key identity (1,1),
		ime varchar(50),
		prezime varchar(50)
	);

