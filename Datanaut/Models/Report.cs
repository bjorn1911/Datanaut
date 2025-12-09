using System;
using System.Collections.Generic;

namespace Datanaut.Models;

public partial class Report
{
    public int ReportId { get; set; }

    public int? FkProjectId { get; set; }

    public int? FkMemberId { get; set; }

    public DateOnly TimePeriodStart { get; set; }

    public DateOnly TimePeriodEnd { get; set; }

    public virtual Member? FkMember { get; set; }

    public virtual Project? FkProject { get; set; }
}
