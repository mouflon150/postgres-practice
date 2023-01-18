package task_2;

select full_name, birthday, model, price
from users
inner join cars c on c.car_id = users.property;
