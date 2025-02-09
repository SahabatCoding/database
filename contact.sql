use toko;

show tables;

create table contact(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(100) NOT NULL,
    constraint email_unique UNIQUE KEY(email),
    PRIMARY KEY(id)
)engine = innodb;

describe contact;

alter Table contact
add username VARCHAR(100);

ALTER Table contact
ADD constraint fk_contact_users
Foreign Key (username) REFERENCES users(username);

ALTER Table contact
ADD constraint unique_username UNIQUE KEY (username);

insert into contact(first_name, last_name, email, phone,username)
VALUES ('Muhammad', 'Yusuf', 'chairul@gmail.com', '0896766722', 'Chairul');

SELECT * FROM contact;