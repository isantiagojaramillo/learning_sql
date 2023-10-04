-- CREATING THE DATABASE
create database holamundo;

-- SPECIFYING WHICH DATABASE HAS TO USE
use holamundo;

-- SHOW ALL THE DATABASES WE HAVE
show databases;

-- CREATING THE TABLE
create table animales(
	id int auto_increment,
    tipo varchar(255),
    estado varchar(255),
    primary key (id)
);

-- INSERTING DATA INTO TABLE ANIMALES
insert into animales (tipo, estado) values ("chanchito", "feliz");

-- TO MODIFY THE COLUMN OF THE TABLE ONCE IS CREATED
-- ALTER TABLE animales MODIFY COLUMN id INT AUTO_INCREMENT;

-- SHOWS THE COMMAND THAT CREATED THE TABLE ANIMALES
-- show create table animales;

insert into animales (tipo, estado) values ("dragon", "feliz");
insert into animales (tipo, estado) values ("felipe", "feliz");

-- THIS COMMAND SHOWS ALL THE DATA FROM TABLE ANIMALES 
select * from animales;

-- MODIFYING THE COLUMNS TO BE NOT NULL
ALTER TABLE animales MODIFY COLUMN id INT AUTO_INCREMENT NOT NULL;
ALTER TABLE animales MODIFY COLUMN tipo VARCHAR(255) NOT NULL;
ALTER TABLE animales MODIFY COLUMN estado VARCHAR(255) NOT NULL;

select * from animales;

-- THIS COMMAND SHOWS AN SPECIFIED DATA FROM THE TABLE ANIMALES
select * from animales WHERE id = 1;

-- THIS COMMAND SHOWS ONLY THE DATA THAT FULLFILL THE REQUIREMENTS SPECIFIED
select * from animales WHERE estado = 'feliz';

-- THIS COMMAND UPDATES THE VALUE OF A SINGLE COLUMN IN THE TABLE
update animales set estado = 'triste' where id = 3;

select * from animales;

select * from animales WHERE estado = 'feliz';

-- THIS COMMAND IS USING THE OPERATOR AND TO SPICIFY ANOTHER CONDITION TO SHOW THE DATA FROM TABLE ANIMALES
select * from animales WHERE estado = 'feliz' AND tipo = 'chanchito';

-- IN THIS CASE IT WILL RETURN NOTHING BECAUSE THE CONDITION IS FALSE DUE TO THERE IS NOT DATA THAT FULFILL THE CONDITIONAL 
select * from animales WHERE estado = 'feliz' AND tipo = 'felipe';

update animales set estado = 'feliz' where id = 3;

select * from animales;

-- THIS COMMAND DELETES THE SPECIFIED ID FROM TABLE ANIMALES
delete from animales where id = 3;

select * from animales;

-- THIS WILL SEND A ERROR 1175 DUE TO WE HAVE TO SPECIFY THE ID NUMBER IN ORDER TO DELETE A DATA
UPDATE animales SET estado = 'triste' where tipo = 'dragon';








