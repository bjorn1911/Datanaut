
-- Trigger for create member
CREATE TRIGGER trg_CreatedNewMember
ON Member
AFTER INSERT
AS 
BEGIN
DECLARE @MemberId INT;
SELECT @MemberId = MemberId FROM inserted;
PRINT 'Created a new member with ID:' + CAST(@MemberId AS VARCHAR(100))
END;
--TEST
INSERT INTO Member(Skills, MemberRole, MemberName) VALUES
('.NET utvecklare', 'medarbetare', 'Björn');


-- Trigger for project update 
CREATE TRIGGER trg_updateProject 
ON Project 
AFTER UPDATE 
AS 
BEGIN
PRINT 'Project updated at ' + CONVERT(VARCHAR, GETDATE())
END;
--TEST
UPDATE Project SET Budget = 600000
WHERE ProjectId = 1;



-- Trigger for timelog update
CREATE TRIGGER trg_updateTimeLog
ON Timelog
AFTER UPDATE 
AS 
BEGIN
PRINT 'Timelog updated at' + CONVERT(VARCHAR, GETDATE())
END;
--TEST
UPDATE Timelog SET Loggedtime = 3
WHERE TimelogId = 5;


-- Trigger for create timelog 
CREATE TRIGGER trg_CreatedTimeLog
ON Timelog
AFTER INSERT
AS 
BEGIN
PRINT 'Timelog created at ' + CONVERT(VARCHAR, GETDATE())
END;
-- TEST
INSERT INTO Timelog(Activity, Loggedtime, FkMemberId) VALUES
('Fix bug', 2, 1)


