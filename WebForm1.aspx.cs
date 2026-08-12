using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cvGender_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Ensure one of the radio buttons is selected
            args.IsValid = MALE.Checked || FEMALE.Checked;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Trigger validation and proceed only if all validators pass
            if (Page.IsValid)
            {
                lblResult.Text = "Registration successful.";
            }
            else
            {
                lblResult.Text = string.Empty;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            // Copy selected date from the Calendar to the DOB textbox in a predictable format
            TextBoxDOB.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
        }
    }
}