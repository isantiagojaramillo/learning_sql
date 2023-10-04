use holamundo;

create table products(
	id int not null auto_increment,
    name varchar (55) not null,
    created_by int not null,  -- THIS COLUMN REFERENCES TO THE TABLE USER
    marca varchar(55) not null,
    primary key (id),
    foreign key (created_by) references user(id)  -- INDICATING THAT THE COLUMN CREATED_BY WILL BE OUR FOREIGN KEY REFERENCING TO USER TABLE
);

-- THIS COMMAND WILL CHANGE THE NAME OF THE TABLES
rename table products to product;

-- THIS COMMAND IS ANOTHER WAY TO INSERT DATA INTO THE TABLES
insert into product (name, created_by, marca)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    
select * from product;    

-- FIRST, IN THIS COMMAND WE GIVE AN ALIAS TO USER TABLE REPRESENTED BY U, THEN WE TELL THE PROGRAM TO BRING THE ID AND THE EMAIL FROM TABLE USER
select u.id, u.email from user u;


-- IN THIS EXAMPLE WHEN WE MAKE THE LEFT JOIN IS TO INDICATE OUR QUERY TO JOIN THE COLUMN CREATED_BY IN THE TABLE PRODUCT TO THE COLUMN ID IN THE TABLE USER
-- IN THIS COMMAND WE GIVE AN ALIAS TO THE TABLE PRODUCT REPRESENTED BY P, THEN WE TELL THE SELECT TO BRING ALSO THE NAME OF THE PRODUCT
select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;

-- IN THIS CASE THE WE ARE USING A RIGHT JOIN WHICH MEANS WE ARE GETTING THE DATE FROM THE TABLE PRODUCT INSTEAD FROM TABLE USER
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;

-- INNER JOIN
select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by;

-- CROSS JOIN
select u.id, u.name, p.id, p.name from user u cross join product p;

-- GROUP BY
select count(id), marca from product group by marca;

select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

-- HAVING
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by having count(p.id) >= 2;







