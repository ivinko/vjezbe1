drop database if exists zadatak7;

create database zadatak7 default character set utf8;

use zadatak7;

create table vozilo(
sifra int not null primary key auto_increment,
marka varchar(20),
mjesta int,
vozac int
);

create table vozac(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20)
);

create table voznja(
vozac int,
putnik int
);

create table putnik(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
brojmobitela char(10)
);



alter table vozilo add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (putnik) references putnik(sifra);

insert into vozac(sifra, ime, prezime)values
(null,'vozac','jedan'),
(null,'vozac','dva');

insert into vozilo(sifra, marka, mjesta, vozac)values
(null,'nisan','3',1),
(null,'bmw', '4',2);

insert into putnik(sifra, ime, prezime, brojmobitela)values
(null,'prvi','putnik','098208304'),
(null,'drugi','putnik','098208704');

insert into voznja(vozac, putnik) values
(2,1),
(1,2);

select * from vozac; 
select * from vozilo;
select * from putnik;
select * from voznja;
