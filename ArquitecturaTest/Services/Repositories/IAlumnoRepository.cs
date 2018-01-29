using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ArquitecturaTest.Data;
using Microsoft.EntityFrameworkCore;

namespace ArquitecturaTest.Services.Repositories
{
    public interface IAlumnoRepository : IRepository<Alumno, int>
    {
        ICollection<Alumno> ReadTop(int top);
        ICollection<Alumno> ReadTop(int top, bool isActive);
    }

    public class AlumnoRepository : Repository<Alumno, int>, IAlumnoRepository
    {

        public AlumnoRepository(ApplicationDbContext context) : base(context)
        {
        }

        public ICollection<Alumno> ReadTop(int top, bool isActive = true)
        {
            ICollection<Alumno> alumnos = _dbSet.Where(e => e.IsActive == isActive).Take(top).ToList();
            return alumnos;
        }

        ICollection<Alumno> IAlumnoRepository.ReadTop(int top)
        {
            ICollection<Alumno> alumnos = _dbSet.FromSql($"exec spr_alumnos {top}").ToList();
            return alumnos;
        }
    }
}
