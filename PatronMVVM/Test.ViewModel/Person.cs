using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Crud
{
    public class Person
    {
        public int Id { get; set; }
        public int Edad { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }

        public Person(int id,string nombre, int edad, string email)
        {
            this.Id = id;
            this.Nombre = nombre;
            this.Edad = edad;
            this.Email = email;
        }
    }
}