using System;
using System.Collections.Generic;

namespace Datanaut.Models;

public partial class Member
{
    public int MemberId { get; set; }

    public string Skills { get; set; } = null!;

    public string MemberRole { get; set; } = null!;

    public string MemberName { get; set; } = null!;

    public virtual ICollection<ProjectTeam> ProjectTeams { get; set; } = new List<ProjectTeam>();

    public virtual ICollection<Report> Reports { get; set; } = new List<Report>();

    public virtual ICollection<Timelog> Timelogs { get; set; } = new List<Timelog>();
}
