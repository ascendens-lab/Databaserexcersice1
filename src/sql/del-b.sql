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

