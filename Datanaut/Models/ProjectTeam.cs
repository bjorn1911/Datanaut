using System;
using System.Collections.Generic;

namespace Datanaut.Models;

public partial class ProjectTeam
{
    public int ProjectTeamId { get; set; }

    public int? FkProjectId { get; set; }

    public int? FkMemberId { get; set; }

    public virtual Member? FkMember { get; set; }

    public virtual Project? FkProject { get; set; }
}
