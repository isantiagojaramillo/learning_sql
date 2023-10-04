use holamundo;

create table user (
	id int auto_increment not null,
    name varchar(50) not null,
    edad int not null, 
    email varchar (100) not null,
    primary key (id)
);

insert into user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
insert into user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
insert into user (name, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
insert into user (name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

select * from user;

-- THIS COMMAND WILL GET ONLY THE FIRST DATA IT FINDS FROM TABLE USER
select * from user limit 1;

-- THIS COMMAND WILL GET ONLY THE DATA THAT FULFILL THE CONDITIONAL
select * from user where edad > 15;
select * from user where edad >= 15;
select * from user where edad > 20 and email = 'nico@gmail.com';
select * from user where edad > 20 or email = 'layla@gmail.com';
select * from user where email != 'layla@gmail.com';
select * from user where edad between 15 and 30;

-- THE PERCENTAGE SYMBOL MEANS THAT IT DOES NOT MATTER WHAT IT COMES BEFORE OR AFTER GMAIL
select * from user where email like '%gmail%';

-- IN THIS CASE WE ONLY SPECIFIED THAT IT DOES NOT MATTER WHAT IT COMES BEFORE GMAIL, BUT NOTHING ELSE CAN COME AFTER GMAIL
select * from user where email like '%gmail';

-- THIS COMMAND WILL ONLY GET THE DATA FROM THE GMAIL THAT STARTS WITH OSCAR
select * from user where email like 'oscar%';

-- THIS COMMAND WILL ORDER AND BRING THE DATA IN ASCENDANT ORDER BY EDAD
select * from user order by edad asc;

-- THIS COMMAND WILL ORDER AND BRING THE DATA IN DESCENDING ORDER BY EDAD
select * from user order by edad desc;

-- THIS COMMAND WILL BRING THE OLDER AGE FROM TABLE USER
select max(edad) as older from user;

-- THIS COMMAND WILL BRING THE YOUNGER AGE FROM TABLE USER
select min(edad) as younger from user;

-- THIS COMMAND WILL ONLY BRING THE DATA FROM THE SPECIFIED COLUMNS
select id, name from user;

-- THIS COMMAND WILL CHANGE THE NAME OF THE COLUMN FOR NOMBRE;
select id, name as nombre from user;






