create table countries
(
  id serial primary key,
  country_name varchar,
  area bigint,
  population bigint,
  president_id integer references presidents(id)
);

insert into countries(country_name, area, population, president_id)
values
('Kyrgyzstan', 199000, 7500000, 1),
('Russia', 17098246, 145000000, 2),
('Ukraine', 603549, 41000000, 3),
('USA', 9865439, 301650000, 4),
('Kazakhstan', 2742989, 19644000, 5),
(null, null, null, 6),
(null, null, null, 7),
('Germany', 357578, 84100000, 8),
('France', 643801, 67897000, 9);

truncate table countries;
drop table countries;