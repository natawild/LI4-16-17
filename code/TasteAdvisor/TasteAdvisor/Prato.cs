using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TasteAdvisor
{
    public class Prato
    {
        #region Constructor
        public Prato()
        {
            
        }
        #endregion

        #region Properties
        string _id;

        public string Id
        {
            get { return _id; }
            set { _id = value; }
        }

        string _nome;

        public string Nome
        {
            get { return _nome; }
            set { _nome = value; }
        }
        List<string> _ingredientes;

        public List<string> Ingredientes
        {
            get { return _ingredientes; }
            set { _ingredientes = value; }
        }


        #endregion

        #region Methods
        public bool contemIngrediente(string ingrediente)
        {
            return Ingredientes.Contains(ingrediente);
        }

        #endregion
    }
}