using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Raya_T.Data;

namespace Raya_T
{
    public partial class HRMainMenu : System.Web.UI.Page
    {
        RayaDBEntitiess context = new RayaDBEntitiess();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Response.Cookies.Get("username") != null)
            {
                //var cookie = Response.Cookies.Get("username");
                //var ifAdmin = from c in context.R_User
                //              where (c.Email == Convert.ToString(cookie)
                //                        || c.FirstName == Convert.ToString(cookie))
                //              select c.Role;

                //if(Convert.ToString(ifAdmin) == "HR")
                //{
                //    grdEmp.Columns[2].Visible = false;
                //}

                var HRData = from c in context.R_HR
                             select new { c.ID, c.FirstName, c.LastName, c.Age, c.HireDate, c.State };

                grdEmp.DataSource = HRData.ToList();
                grdEmp.DataBind();
            }

            else
            {
                Response.Redirect("LoginIN.aspx");
            }
            
        }

        protected void grdEmp_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[3].Text = "HR ID";
                e.Row.Cells[4].Text = "First Name";
                e.Row.Cells[5].Text = "Last Name";
                e.Row.Cells[6].Text = "Age";
                e.Row.Cells[7].Text = "HireDate";
                e.Row.Cells[8].Text = "State";
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                grdEmp.DataSource = context.R_HR.ToList();
                grdEmp.DataBind();
            }

            else
            {
                var HR = context.R_HR.Where(c => c.FirstName == txtSearch.Text).ToList();
                grdEmp.DataSource = HR;
                grdEmp.DataBind();
            }

        }

        protected void grdEmp_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dvSearch.Visible = false;

            lblname.Text = grdEmp.Rows[e.RowIndex].Cells[4].Text +
                " " + grdEmp.Rows[e.RowIndex].Cells[5].Text;

            hfDelete.Value = grdEmp.Rows[e.RowIndex].Cells[3].Text;

            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id =int.Parse(hfDelete.Value);
            var HRDate = context.R_HR.FirstOrDefault(r => r.ID == id);
            if(HRDate !=null)
            {
                context.R_HR.Remove(HRDate);
                context.SaveChanges();

                Response.Redirect("HRMainMenu.aspx");
                MultiView1.ActiveViewIndex = 0;
            }
            
        }

        protected void grdEmp_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //int id = int.Parse(hfDelete.Value);

            int id =int.Parse(grdEmp.Rows[e.RowIndex].Cells[3].Text);

            var HRDate = context.R_HR.FirstOrDefault(r => r.ID == id);
            if (HRDate != null)
            {
                HRDate.State = "Approved";
                context.SaveChanges();

                Response.Redirect("HRMainMenu.aspx");
                MultiView1.ActiveViewIndex = 0;
            }
        }
    }
}