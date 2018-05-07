drop database if exists zadatak1;

create database zadatak1 default character set utf8;

use zadatak1;

create table djelatnica(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
salon varchar(20)
);

create table posjet(
djelatnica int,
korisnik int,
usluga int
);

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20)
);

create table usluga(
sifra int not null primary key auto_increment,
cijena decimal(6,2),
tip varchar(20)
);

alter table posjet add foreign key (djelatnica) references djelatnica(sifra);
alter table posjet add foreign key (korisnik) references korisnik(sifra);
alter table posjet add foreign key (usluga) references usluga(sifra);

insert into djelatnica (sifra, ime, prezime, salon) values
(null,'ime','prezime','salon'),
(null,'ime','prezime','salon');

insert into korisnik (sifra, ime, prezime) values
(null,'ime','prezime'),
(null,'ime','prezime');

insert into usluga (sifra, cijena, tip) values
(null,50,'tip'),
(null,700,'tip');

insert into posjet (djelatnica,korisnik, usluga) values
(1,1,1),
(2,2,2);



select * from djelatnica;
select * from posjet;
select * from korisnik;
select * from usluga;
