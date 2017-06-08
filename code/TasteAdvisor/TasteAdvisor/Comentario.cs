using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Media.Imaging;

namespace TasteAdvisor
{
    public class Comentario
    {
        #region Contructor
        public Comentario()
        {

        }
        #endregion

        #region Properties
        bool _isRestaurant;

        public bool IsRestaurant
        {
            get { return _isRestaurant; }
            set { _isRestaurant = value; }
        }

        string _name;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        string _text;
        public string Text
        {
            get { return _text; }
            set { _text = value; }
        }

        BitmapImage _foto;

        public BitmapImage Foto
        {
            get { return _foto; }
            set { _foto = value; }
        }
        #endregion

        #region Methods
        #endregion

    }
}