select *
from countries
full join presidents using (president_id);

select *
from countries
left join presidents using (president_id);

select *
from presidents
right join countries using (president_id);