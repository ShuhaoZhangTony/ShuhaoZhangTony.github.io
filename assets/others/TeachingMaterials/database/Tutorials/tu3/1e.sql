CREATE VIEW status AS
    (SELECT 
        stuid
    FROM
        Presenters
    WHERE
        (SELECT 
                MAX(week)
            FROM
                Presenters) > (SELECT 
                COUNT(DISTINCT week)
            FROM
                Presenters)
            OR EXISTS( SELECT 
                1
            FROM
                Presenters
            GROUP BY week
            HAVING MAX(qnum) > COUNT(DISTINCT qnum))
    LIMIT 1);
    
SELECT 
    COUNT(stuid)
FROM
    status;