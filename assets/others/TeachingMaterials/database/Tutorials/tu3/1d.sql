-- step 1
DROP VIEW StudentInfo; 
CREATE VIEW StudentInfo AS ( 
(SELECT 
    stuid, COUNT(*) AS numQ, MAX(week) AS lastWk
FROM
    Presenters
GROUP BY stuid) -- obtain present number and last present week.
UNION 
(SELECT 
    stuid, 0, 0
FROM
    Students
WHERE
    stuid NOT IN (SELECT 
            stuid
        FROM
            Presenters)
   ) -- obtain corrner case.
);

SELECT 
    stuid
FROM
    StudentInfo
ORDER BY numQ , lastWk , stuid
LIMIT 2;

-- step 2
CREATE VIEW StudentSet AS
    (SELECT 
        stuid
    FROM
        StudentInfo
    ORDER BY numQ , lastWk , stuid
    LIMIT 2);

-- step 3    
select  min(stuid) as stuid1, max(stuid) as stuid2 from StudentSet