select _cities.title 'city', _regions.title 'region', _countries.title 'country'
from _cities
       left join _regions on _cities.region_id = _regions.id
       left join _countries on _cities.country_id = _countries.id;

select _cities.title as city, _regions.title as region
from _cities
       left join _regions on _cities.region_id = _regions.id
where _regions.title like '%Москов%'
order by city;
