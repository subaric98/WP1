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


---DODATI ALTER

select * from skupina;
insert into skupina(brojdjece,soba,odgajateljica)
values ('11',1,2),
		('16',3,1),
		('14',2,3);


select * from odgajateljica;
insert into odgajateljica(ime,prezime)
values ('Korina','Horvat'),
		('Luka','Horvat'),
		('Marijana','Horvat');

select * from dijeca;
insert into dijeca(ime,prezime,skupina,dob)
values ('dijete01','dijeca01', 1, 5),
		('dijete02','dijeca02',2,4),
		('dijete03','dijeca03',3,3);
