using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobtrack
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddNewJob_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddNewJob.aspx");
        }
        protected void hlbMarkAsComplete_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }

        protected void btnRemoveJob_Click(object sender, EventArgs e)
        {

        }
    }
}