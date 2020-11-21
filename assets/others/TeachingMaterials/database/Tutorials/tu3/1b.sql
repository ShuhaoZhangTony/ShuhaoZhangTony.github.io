-- Step 1: Join to form a pair.
SELECT 
    p1.stuid AS stuid1, p2.stuid AS stuid2
FROM
    Presenters p1
        JOIN
    Presenters p2
;

-- Step 2: Filter by evaluation conditions
SELECT 
    p1.stuid AS stuid1, p2.stuid AS stuid2
FROM
    Presenters p1
        JOIN
    Presenters p2 ON p1.stuid < p2.stuid
        AND p1.week = p2.week
ORDER BY stuid1 , stuid2
;
 
-- Step 3: at least five different weeks
SELECT 
    p1.stuid AS stuid1, p2.stuid AS stuid2
FROM
    Presenters p1
        JOIN
    Presenters p2 ON p1.stuid < p2.stuid
        AND p1.week = p2.week
GROUP BY p1.stuid , p2.stuid
HAVING COUNT(*) > 5
;