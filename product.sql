use toko;

create table product (
    id VARCHAR(100),
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL,
    creat_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
)engine = innodb;

DESC product;

insert into product(id, name, description, price, quantity)
VALUES ('P001', 'Mie Ayam', 'Mie ayam asal bandung', '12000','100');

select * from product;

insert into product(id, name, description, price, quantity)
VALUES ('P002', 'Mie Ayam Bakso', 'Mie ayam bakso asal bandung', '15000','90'),
('P003', 'Bakso Urat', 'Bakso Urat asal bandung', '12000','150'),
('P004', 'Bakso Telur', 'Bakso Telur asal bandung', '16000','80'),
('P005', 'Bakso Biasa', 'Bakso biasa asal bandung', '15000','90');

update product
set price = 10000
WHERE id = 'P005';

insert into product(id, name, description, price, quantity)
VALUES ('P006', 'Es Teh Manis', 'Es teh manis paling manis', '5000','200'),
('P007', 'Es Teh Tawar', 'Es teh tawar paling tawar', '3000','150'),
('P008', 'Es Jeruk', 'Es Jeruk Asem', '7000','110'),
('P009', 'Jus Alpukat', 'Bikin kenyang', '8000','120'),
('P010', 'Jus Mangga', 'Asem & Manis', '8000','90');

