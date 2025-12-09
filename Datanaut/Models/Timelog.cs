using System;
using System.Collections.Generic;

namespace Datanaut.Models;

public partial class Timelog
{
    public int TimelogId { get; set; }

    public string Activity { get; set; } = null!;

    public int Loggedtime { get; set; }

    public int? FkMemberId { get; set; }

    public virtual Member? FkMember { get; set; }
}
