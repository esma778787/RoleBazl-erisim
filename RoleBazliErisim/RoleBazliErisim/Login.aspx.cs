using System;
using System.Web.Security;

namespace RoleBazliErisim
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(txtUserName.Text, txtSifre.Text))
            {
                FormsAuthentication.SetAuthCookie(this.txtUserName.Text.Trim(), false);
                //FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
                if (txtUserName.Text == "musteri")
                    Response.Redirect("Musteri/");
                else if (txtUserName.Text=="yonetici")
                    Response.Redirect("Yonetici/");
            }
            else
            {
                Msg.Text = "Kullanıcı adı veya şifre yanlış.";
            }
        }
    }
}