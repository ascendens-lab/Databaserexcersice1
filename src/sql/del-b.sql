-- 4.
select spacecraft, launch_date, outcome
FROM account, moon_mission;

-- 5.
select outcome, mission_id
from moon_mission

where outcome !='Successful';

-- 6.

select launch_date, mission_type
from moon_mission

where launch_date <  '1960-01-01'

order by launch_date;
-- 7.

select spacecraft, mission_id
from  moon_mission
where spacecraft like 'luna%'
order by spacecraft ;

-- Jag får 5 rader vilket, jag förväntar mig.

-- 8.

select spacecraft, launch_date
from moon_mission
order by  launch_date desc limit 3;

-- 9.

select *
from account
where last_name ='Åström'
   or last_name ='Fransson'
order by first_name;

-- 10

select *
from moon_mission

where  operator = 'NASA';

-- NASA förekommer inte som ett ord i kolumnen utan bara med mellanslag mellan bokstäverna,
-- så sql ser det inte som ett ord.

-- 11.

select *

from moon_mission

where mission_type = 'Impactor'

-- Det blir en träff men det borde bli två.
-- Orsaken till det är mellanslaget som ligger före Impactor i tabellen mission_type för uppdrag 2.

-- 12 a.

insert into moon_mission (spacecraft,launch_date, carrier_rocket, operator, mission_type, outcome)
values ('Java', '1995-05-23', 'SQL', 'S ASA',
        'Flyby', 'Partial Failure' );

select *
from moon_mission
where spacecraft = 'Java';

-- Mission_id är 19.

-- 12 b.

update moon_mission
set outcome = 'Successful'
where mission_id = 19;

-- 12 c.

delete from moon_mission
where mission_id = '19';

-- 13

update moon_mission
set outcome ='Succesful'
where mission_id =  '12';

-- 14

delete from moon_mission
where launch_date > '2009-12-31';

-- 15

-- SQL: Har länge haft en relationsmodell för säkra dataöverföringar, där överföringen inte
-- avbryts förrän det är verifierat att allt är sparat.

-- 16

-- NoSQL: För att man kan hantera många interaktioner på kort tid och kan lagra sessioner tidsbestämt.

-- 17

-- NoSQL: Med många olika attribut så blir det många tabeller eller tabeller med många kolumner,
-- varav en del kommer vara tomma, för att hantera det med SQL. Med MySQL så kan varje produkt
-- ha sin egen struktur för sin data.

-- 18

-- Jag har använt AI för att förtydliga någon fråga, men inte till själva koden.
-- Så jag har inget exempel på hur det skiljer sig mellan prompten och SQL-filen.
-- Men när jac skulle börja fick inget svar på den här koden, "SELECT *FROM account;"
-- ,så då frågade jag vad det berodde på.  Jag fick då förslaget att skriva
-- "SELECT DATABASE();" och när det blev NULL så blev det tydligt att ingen databas var vald.
-- "USE laboration1;" som blev föreslaget som lösning fungerade. 😊

-- 19

-- För att lösenordet sparas som läsbar text i tabellen vilket gör det lätt att komma åt.
-- Kommer man över tabellen har man tillgång till användarid och lösenordet. Lösenordet
-- ska sparas säkert på något sätt, som till exempel genom att man använder en envägs
-- hashalgoritm.
