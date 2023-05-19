use master

drop database if exists vrtic;

create database vrtic;
use vrtic;

create table skupina(
	sifra int not null primary key identity (1,1),
	brojdjece int not null,
	soba int not null,
	odgajateljica int not null,
);

create table odgajateljica(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50)not null
);

create table dijeca (
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	skupina int not null,
	dob int,
);
