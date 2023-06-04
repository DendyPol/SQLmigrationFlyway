create table if not exists country
(
    id   int primary key unique auto_increment,
    name varchar(30) unique not null
);

create table if not exists region
(
    id         int primary key unique auto_increment,
    name       varchar(30) not null,
    id_country int         not null,
    foreign key (id_country) references country (id)
);

create table if not exists city
(
    id        int primary key unique auto_increment,
    name      varchar(30) not null,
    id_region int         not null,
    foreign key (id_region) references region (id)
);