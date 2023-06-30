select _cities.title 'city', _regions.title 'region', _countries.title 'country'
from _cities
       left join _regions on _regions.id = _cities.region_id
       left join _countries on _countries.id = _cities.country_id;

select _cities.title as city, _regions.title as region
from _cities
       left join _regions on _regions.id = _cities.region_id
where _regions.title like '%Москов%'
order by city;