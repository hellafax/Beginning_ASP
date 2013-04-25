using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_OrderingTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ListItem li = new ListItem();
        li.Text = TextBox1.Text.ToString();
        BulletedList1.Items.Add(li);
        //Label1.Text = "ListItem added in BulletedList: " + li.Text;   
    }
}