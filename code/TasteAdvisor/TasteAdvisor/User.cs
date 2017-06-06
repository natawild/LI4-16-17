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

        #endregion

        #region Methods
        #endregion
    }
}