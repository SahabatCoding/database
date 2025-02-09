use toko;

create table catagories(
    id INT AUTO_INCREMENT,
    description TEXT,
    PRIMARY KEY(id)
)engine = innodb;

describe catagories;

alter table catagories
MODIFY COLUMN id VARCHAR(100);

insert into catagories(id, description)
VALUES ('C001', 'Makanan'),
('C002', 'Minman');

SELECT * from catagories;

alter table catagories
DROP COLUMN catagory_id;
