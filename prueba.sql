#crear una base de dato
create database colegio;
#ver las bases de datos
show databases;
#usar el base de dato colegio
use colegio;
#crear una tabla
create table Director(
rut varchar(150) not null,
edad int ,
nombre char(120),
correo varchar (120),
#definimos nuesta primary key
PRIMARY KEY (rut)
);
create table Profesor(
rut varchar(150) not null,
ubicacion varchar (120),
nombre char(120),
correo varchar (120),
trabaja_para varchar (120) not null,
#definimos nuesta primary key
#junto con la foreing key
PRIMARY KEY (rut),
foreign key(trabaja_para) references Director(rut)
);
create table Alumno(
rut varchar(150) not null,
edad int ,
nombre char(120),
correo varchar (120),
estudia_con varchar (120) not null,
#definimos nuesta primary key
#junto con la foreing key
PRIMARY KEY (rut),
foreign key(estudia_con) references profesor(rut)
);
show tables;
insert into Director (rut,edad, nombre,correo)
 values ("20.45-1","56","martinez","martinez86@gmail.com"),
("21.67-k","32","brian","papibrain73@gmail.com"),
("20.99-1","45","jefferson","soydetodas6@gmailcom"),
("12.88-9","29","israel","megustatumama69@gmail.com");
insert into profesor (rut,ubicacion,nombre,correo)
 values ("12.45-9","santa maria 69","kamila","kamibbta62@gmail.com"),
("12.87-k","el boro","sebastian","sebitatata1@gmail.com"),
("13.34-4","la pampa","danae","dancita7@gmail.com"),
("14.67-7","tomas el boro","juan","donchuchoo94@gmail.com"),
("20.95-k","las americas","francis","elmascapito@gmail.com");
insert into Alumno (rut,edad, nombre,correo)
 values ("20.78-k","16","jose","josecito@gmail.com"),
("21.76-6","12","maria","maritita69@gmail.com"),
("20.77-4","17","marco","mecortolasvenas@gmail.com"),
("100.34-k","18","israel","huevos2@gmail.com"),
("20.45-3","17","jeferson","mamitaa@gmail.com");
