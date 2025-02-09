use toko;

create table address
(
    street      varchar(100),
    city        varchar(100),
    province    varchar(100),
    country     varchar(100) not null,
    postal_code varchar(100) not null,
) engine = innodb;

desc address;

alter Table address
add id int AUTO_INCREMENT PRIMARY KEY first;

alter table address
add constraint fk_address_contact
Foreign Key (contact_id) REFERENCES contact(id);


insert into address(street, city, province, postal_code, contact_id)
VALUES('jln H Naim', 'Tangerang', 'Banten', '1513', 1);

SELECT * FROM address;

select * from address
JOIN contact ON contact.id = address.contact_id;