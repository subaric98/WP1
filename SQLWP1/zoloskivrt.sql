use master;
drop database if exists zoloskivrt;
go
create database zoloskivrt;
go
use zoloskivrt;

create table zivotinja(
	sifra int not null primary key identity(1,1),
	vrsta varchar(50) not null,
	ime varchar(50) not null,
	djelatnik int not null,
	prostorija int not null,
	datum int not null
);

create table djelatnik(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	iban varchar(50)
);

create table datum(
	sifra int not null primary key identity(1,1),
	d_rodenja datetime not null,
	d_dolaska datetime not null,
	d_smrti datetime not null
);

create table prostorija(
	sifra int not null primary key identity(1,1),
	dimenzije varchar(30) not null,
	maks_broj int not null,
	mjesto varchar(30) not null
);


alter table zivotinja add foreign key(djelatnik) references djelatnik(sifra);
alter table zivotinja add foreign key(prostorija) references prostorija(sifra);
alter table zivotinja add foreign key(datum) references datum(sifra);



select * from datum;
insert into datum(d_rodenja,d_dolaska,d_smrti)
values ('2013-04-21 08:00:00','2022-07-01 18:00:00','2023-07-06 11:00:00'),
	   ('2013-07-16 08:00:00','2022-07-01 18:00:00','2023-07-08 11:00:00'),
	   ('2021-04-16 08:00:00','2022-07-01 18:00:00','2023-08-07 11:00:00');

select * from djelatnik;
insert into djelatnik(ime,prezime,iban)
values ('Ana','Subaric','09812312312'),
		('Antonio','Subaric','09712312312'),
		('Ivana','Subaric','09912312312');

select * from zivotinja;
insert into zivotinja(vrsta,ime,djelatnik,prostorija,datum)
values ('Vrsta01','Ime01',3,2,1),
	   ('Vrsta02','Ime02',1,1,2),
	   ('Vrsta03','Ime03',2,3,3);

select * from prostorija;
insert into prostorija(dimenzije,maks_broj,mjesto)
values ('40x60x30',7,'Mjesto01'),
	   ('30x70x30',7,'Mjesto02'),
	   ('90x40x45',7,'Mjesto03');


select * from djelatnik;
update djelatnik set prezime='Cirabus'
where sifra=4;

update djelatnik set prezime='Horvat'
where sifra=3;



select * from prostorija

update prostorija set maks_broj='9'
where sifra=2;

update prostorija set dimenzije='47x47x47'
where sifra=1;

delete from datum where sifra=1;

delete from  djelatnik where sifra=1;

delete from zivotinja where sifra=1;

delete from prostorija where sifra=1;


-- PROBLEM SA DELETE NAREDBOM