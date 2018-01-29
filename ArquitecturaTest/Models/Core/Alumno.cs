using System;

namespace ArquitecturaTest
{


    public class Alumno : Base<int>
    {
        public DateTime FechaNacimiento { get; set; }
        public int CursoActual { get; set; }

        //INSERT INTO `alumnos` VALUES(1, 'Luis Perez', 10, 2);
        //INSERT INTO `alumnos` VALUES(2, 'Juan Lopez', 11, 3);
        //INSERT INTO `alumnos` VALUES(3, 'Ana Gonzalez', 10, 3);
        //INSERT INTO `alumnos` VALUES(4, 'Laura Sanchez', 12, 3);
        //INSERT INTO `alumnos` VALUES(5, 'Antonio Ruiz', 12, 3);
        //INSERT INTO `alumnos` VALUES(6, 'Pedro Jimenez', 10, 2);
    }    
}