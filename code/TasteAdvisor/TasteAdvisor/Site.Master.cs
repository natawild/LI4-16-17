using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteAdvisor
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IsLogin = false;
            }
            if (IsLogin)
            {
                loginButtonMain.InnerText = "Terminar sessão";
            }
            else
            {
                loginButtonMain.InnerText = "Iniciar sessão";
            }
            
        }

        #region Properties
        bool _isLogin;
        public bool IsLogin
        {
            get { return _isLogin; }
            set { _isLogin = value; }
        }
        #endregion
    }
}