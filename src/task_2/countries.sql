create table countries
(
    id           serial primary key,
    country_name varchar,
    area         bigint,
    population   bigint,
    president_id serial references presidents (president_id)
);

insert into countries(country_name, area, population)
values
('Kyrgyzstan', 199000, 7500000),
('Russia', 17098246, 145000000),
('Ukraine', 603549, 41000000),
('USA', 9865439, 301650000),
('Kazakhstan', 2742989, 19644000),
(null, null, null),
(null, null, null),
('Germany', 357578, 84100000),
('France', 643801, 67897000),
(null, null, null);

truncate table countries;
drop table countries;
