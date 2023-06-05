create table if not exists country (
    id   bigint primary key unique auto_increment,
    name varchar(120) unique not null
);

create table if not exists region (
    id         bigint primary key unique auto_increment,
    name       varchar(180) not null,
    id_country bigint       not null,
    foreign key (id_country) references country (id)
);

create table if not exists district (
    id        bigint primary key unique auto_increment,
    name      varchar(180) not null,
    id_region bigint       not null,
    foreign key (id_region) references region (id)
);

create table if not exists city (
    id          bigint primary key unique auto_increment,
    name        varchar(180) not null,
    id_region   bigint       not null,
    id_district bigint       not null,
    foreign key (id_region) references region (id),
    foreign key (id_district) references district (id)
);
