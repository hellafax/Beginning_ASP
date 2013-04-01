using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Test Message";
        myMessage.Body = "PLease accept this crap email from yourself!";
        myMessage.From = new MailAddress("matte@eastlink.ca", "Matte");
        myMessage.To.Add(new MailAddress("hellafax@gmail.com","Hellafax Matte"));

        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }
}