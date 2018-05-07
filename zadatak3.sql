drop database if exists zadatak3;

create database zadatak3 default character set utf8;

use zadatak3;

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
udruga varchar(20)
);

create table zivotinja(
osoba int not null,
sticenik int not null
);

create table sticenik(
sifra int not null primary key auto_increment,
prostor varchar(20),
ime varchar(20)
);

alter table zivotinja add foreign key (osoba) references osoba(sifra);
alter table zivotinja add foreign key (sticenik) references sticenik(sifra);

insert into osoba(sifra, ime, prezime, udruga) values
(null, 'ime', 'prezime', 'udruga'),
(null, 'ime1', 'prezime1', 'udruga');

insert into sticenik(sifra, prostor, ime) values
(null, 'd2','laki'),
(null, 'd3', 'lin');

insert into zivotinja(osoba, sticenik) values
(1,2),
(2,2);

select * from osoba;
select * from sticenik;
select * from zivotinja;
