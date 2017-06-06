using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TasteAdvisor
{
    public class Restaurante
    {
        #region Constructor
        public Restaurante()
        {

        }
        #endregion

        #region Properties
        string _nome;
        public string Nome
        {
            get { return _nome; }
            set { _nome = value; }
        }
        string _morada;
        public string Morada
        {
            get { return _morada; }
            set { _morada = value; }
        } 
        double _latitude;
        public double Latitude
        {
            get { return _latitude; }
            set { _latitude = value; }
        }
        double _longitude;
        public double Longitude
        {
            get { return _longitude; }
            set { _longitude = value; }
        }
        string _telefone;

        public string Telefone
        {
            get { return _telefone; }
            set { _telefone = value; }
        }
        List<Prato> _ementa;
        public List<Prato> Ementa
        {
            get { return _ementa; }
            set { _ementa = value; }
        }
        #endregion

        #region Methods

        public bool contemPrato(string prato)
        {
            return Ementa.AsEnumerable().Where(z => z.Nome == prato).Count()!= 0;
        }

        public bool contemPratoComIngredientes(string prato, List<string> ingredientes)
        {
            bool result = false;
            foreach (string ingrediente in ingredientes)
            {
                if(Ementa.AsEnumerable().Where(z => z.Nome == prato).First().contemIngrediente(ingrediente))
                {
                    result = true;
                }
            }
            return result;
            
        }

        #endregion
    }
}