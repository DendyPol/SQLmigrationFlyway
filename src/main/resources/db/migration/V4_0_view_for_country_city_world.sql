create or replace view data_for_city as
select _cities.title city, _regions.title region, _countries.title country
from _cities
       left join _regions on _cities.region_id = _regions.id
       left join _countries on _cities.country_id = _countries.id
order by city;

create or replace view city_moscow_region as
select _cities.title city, _regions.title region
from _cities
       left join _regions on _cities.region_id = _regions.id
where _regions.title like '%Москов%'
order by city;
