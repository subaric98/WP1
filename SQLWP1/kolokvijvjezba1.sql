--use master;

--drop database if exists kolokvijvjezba1;

create database kolokvijvjezba1;

use kolokvijvjezba1;
go

create table mladic (
	sifra int not null primary key identity(1,1),
	suknja varchar(50) not null,
	kuna decimal (16,8) not null,
	drugiputa datetime,
	asocijalno bit,
	ekstroventno bit not null,
	dukserica varchar(50) not null,
	muskarac int
);

create table muskarac (
	sifra int not null primary key identity (1,1),
	bojaociju varchar(50) not null,
	hlace varchar(30),
	modelnaocala varchar(43),
	maraka decimal(14,5) not null,
	zena int not null
);

create table zena (
	sifra int not null primary key identity (1,1),
	treciputa datetime,
	hlace varchar(46),
	kratkamajica varchar(31) not null,
	jmbag char(11) not null,
	bojaociju varchar(39) not null,
	haljina varchar(44),
	sestra int not null
);

create table sestra (
	sifra int not null primary key identity(1,1),
	introvertno bit,
	haljina varchar(31) not null,
	maraka decimal(16,6),
	hlace varchar(46) not null,
	narukvica int not null
);

create table sestra_svekar (
	sifra int not null primary key identity (1,1),
	sestra int not null,
	svekar int not null
);

create table svekar (
	sifra int not null primary key identity (1,1),
	bojaociju varchar(40) not null,
	prstena int,
	dukserica varchar(41),
	lipa decimal (13,8),
	eura decimal (12,7),
	majica varchar(35)
);


create table punac (
	sifra int not null primary key identity (1,1),
	ogrlica int,
	gustoca decimal(14,9),
	hlace varchar(41) not null
);

create table cura (
	sifra int not null primary key identity (1,1),
	novcica decimal(16,5) not null,
	gustoca decimal(18,6)not null,
	lipa decimal (13,10),
	ogrlica int not null,
	bojakose varchar(38),
	suknja varchar(36),
	punac int

);