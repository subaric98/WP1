use master;

drop database if exists WP_dm_er_diagram;

create database WP_dm_er_diagram;
use WP_dm_er_diagram;

create table komentar(
	sifra int not null primary key identity (1,1),
	vrijemekomentiranja datetime not null,
	opis varchar(50),
	objava int,
	osoba int
);

create table svidamise_komentar(
	sifra int not null primary key identity (1,1),
	osoba int,
	komentar int
);

create table objava(
	sifra int not null primary key identity (1,1),
	naslov varchar(50) not null,
	upis varchar(250) not null,
	vrijemeizrade datetime not null,
	ipadresa varchar(20),
	osoba int
);

create table osoba (
	sifra int not null primary key identity (1,1),
	ime varchar(25) not null,
	prezime varchar(25) not null,
	datumrodenja datetime,
	email varchar(50) not null,
	lozinka varchar(60) not null,
	brojtel int,
	slika varchar(100),
	administrator bit not null,
	stanje bit not null,
	aktivan bit not null,
	uniqueid varchar(255)
);

create table svidamise (
	sifra int not null primary key identity (1,1),
	vrijemesvidanja datetime not null,
	objava int,
	osoba int,
);



