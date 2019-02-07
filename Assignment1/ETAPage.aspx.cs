using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
 * File: ETAPage
 *Author: Greg VanKampen
 * 2/7/2019
 */

namespace Assignment1
{
    public partial class ETAPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Load date into header
            lblHeader.Text = "Current Date: " + DateTime.Now.ToLongDateString();

            //Load date data into the table

            TableCell lowDate = new TableCell();
            TableCell mediumDate = new TableCell();
            TableCell highDate = new TableCell();
            TableCell severeDate = new TableCell();
            DateTime today = DateTime.Now;

            lowDate.Text = today.AddDays(3).ToLongDateString() + " "+ today.AddDays(3).ToLongTimeString();
            mediumDate.Text = today.AddDays(4).ToLongDateString() + " " + today.AddDays(4).ToLongTimeString();
            highDate.Text = today.AddDays(5).ToLongDateString() + " " + today.AddDays(5).ToLongTimeString();
            severeDate.Text = today.AddDays(5).ToLongDateString() + " " + today.AddDays(5).ToLongTimeString();

            rowLow.Cells.Add(lowDate);
            rowMedium.Cells.Add(mediumDate);
            rowHigh.Cells.Add(highDate);
            rowSevere.Cells.Add(severeDate);



        }
    }
}