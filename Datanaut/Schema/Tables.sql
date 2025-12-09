-- Create database
GO
CREATE DATABASE DatnautDB
GO
USE DatanautDB
GO

--------- Create tables 

-- Resource table
CREATE TABLE Resource (
  ResourceId INT PRIMARY KEY,
  Software NVARCHAR(50),
  Licence NVARCHAR(50),
  Equipment NVARCHAR(50)
);

-- Project table
CREATE TABLE Project (
  ProjectId INT IDENTITY(1,1) PRIMARY KEY,
  ProjectStatus NVARCHAR(50) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  Budget INT NOT NULL,
  ProjectName NVARCHAR(50) NOT NULL,
  FkProjectResourceId INT,
  CONSTRAINT FK_Project_Resource FOREIGN KEY (FkProjectResourceId) REFERENCES Resource(ResourceId)
);


-- Member table
CREATE TABLE Member (
  MemberId INT IDENTITY(1,1) PRIMARY KEY,
  Skills NVARCHAR(50) NOT NULL,
  MemberRole NVARCHAR(50) NOT NULL,
  MemberName NVARCHAR(50) NOT NULL
);


-- ProjectTeam (junction table)
CREATE TABLE ProjectTeam (
  ProjectTeamId INT IDENTITY(1,1) PRIMARY KEY,
  FkProjectId INT,
  FkMemberId INT,
  CONSTRAINT FK_ProjectTeam_Project FOREIGN KEY (FkProjectId) REFERENCES Project(ProjectId),
  CONSTRAINT FK_ProjectTeam_Member FOREIGN KEY (FkMemberId) REFERENCES Member(MemberId)
);

-- Timelog table
CREATE TABLE Timelog (
  TimelogId INT IDENTITY(1,1) PRIMARY KEY,
  Activity NVARCHAR(50) NOT NULL,
  Loggedtime INT NOT NULL,
  FkMemberId INT,
  CONSTRAINT FK_Timelog_Member FOREIGN KEY (FkMemberId) REFERENCES Member(MemberId)
);



-- Report table
CREATE TABLE Report (
  ReportId INT IDENTITY(1,1) PRIMARY KEY,
  FkProjectId INT,
  FkMemberId INT,
  TimePeriodStart DATE NOT NULL,
  TimePeriodEnd DATE NOT NULL,
  CONSTRAINT FK_Report_Project FOREIGN KEY (FkProjectId) REFERENCES Project(ProjectId),
  CONSTRAINT FK_Report_Member FOREIGN KEY (FkMemberId) REFERENCES Member(MemberId),
);

 
















