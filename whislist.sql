use toko;

create table whislist (
    id INT AUTO_INCREMENT,
    customer_id VARCHAR(100),
    produt_id VARCHAR(100),
    PRIMARY KEY(id)
)engine = innodb;

desc whislist;

alter table whislist
add constraint fk_whislist_customer
Foreign Key (customer_id) REFERENCES users (username);

alter table whislist
RENAME COLUMN decription to description;

alter table whislist
add constraint fk_whislist_product
Foreign Key (product_id) REFERENCES product(id);

insert into whislist(product_id, customer_id)
VALUES('P001', 'Chairul');

SELECT * FROM whislist;

alter table whislist
add decription VARCHAR(100) NULL;

update whislist
set description = 'Makanan kesukaan'
WHERE id = 1 ;