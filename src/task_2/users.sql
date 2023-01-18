package task_2;

create table users
(
  user_id serial primary key,
  full_name varchar(100) not null,
  gender character check ( gender = 'm' or gender = 'f'),
  birthday date not null,
  property integer references cars(car_id)
);

insert into users(full_name, gender, birthday, property)
values
('Temirbaev Marlen', 'm', '2005-04-27', 1),
('Burkanov Timur', 'm', '2006-04-27', 2);