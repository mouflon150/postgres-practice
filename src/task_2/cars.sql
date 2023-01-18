package task_2;

create table cars
(
    car_id     serial primary key,
    car_brand  varchar(100) not null,
    model      varchar(100) not null,
    car_number varchar(50)  not null,
    price      numeric      not null
);

insert into cars(car_brand, model, car_number, price)
values
('Toyota', 'Land Cruiser Prado', '177', 17000),
('Daewoo', 'Matiz', '128', 2000);