use world; 
select c1.mydate as todaysdate,
       c1.population,
       c2.mydate as twodaysago,
       c2.population, 
       100 - (c2.population - c1.population)*100/c2.population as difference
from world.mycountry1 as c1, 
      (select mydate, population from world.mycountry1 where mydate = curdate() - interval 2 day ) as c2 
where c1.mydate = curdate() and 
      100 - (c2.population - c1.population)*100/c2.population < 70