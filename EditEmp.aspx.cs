using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Raya_T.Data;

namespace Raya_T
{
    public partial class EditEmp : System.Web.UI.Page
    {
        RayaDBEntitiess context = new RayaDBEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Response.Cookies.Get("username") == null)
                    Response.Redirect("LoginIn.aspx");

                else
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    var HRData = context.R_HR.Where(r => r.ID == id).FirstOrDefault();

                    txtFirstName.Text = HRData.FirstName;
                    txtLastName.Text = HRData.LastName;
                    txtDateOfBirth.Text = Convert.ToString(HRData.DateOfBirth);
                    txtHireDate.Text = Convert.ToString(HRData.HireDate);
                    txtSalary.Text = Convert.ToString(HRData.Salary);
                }
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HRMainMenu.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            var HRData = context.R_HR.FirstOrDefault(r => r.ID == id);

            R_HR r_HR = new R_HR()
            {
                FirstName = txtFirstName.Text,
                LastName = txtLastName.Text,
                DateOfBirth = DateTime.Parse(txtDateOfBirth.Text),
                Salary = decimal.Parse(txtSalary.Text),
                HireDate = DateTime.Now,
                State = "New"
            };

            context.R_HR.Remove(HRData);
            context.R_HR.Add(r_HR);
            context.SaveChanges();

            Response.Redirect("HRMainMenu.aspx");
        }
    }
}