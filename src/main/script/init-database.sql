create database if not exists produitdb;
use produitdb;

drop table if exists Produit;
drop table if exists Categorie;

create table Categorie(
	id integer primary key auto_increment ,
	label VARCHAR(64)
);

create table Produit(
	id integer primary key auto_increment ,
	label VARCHAR(64),
	prix double,
	cat integer,
	constraint categorie_valide foreign key (cat) references Categorie(id)
);

insert into Categorie(id,label)
            values   (1,'ordinateur'),
                     (2,'imprimante'),
                     (3,'disque dur');
                     
insert into Produit(id,label,prix,cat)
            values   (1,'ordinateur 1', 678.8 , 1 ),
                     (2,'imprimante 1', 234 , 2),
                     (3,'disque dur 1', 56.7 , 3),
                     (4,'ordinateur 2', 978.8 , 1 ),
                     (5,'imprimante 2', 134 , 2),
                     (6,'disque dur 2', 96.7 , 3),
                     (7,'ordinateur 3', 478.8 , 1 ),
                     (8,'imprimante 3', 334 , 2),
                     (9,'disque dur 3', 86.7 , 3);  

#show tables;

#describe Categorie;
select * from Categorie;

#describe Produit;
select * from Produit;