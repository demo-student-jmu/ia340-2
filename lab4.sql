--Q4.1 
/* no, because we still have VA records in other tables */

--Q4.2
/*no, because no state has  fips of 80*/

--Q4.3
/* it works, but can be improved */ 

--4.5
/* yes, great job*/ 

--4.6
SELECT n.name, i.income, i.year
FROM income i
JOIN name n ON i.fips = n.fips
WHERE i.year = (
    -- Get the most recent year
    SELECT MAX(year) 
    FROM income
)
ORDER BY i.income DESC
LIMIT 1;
/* yes, it works */


--4.6

/* it doens't work */
