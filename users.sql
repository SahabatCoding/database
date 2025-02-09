-- Active: 1703338753241@@127.0.0.1@3306@toko
use toko;

create table users (
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    token VARCHAR(100),
    PRIMARY KEY (username)
) engine = InnoDb;

show tables;

describe users;

insert into users (username, password) VALUES ('chairul', 'Rahasia');

select * from users;

UPDATE users
SET username = 'Chairul'
WHERE password = "Rahasia";