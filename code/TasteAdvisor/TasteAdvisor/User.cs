using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TasteAdvisor
{
    public class User
    {
        #region Constructor
        public User()
        {

        }
        #endregion

        #region Properties
        string _username;
        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }

        string _password;
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

        List<string> _ingredientesBloqueados;

        public List<string> IngredientesBloqueados
        {
            get { return _ingredientesBloqueados; }
            set { _ingredientesBloqueados = value; }
        }

        List<Prato> _pratosBloqueados;

        public List<Prato> PratosBloqueados
        {
            get { return _pratosBloqueados; }
            set { _pratosBloqueados = value; }
        }

        List<Restaurante> _restauranteBloqueados;

        public List<Restaurante> RestaurantesBloqueados
        {
            get { return _restauranteBloqueados; }
            set { _restauranteBloqueados = value; }
        }
        #endregion

        #region Methods
        #endregion
    }
}