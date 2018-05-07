drop database if exists zadatak4;

create database zadatak4 default character set utf8;

use zadatak4;

create table skupina(
sifra int not null primary key auto_increment,
naziv varchar(20),
odgajatelj int
);

create table odgajatelj(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
strucnasprema varchar(20)
);

create table dijete(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
skupina int);

alter table skupina add foreign key (odgajatelj) references odgajatelj(sifra);
alter table dijete add foreign key (skupina) references skupina(sifra);

insert into odgajatelj(sifra, ime, prezime, strucnasprema)values
(null,'marko','maric','spreman'),
(null,'pero','peric','uvijek');

insert into skupina(sifra, naziv, odgajatelj) values
(null,'2a',1),
(null, 'aa',2);

insert into dijete(sifra, ime, prezime, skupina)values
(null,'darko','darkic',1),
(null,'sunce','zarko',2);

select * from odgajatelj;
select * from skupina;
select * from dijete;