-- resource seeddata
INSERT INTO Resource (Software, Licence, Equipment) VALUES
('Visual Studio', 'Enterprise', 'Laptop Dell XPS'),
('SQL Server', 'Developer', 'Server HP ProLiant'),
('Figma', 'Team', 'MacBook Pro');

-- project seeddata 
INSERT INTO Project (ProjectStatus, StartDate, EndDate, Budget, ProjectName, FkProjectResourceId) VALUES
('Active', '2025-01-01', '2025-06-30', 500000, 'Ecommerce Platform', 1),
('Planning', '2025-02-15', '2025-08-15', 300000, 'Library Management System', 2),
('Completed', '2024-05-01', '2024-12-31', 200000, 'Portfolio Website', 3);

INSERT INTO Member ( Skills, MemberRole, MemberName) VALUES
('.NET utvecklare', 'Developer', 'Bella'),
('SQL & EF Core', 'Database Admin', 'Sara'),
('UI/UX Design', 'Designer', 'Mikael'),
('Project Management', 'Manager', 'Anna');

--Seed Data ProjectTeam
INSERT INTO ProjectTeam (FkProjectId, FkMemberId) VALUES
(1, 5), -- Bella on Ecommerce
(1, 6), -- Sara on Ecommerce
(1, 4), -- Anna managing Ecommerce
(2, 6), -- Sara on Library System
(2, 3), -- Mikael on Library System
(3, 5), -- bella on Portfolio
(3, 3); -- Mikael on Portfolio

-- Seed Data Timelog
INSERT INTO Timelog (Activity, Loggedtime, FkMemberId) VALUES
('Database Migration', 5, 2),
('Frontend Development', 8, 1),
('UI Mockups', 6, 3),
('Sprint Planning', 3, 4),
('Testing', 4, 1);

-- Seed data Report
INSERT INTO Report (FkProjectId, FkMemberId, TimePeriodStart, TimePeriodEnd) VALUES
(1, 4, '2025-01-01', '2025-01-31'), -- Anna reporting Ecommerce
(1, 1, '2025-02-01', '2025-02-28'), -- Johan reporting Ecommerce
(2, 2, '2025-03-01', '2025-03-31'), -- Sara reporting Library System
(3, 3, '2024-06-01', '2024-06-30'); -- Mikael reporting Portfolio