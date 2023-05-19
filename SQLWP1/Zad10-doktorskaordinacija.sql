use master
go

--op database if exists doktorskaordinacija;

create database doktorskaordinacija;
use doktorskaordinacija;

create table doktor(
	sifra int not null primary key identity (1,1),
	ime varchar(50),
	prezime varchar(50)

);

create table pacijenti(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50),
);

create table medicinskesestre(
	sifra int not null primary key identity (1,1),
	ime varchar(50)
	prezime varchar(50)
);

create table medicinskesestre_pacijenti(
	medicinskesestre int not null primary key identity (1,1),
	pacijenti int not null
);