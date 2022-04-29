using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Raya_T.Data;

namespace Raya_T
{
    public partial class newEmployee : System.Web.UI.Page
    {
        RayaDBEntitiess context = new RayaDBEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Response.Cookies.Get("username") == null)
                Response.Redirect("LoginIn.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HRMainMenu.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            R_HR r_HR = new R_HR()
            {
                FirstName = txtFirstName.Text,
                LastName = txtLastName.Text,
                DateOfBirth = DateTime.Parse(txtDateOfBirth.Text),
                Salary = decimal.Parse(txtSalary.Text),
                HireDate = DateTime.Now,
                State = "New"
            };

            context.R_HR.Add(r_HR);
            context.SaveChanges();

            Response.Redirect("HRMainMenu.aspx");
        }

        protected void btnCancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("HRMainMenu.aspx");
        }

       
    }
}