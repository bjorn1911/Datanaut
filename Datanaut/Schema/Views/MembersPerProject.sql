CREATE VIEW MembersPerProject AS
SELECT
    p.ProjectName,
    STRING_AGG(m.MemberName, ', ') AS AssignedMembers
FROM
    ProjectTeam pt
JOIN
    Project p ON p.ProjectId = pt.FkProjectId
JOIN
    Member m ON m.MemberId = pt.FkMemberId
GROUP BY
    p.ProjectName;
