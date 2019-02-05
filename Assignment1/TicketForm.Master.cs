using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class TicketForm : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String today = DateTime.Now.ToShortDateString();
            String currentYear = DateTime.Now.Year.ToString();
            this.lblFooterCopyright.Text = $"Copyright © {currentYear} All rights reserved \n";
            this.lblFooterDate.Text = $"Current Date: {today}";

        }
    }
}