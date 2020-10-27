DROP TABLE IF EXISTS `Students`;
CREATE TABLE Students (
    stuid INTEGER,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (stuid)
);

DROP TABLE IF EXISTS `Presenters`;    
CREATE TABLE Presenters (
    week INTEGER CHECK (week > 0),
    qnum INTEGER NOT NULL CHECK (qnum > 0),
    stuid INTEGER,
    PRIMARY KEY (week , stuid),
    FOREIGN KEY (stuid)
        REFERENCES Students (stuid)
);