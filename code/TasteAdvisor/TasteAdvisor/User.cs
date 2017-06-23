using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Windows.Media.Imaging;

namespace TasteAdvisor
{
    public class User
    {
        #region Constructor
        public User()
        {

        }
        #endregion

        string _id;

        public string Id
        {
            get { return _id; }
            set { _id = value; }
        }

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
            get
            {
                if (_pratosBloqueados == null) _pratosBloqueados = new List<Prato>();
                return _pratosBloqueados;
            }
            set { _pratosBloqueados = value; }
        }

        List<Restaurante> _restauranteBloqueados;

        public List<Restaurante> RestaurantesBloqueados
        {
            get
            {
                if (_restauranteBloqueados == null) _restauranteBloqueados = new List<Restaurante>();
                return _restauranteBloqueados;
            }
            set { _restauranteBloqueados = value; }
        }

        BitmapImage _fotografia;
        public BitmapImage Fotografia
        {
            get { return _fotografia; }
            set { _fotografia = value; }
        }

        List<Comentario> _comentarios;

        public List<Comentario> Comentarios
        {
            get { return _comentarios; }
            set { _comentarios = value; }
        }
        #endregion

        #region Methods

        public void LoadRestaurantesBloqueados()
        {
            string query = @"
SELECT      Restaurante.id, Restaurante.nome FROM RestaurantesVisitados
INNER JOIN  Restaurante ON Restaurante.Id = RestaurantesVisitados.restaurante
WHERE       RestaurantesVisitados.utilizador='" + this.Id + "' AND naoFavorito=1; ";
            SQL_API sql = new SQL_API();
            RestaurantesBloqueados = sql.GetDataTable(query).AsEnumerable().Select(z => new Restaurante()
            {
                Nome=z["nome"].ToString(),
                Id=z["id"].ToString()
            }).ToList();
        }

        public void LoadPratosBloqueados()
        {
            string query = @"
SELECT      Prato.id, Prato.nome FROM PratosDegustados
INNER JOIN  Prato ON Prato.Id = PratosDegustados.prato
WHERE       PratosDegustados.utilizador='" + this.Id + "' AND naoFavorito=1; ";
            SQL_API sql = new SQL_API();
            PratosBloqueados = sql.GetDataTable(query).AsEnumerable().Select(z => new Prato()
            {
                Nome = z["nome"].ToString(),
                Id = z["id"].ToString()
            }).ToList();
        }

        public void LoadSettings()
        {
            LoadPratosBloqueados();
            LoadRestaurantesBloqueados();
        }
        #endregion
    }
}