using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetPizza.Managers
{
    public partial class EditPizzas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void PizzasListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "Delete"))
            {
                string msg = "Are you sure you want to delete this row?";
                ClientScript.RegisterStartupScript(this.GetType(), "Please", "alert('" + msg + "');", true);
                lblResult.Text = "Deleting";
            }
        }
    }
}