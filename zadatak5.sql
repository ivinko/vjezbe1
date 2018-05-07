drop database if exists zadatak5;

create database zadatak5 default character set utf8;

use zadatak5;

create table izlozba(
sifra int not null primary key auto_increment,
naziv varchar(20),
sponzor varchar(20),
kustos int
);

create table izlozbadjelo(
izlozba int,
djelo int
);

create table djelo(
sifra int not null primary key auto_increment,
ime varchar(20),
razdoblje varchar(20)
);

create table kustos(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20)
);



alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozbadjelo add foreign key (izlozba) references izlozba(sifra);
alter table izlozbadjelo add foreign key (djelo) references djelo(sifra);

insert into kustos(sifra, ime, prezime)values
(null,'zak','burek'),
(null,'jakov','jak');

insert into djelo(sifra, ime, razdoblje)values
(null,'monalisa','renesansa'),
(null,'lisamona','barok');

insert into izlozba(sifra, naziv, sponzor, kustos)values
(null,'naziv1','agrokor',1),
(null,'naziv2','dinamo',2);

insert into izlozbadjelo(izlozba, djelo)values
(1,2),
(2,1);

select * from kustos;
select * from djelo;
select * from izlozba;
select * from izlozbadjelo;