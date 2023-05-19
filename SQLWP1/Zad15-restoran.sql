use master

drop database if exists restoran;

create database restoran;
use restoran;

create table jelovnik (
	sifra int not null primary key identity (1,1),
	kategorija int not null,
	vrsta varchar(50)
);

create table kategorija(
	sifra int not null primary key identity (1,1),
	vrsta varchar(50),
	naziv varchar(50)
);

create table jela (
	sifra int not null primary key identity (1,1),
	kategorija int not null,
	vrsta varchar(50)
);

create table pica(
	sifra int not null primary key identity (1,1),
	vrsta varchar(50)
);

create table jela_pica(
	jela int not null primary key identity (1,1),
	pica int not null
);