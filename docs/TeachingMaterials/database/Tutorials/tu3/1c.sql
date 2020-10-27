-- step 1: this query make no sense if there are less than 3 weeks of tutorials.
SELECT 
    MAX(week)
FROM
    Presenters; 
 
SELECT 
    S.stuid
FROM
    Students S
WHERE
    (SELECT 
            MAX(week)
        FROM
            Presenters) >= 3;
            
-- step 2: the last and second last week cannot be the start point of consecutive three weeks.
DROP VIEW IF exists Weeks;
CREATE VIEW Weeks AS
    SELECT DISTINCT
        week
    FROM
        Presenters
    WHERE
        week + 2 <= (SELECT 
                MAX(week)
            FROM
                Presenters);

-- get all possible combinations of consequtive three weeks
SELECT 
    W2.week
FROM
    Weeks W2,
    Weeks W
WHERE
    W2.week >= W.week
        AND W2.week <= W.week + 2;
 
-- step 3
-- The EXISTS operator returns true if the subquery returns one or more records.
SELECT 
    S.stuid
FROM
    Students S
WHERE
    (SELECT 
            MAX(week)
        FROM
            Presenters) >= 3	
        AND EXISTS( SELECT 
            *
        FROM
            Weeks W
        WHERE
            NOT EXISTS( SELECT 
                    W2.week
                FROM
                    Weeks W2
                WHERE
                    W2.week >= W.week
                        AND W2.week <= W.week + 2
                        AND W2.week IN (SELECT 
                            P.week
                        FROM
                            Presenters P
                        WHERE
                            P.stuid = S.stuid)))
;