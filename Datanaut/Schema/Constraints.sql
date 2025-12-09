
-- add check to project date to make sure start date is not bigger than end date 
ALTER TABLE Project 
ADD CONSTRAINT CK_Project_Date CHECK (StartDate < EndDate);

-- add check to Report date to make sure start period is not bigger than end period 
ALTER TABLE Report 
ADD CONSTRAINT CK_Report_Time CHECK (TimePeriodStart < TimePeriodEnd)

-- add unique to project name
ALTER TABLE Project 
ADD CONSTRAINT UQ_Project_Name UNIQUE(ProjectName)

