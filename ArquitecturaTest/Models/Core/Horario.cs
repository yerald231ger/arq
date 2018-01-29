using System;

namespace ArquitecturaTest
{
    public class Horario : Base<int>
    {
        public DateTime HoraInicio { get; set; }
        public DateTime HoraFinal { get; set; }
        public DayOfWeek Dia { get; set; }

        public int IdMateria { get; set; }

        //INSERT INTO `horarios` VALUES(1, '08:00:00', '10:00:00', 'lunes', 1);
        //INSERT INTO `horarios` VALUES(2, '10:00:00', '12:00:00', 'lunes', 2);
        //INSERT INTO `horarios` VALUES(3, '12:00:00', '14:00:00', 'lunes', 3);
        //INSERT INTO `horarios` VALUES(4, '08:00:00', '12:00:00', 'martes', 1);
        //INSERT INTO `horarios` VALUES(5, '12:00:00', '14:00:00', 'martes', 2);
        //INSERT INTO `horarios` VALUES(6, '10:00:00', '12:00:00', 'miercoles', 3);
        //INSERT INTO `horarios` VALUES(7, '12:00:00', '14:00:00', 'miercoles', 1);
        //INSERT INTO `horarios` VALUES(8, '08:00:00', '10:00:00', 'jueves', 2);
        //INSERT INTO `horarios` VALUES(9, '10:00:00', '12:00:00', 'jueves', 3);
        //INSERT INTO `horarios` VALUES(10, '12:00:00', '14:00:00', 'jueves', 1);
        //INSERT INTO `horarios` VALUES(11, '08:00:00', '12:00:00', 'viernes', 2);
    }
}