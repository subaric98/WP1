use master
go

--create database udrugazazastituzivotinja

use udrugazazastituzivotinja
go

create table osobe(
	sifra int,
	ime varchar(50),
	prezime varchar(50),

);

create table sticenici(
	sifra int,
	ime varchar(50),
	prezime varchar(50),
	prostor int,
	osobe int,
);

create table prostor(
	sifra int,
	sticenik int,
	oznakaprostora int,
);