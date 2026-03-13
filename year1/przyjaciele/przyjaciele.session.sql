select imie
from przyjaciele;

select upper(imie)
from przyjaciele;

select left(imie,1)
as PierwszaLitera 
from przyjaciele;

select concat(left(imie,1),right(imie,1))
from przyjaciele;

select imie
from przyjaciele 
where zarobki < 2000;

select *
from przyjaciele 
order by zarobki;

select imie
from przyjaciele 
where imie like "%a";

select imie
from przyjaciele 
where imie not like "%a" 
and zarobki < 2000;

select min(zarobki),max(zarobki),avg(zarobki)
from przyjaciele;

select avg(zarobki),
case plec
    when 0 then 'kobiety'
    when 1 then 'mezczyzni'
end
from przyjaciele 
group by plec;