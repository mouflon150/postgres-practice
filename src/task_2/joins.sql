select * from countries
inner join presidents p
on p.id = countries.president_id;