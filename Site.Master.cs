using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Raya_T
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie httpCookie = new HttpCookie("LoginCookei");
            httpCookie = Request.Cookies["LoginCookei"];

            if(httpCookie == null)
            {
                listIfLog.Visible = false;
                listIfNotLog.Visible = true;
            }
            else
            {
                listIfLog.Visible = true;
                listIfNotLog.Visible = false;
                btnUser.Text = HttpUtility.UrlDecode(httpCookie["username"].ToUpper());
            }

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            HttpCookie httpCookie = new HttpCookie("LoginCookei");
            httpCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(httpCookie);

            Response.Redirect("Default.aspx");
        }
    }
}