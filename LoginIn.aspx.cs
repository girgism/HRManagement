using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Raya_T.Data;

namespace Raya_T
{
    public partial class LoginIn : System.Web.UI.Page
    {
        RayaDBEntitiess context = new RayaDBEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserExist.Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var user = context.R_User
                    .Where(r => r.Email == txtUserName.Text && r.Password == txtPassword.Text)
                    .FirstOrDefault();

                if(user == null)
                {
                    lblUserExist.Visible = true;
                }
                else
                {
                    HttpCookie httpCookie = new HttpCookie("LoginCookei");
                    httpCookie.Values.Add("username", HttpUtility.UrlEncode(txtUserName.Text.ToUpper()));
                    httpCookie.Expires = DateTime.Now.AddDays(15);
                    Response.Cookies.Add(httpCookie);

                    if(user.Role == "HR Admin")
                        Response.Redirect("HRMainMenu.aspx");
                    else
                        Response.Redirect("MainMenu.aspx.aspx");
                }
            }
        }
    }
}