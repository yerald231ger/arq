using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ArquitecturaTest.Data;
using Microsoft.AspNetCore.Mvc;
using ArquitecturaTest.Services.Repositories;

namespace ArquitecturaTest.Controllers
{
    public class AlumnoController : Controller
    {
        IAlumnoRepository alumnoRepository;

        //injeccion de dependencia (ApplicationDbContext se carga desde el Startup.cs)
        public AlumnoController(ApplicationDbContext dbContext)
        {
            alumnoRepository = new AlumnoRepository(dbContext);
        }

        public IActionResult Index()
        {
            ICollection<Alumno> alumnos = alumnoRepository.Read(); //Lee todos los registros activos con carga de objeto
            ICollection<Alumno> alumnoTop = alumnoRepository.ReadTop(2); //Lee los primeros 2 registros activos con sp
            ICollection<Alumno> alumnoTopNoActivos = alumnoRepository.ReadTop(2, false); //lee los 2 primeros registros falsos con linq

            var todos = alumnos.Concat(alumnoTop).Concat(alumnoTopNoActivos).ToList();

            return View(todos);
        }
    }
}