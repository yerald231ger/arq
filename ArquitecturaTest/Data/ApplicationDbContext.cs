using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq;
using System;
using JetBrains.Annotations;

namespace ArquitecturaTest.Data
{
    public class ApplicationDbContext : DbContext
    {
        public virtual DbSet<Alumno> Alumnos { get; set; }
        public virtual DbSet<Materia> Materias { get; set; }
        public virtual DbSet<Horario> Horarios { get; set; }

        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //se mapea la bd para saber que de que tabla cargar el DbSet
            modelBuilder.Entity<Alumno>().ToTable("Alumnos");
        }
    }
}
