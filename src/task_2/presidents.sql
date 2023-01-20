create table presidents
(
    id        serial primary key,
    full_name varchar,
    age       smallint,
    gender    character check ( gender = 'm' or gender = 'f' ),
    email     varchar unique check ( email like '%@%')
);

insert into presidents(full_name, age, gender, email)
values
('Sadyr Japarov Nurgojoevich', 47, 'm', 'kgwhitehouse@gmail.com'),
('Vladimir Vladimirovich Putin', 100, 'm', 'ruwhitehouse@gmail.com'),
('Vladimir Greenovich', 35, 'm', 'ukwhitehouse@gmail.com'),
('Jo Baiden', 88, 'm', 'usawhitehouse@gmail.com'),
('Nursultan Nazarbaevich', 60, 'm', 'kzwhitehouse@gmail.com');