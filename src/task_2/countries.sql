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
('Kazakhstan', 2742989, 19644000, 5);