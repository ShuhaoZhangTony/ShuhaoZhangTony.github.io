-- Solution 1
-- The ALL operator returns true if all of the subquery values meet the condition.

SELECT 
    stuid
FROM
    Presenters
GROUP BY stuid
HAVING COUNT(*) >= ALL (SELECT  
        COUNT(*)
    FROM
        Presenters
    GROUP BY stuid)
;

-- Solution 2
CREATE VIEW numPres AS
    (SELECT 
        stuid, COUNT(*) AS num_P
    FROM
        presenters
    GROUP BY stuid);

SELECT 
    stuid
FROM
    numPres
WHERE
    num_P = (SELECT 
            MAX(num_P)
        FROM
            numPres);

