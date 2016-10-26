using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportSiteBAL; 

namespace SportSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            UsersBAL usersBAL = new UsersBAL();
            if (usersBAL.ValidateUser(txtusername.Text.Replace("'", "''"), txtpassword.Text.Replace("'", "''"))) //  replace single cote to avoid  sql injection atack
            {
                Session["User"] = 1;
                Response.Redirect("AddScore.aspx");
            }
        }
    }
}