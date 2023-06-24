using Crud;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Test.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        private int id=0;
        private int edad=0;
        private string nombre;
        private string email;
        private Person item;
        private ICommand guardarDatos;
        private ICommand eliminarDatos;
        private ICommand nuevosDatos;
        private ICommand doubleClick;
        private ObservableCollection<Person> peoples;

        public MainViewModel()
        {
            peoples = new ObservableCollection<Person>();
        }

        public ObservableCollection<Person> Peoples
        { 
            get { return peoples; }
            set
            {
                peoples = value;
                OnPropertyChanged(nameof(peoples));
            }
        }

        public Person Item
        {
            get { return item; }
            set
            {
                if (item != value)
                {
                    item = value;
                    OnPropertyChanged("Item");
                }
            }
        }

        public int Id
        {
            get { return id;}
            set
            {
                id = value;
                OnPropertyChanged("Id");
            }
        }

        public int Edad
        {
            get { return edad; }
            set
            {
                edad = value;
                OnPropertyChanged("Edad");
            }
        }

        public string Email
        {
            get { return email; }
            set 
            {
                email = value;
                OnPropertyChanged("Email");
            }
        }

        public string Nombre
        {
            get { return nombre; }
            set
            {
                nombre = value;
                OnPropertyChanged("Nombre");
            }
        }

        public ICommand GuardarDatos
        {
            get
            {
                if(guardarDatos == null)
                {
                    guardarDatos = new RelayCommand(p => this.Guardar());
                }
                return guardarDatos;
            }
        }

        public ICommand EliminarDatos
        {
            get
            {
                if (eliminarDatos == null)
                {
                    eliminarDatos = new RelayCommand(p => this.Eliminar());
                }
                return eliminarDatos;
            }
        }

        public ICommand NuevosDatos
        {
            get
            {
                if (nuevosDatos == null)
                {
                    nuevosDatos = new RelayCommand(p => this.Limpiar());
                }
                return nuevosDatos;
            }
        }

        public ICommand DoubleClick
        {
            get
            {
                if (doubleClick == null)
                {
                    doubleClick = new RelayCommand(p => this.MouseDoubleClick());
                }
                return doubleClick;
            }
        }

        public void MouseDoubleClick()
        {
            if(item!=null)
                Cargar(item);
        }

        private void Guardar()
        {
            bool ban = false;
            int i = 0;
            try
            {
                if (id>0 && edad>0 && !string.IsNullOrEmpty(nombre) && !string.IsNullOrEmpty(email))
                {
                    Person p = new Person(id, nombre, edad, email);
                    for (i = 0; i < peoples.Count; i++)
                    {
                        if (peoples[i].Id == p.Id)
                        {
                            ban = true; break;
                        }
                    }

                    if (ban != true)
                    {
                        peoples.Add(p);
                    }
                    else
                    {
                        peoples[i] = p;
                    }
                    this.Limpiar();
                }

            }
            catch (Exception ex) { }
        }

        private void Eliminar()
        {
            try
            {
                if (item != null)
                {
                    var result = MessageBox.Show("Seguro que deseas eliminar este registro!", "Message", MessageBoxButton.YesNo);
                    if (result == MessageBoxResult.Yes)
                    { 
                        var row = item.Id;
                        Console.WriteLine("row: " + row);
                        for (int i = 0; i < peoples.Count; i++)
                        {
                            if (row == peoples[i].Id)
                            {
                                Cargar(peoples[i]);
                                peoples.RemoveAt(i);
                            }
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Selecciona un registro!", "Message", MessageBoxButton.OK);
                }
            }
            catch (Exception ex) { }
        }

        public void Limpiar()
        {
            id = 0;
            edad = 0;
            nombre = null;
            email = null;
            ActualizarCampos();
        }

        private void Cargar(Person person)
        {
            id = person.Id;
            edad = person.Edad;
            nombre = person.Nombre;
            email = person.Email;
            ActualizarCampos();
        }

        private void ActualizarCampos()
        {
            OnPropertyChanged("Id");
            OnPropertyChanged("Edad");
            OnPropertyChanged("Nombre");
            OnPropertyChanged("Email");
        }
    }
}
