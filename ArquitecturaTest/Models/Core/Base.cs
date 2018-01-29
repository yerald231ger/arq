using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace ArquitecturaTest
{
    public class Base<TKey>
    {
        public TKey Id { get; set; }
        public string Nombre { get; set; }      
        public DateTime UpDate { get; set; }
        public DateTime ModDate { get; set; }
        public bool IsActive { get; set; }
    }
}
