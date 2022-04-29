using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Raya_T.Data;

namespace Raya_T
{
    public partial class SignUp : System.Web.UI.Page
    {
        RayaDBEntitiess context = new RayaDBEntitiess();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblSuccess.Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                R_User r_User = new R_User()
                {
                    FirstName = txtFirstName.Text,
                    LastName = txtLastName.Text,
                    Email = txtEmail.Text,
                    Password = txtPassword.Text,
                    Role = drpRole.SelectedValue
                };

                var user = context.R_User
                    .Where(r => r.Email == r_User.Email)
                    .FirstOrDefault();



                var chUser = user;

                if(user == null)
                {
                    HttpCookie httpCookie = new HttpCookie("LoginCookei");
                    httpCookie.Values.Add("username", HttpUtility.UrlEncode(txtFirstName.Text.ToUpper()));
                    httpCookie.Expires = DateTime.Now.AddDays(15);
                    Response.Cookies.Add(httpCookie);

                    context.R_User.Add(r_User);
                    context.SaveChanges();

                   
            
                    if (r_User.Role == "HR Admin")
                        Response.Redirect("HRMainMenu.aspx");
                    else
                        Response.Redirect("MainMenu.aspx");
                }
                else
                {
                    lblSuccess.Visible = true;
                    lblSuccess.Text = "This User Is Existed";
                }
               
            }
        }
    }
}