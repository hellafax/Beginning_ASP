using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Default : BasePage
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "In the Drop Down list, you selected " + DropDownList1.SelectedValue + "<br />";

        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (item.Selected == true)
            {
                Label1.Text += "In the Check Box List, you selected " + item.Value + "<br />";
            }
            //if (item.Selected == false)
            //{
            //    Label1.Text += "You selected nothing from the check boxes." + "<br />";
            //}
        }
    }
}