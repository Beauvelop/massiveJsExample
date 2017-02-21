select incidents.id,
incidents.us_state as incidents_us_state,
injuries.name as injuries_name,
affected_areas.name as affected_areas_name,
causes.name as causes_name
from incidents
join injuries on incidents.injury_id = injuries.id
join affected_areas on injuries.affected_area_id = affected_areas.id
join causes on causes.id = incidents.cause_id
where causes.name = $2
and incidents.us_state = $1


-- for inserting into
-- returning *;



-- Now that you have a repository for SQL queries, add a query to your new file that shows you retrieves the following pieces of information for every incident in your database:
--
-- incidents.id
-- incidents.us_state
-- injuries.name
-- affected_areas.name
-- causes.name
