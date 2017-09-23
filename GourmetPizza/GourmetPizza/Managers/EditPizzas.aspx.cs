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

        protected void PizzasListView_OnItemCommand(object sender, ListViewDeleteEventArgs e)
        {
            string msg = "Are you sure you want to delete this row?";
            ClientScript.RegisterStartupScript(this.GetType(), "Please", "alert('" + msg + "');", true);
            lblResult.Text = "Deleting";
        }
        protected void ListView1_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            // Use the Exception property to determine whether there is an exception
            if (e.Exception == null)
            {
                // Use the AffectedRows property to double make sure that 
                // the record was actually updated. 
                if (e.AffectedRows == 1)
                {
                    // Display a confirmation message.
                    lblResult.Visible = true;
                    lblResult.Text = "The new record has been inserted successfully!";
                }
                else
                {
                    // Display an error message.
                    lblResult.Visible = true;
                    lblResult.Text = "An error occurred during the insert operation.";
                    // When an error occurs, keep the FormView control in edit mode.
                    e.KeepInInsertMode = true;
                }
            }
            else
            {
                // Display the error message
                lblResult.Visible = true;
                lblResult.Text = e.Exception.Message;
                // Indicate that the exception has already been handled.
                e.ExceptionHandled = true;
                e.KeepInInsertMode = true;
            }
        }

        protected void ListView1_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {
            // Use the Exception property to determine whether there is an exception
            if (e.Exception == null)
            {
                // Use the AffectedRows property to double make sure that 
                // the record was actually updated. 
                if (e.AffectedRows == 1)
                {
                    // Display a confirmation message.
                    lblResult.Visible = true;
                    lblResult.Text = "The record has been updated successfully!";
                }
                else
                {
                    // Display an error message.
                    lblResult.Visible = true;
                    lblResult.Text = "An error occurred during the update operation.";
                    // When an error occurs, keep the FormView control in edit mode.
                    e.KeepInEditMode = true;
                }
            }
            else
            {
                // Display the error message
                lblResult.Visible = true;
                lblResult.Text = e.Exception.Message;
                // Indicate that the exception has already been handled.
                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }
        }
    }
}