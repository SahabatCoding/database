use toko;

create table users
(
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    token VARCHAR(100),
    PRIMARY KEY(username)
)engine = InnoDb;

show tables;

describe users;