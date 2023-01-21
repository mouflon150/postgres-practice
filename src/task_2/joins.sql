select *
from countries
inner join presidents p
on p.id = countries.president_id;

select *
from countries
left join presidents p
on p.id = countries.president_id;

select *
from countries
right join presidents p
on p.id = countries.president_id;