using System;
using System.Collections.Generic;

namespace Datanaut.Models;

public partial class Resource
{
    public int ResourceId { get; set; }

    public string? Software { get; set; }

    public string? Licence { get; set; }

    public string? Equipment { get; set; }

    public virtual ICollection<Project> Projects { get; set; } = new List<Project>();
}
