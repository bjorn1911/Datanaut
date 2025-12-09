using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Datanaut.Models;

public partial class DatanautDbContext : DbContext
{
    public DatanautDbContext()
    {
    }

    public DatanautDbContext(DbContextOptions<DatanautDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Member> Members { get; set; }

    public virtual DbSet<Project> Projects { get; set; }

    public virtual DbSet<ProjectTeam> ProjectTeams { get; set; }

    public virtual DbSet<Report> Reports { get; set; }

    public virtual DbSet<Resource> Resources { get; set; }

    public virtual DbSet<Timelog> Timelogs { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=localhost;Database=DatanautDB;Trusted_Connection=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Member>(entity =>
        {
            entity.HasKey(e => e.MemberId).HasName("PK__Member__0CF04B186BF9EE79");

            entity.ToTable("Member");

            entity.Property(e => e.MemberName).HasMaxLength(50);
            entity.Property(e => e.MemberRole).HasMaxLength(50);
            entity.Property(e => e.Skills).HasMaxLength(50);
        });

        modelBuilder.Entity<Project>(entity =>
        {
            entity.HasKey(e => e.ProjectId).HasName("PK__Project__761ABEF0CD256F6B");

            entity.ToTable("Project");

            entity.Property(e => e.ProjectName).HasMaxLength(50);
            entity.Property(e => e.ProjectStatus).HasMaxLength(50);

            entity.HasOne(d => d.FkProjectResource).WithMany(p => p.Projects)
                .HasForeignKey(d => d.FkProjectResourceId)
                .HasConstraintName("FK_Project_Resource");
        });

        modelBuilder.Entity<ProjectTeam>(entity =>
        {
            entity.HasKey(e => e.ProjectTeamId).HasName("PK__ProjectT__B043C594E55FD6E3");

            entity.ToTable("ProjectTeam");

            entity.HasOne(d => d.FkMember).WithMany(p => p.ProjectTeams)
                .HasForeignKey(d => d.FkMemberId)
                .HasConstraintName("FK_ProjectTeam_Member");

            entity.HasOne(d => d.FkProject).WithMany(p => p.ProjectTeams)
                .HasForeignKey(d => d.FkProjectId)
                .HasConstraintName("FK_ProjectTeam_Project");
        });

        modelBuilder.Entity<Report>(entity =>
        {
            entity.HasKey(e => e.ReportId).HasName("PK__Report__D5BD4805349306E8");

            entity.ToTable("Report");

            entity.HasOne(d => d.FkMember).WithMany(p => p.Reports)
                .HasForeignKey(d => d.FkMemberId)
                .HasConstraintName("FK_Report_Member");

            entity.HasOne(d => d.FkProject).WithMany(p => p.Reports)
                .HasForeignKey(d => d.FkProjectId)
                .HasConstraintName("FK_Report_Project");
        });

        modelBuilder.Entity<Resource>(entity =>
        {
            entity.HasKey(e => e.ResourceId).HasName("PK__Resource__4ED1816FA8E1FD8C");

            entity.ToTable("Resource");

            entity.Property(e => e.ResourceId).ValueGeneratedNever();
            entity.Property(e => e.Equipment).HasMaxLength(50);
            entity.Property(e => e.Licence).HasMaxLength(50);
            entity.Property(e => e.Software).HasMaxLength(50);
        });

        modelBuilder.Entity<Timelog>(entity =>
        {
            entity.HasKey(e => e.TimelogId).HasName("PK__Timelog__CD56DB343CDA8BE8");

            entity.ToTable("Timelog");

            entity.Property(e => e.Activity).HasMaxLength(50);

            entity.HasOne(d => d.FkMember).WithMany(p => p.Timelogs)
                .HasForeignKey(d => d.FkMemberId)
                .HasConstraintName("FK_Timelog_Member");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
