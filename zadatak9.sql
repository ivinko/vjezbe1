drop database if exists zadatak9;

create database zadatak9 default character set utf8;

use zadatak9;

create table satovi(
sifra int not null primary key auto_increment,
naziv varchar(20) not null,
korisnik int not null
);

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
brojmobitela char(10) not null
);

create table popravaksata(
popravak int not null,
satovi int not null
);

create table popravak(
sifra int not null primary key auto_increment,
vrsta varchar(20) not null,
trajanje int not null,
cijena decimal(18,2),
segrt int not null
);

create table segrt(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
brojmobitela char(10) not null 
);



alter table satovi add foreign key (korisnik) references korisnik(sifra);
alter table popravaksata add foreign key (popravak) references popravak(sifra);
alter table popravaksata add foreign key (satovi) references satovi(sifra);
alter table popravak add foreign key (segrt) references segrt(sifra);

insert into segrt(sifra, ime, prezime, brojmobitela)values
(null,'ivo','segrt','0995489832'),
(null,'miro','segrt','0995314832');

insert into popravak(sifra, vrsta, trajanje, cijena, segrt) values
(null,'vrsta1','20',999.32,2),
(null,'vrsta2','40',99.32,1);

insert into korisnik(sifra, ime, prezime, brojmobitela)values
(null,'sat','popravi','0993332232'),
(null,'popravi','sat','0993332232');

insert into satovi(sifra, naziv, korisnik) values
(null,'casio',2),
(null,'isto',1);

insert into popravaksata(popravak, satovi) values
(2,1),
(1,2);

select * from segrt;
select * from popravak;
select * from korisnik;
select * from satovi;
select * from popravaksata;