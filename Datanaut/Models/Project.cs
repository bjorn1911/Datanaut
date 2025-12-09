using System;
using System.Collections.Generic;

namespace Datanaut.Models;

public partial class Project
{
    public int ProjectId { get; set; }

    public string ProjectStatus { get; set; } = null!;

    public DateOnly StartDate { get; set; }

    public DateOnly EndDate { get; set; }

    public int Budget { get; set; }

    public string ProjectName { get; set; } = null!;

    public int? FkProjectResourceId { get; set; }

    public virtual Resource? FkProjectResource { get; set; }

    public virtual ICollection<ProjectTeam> ProjectTeams { get; set; } = new List<ProjectTeam>();

    public virtual ICollection<Report> Reports { get; set; } = new List<Report>();
}
