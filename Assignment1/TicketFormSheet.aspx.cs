using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class TicketForm1 : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["cnn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ddlTechnician.DataTextField = "fullName";
                this.ddlTechnician.DataValueField = "Id";
                DBHelper.DataBinding(ddlTechnician, "RetrieveTechnicians");

                this.ddlServirty.DataTextField = "Name";
                this.ddlServirty.DataValueField = "Id";
                DBHelper.DataBinding(ddlServirty, "RetrieveServerities");

                this.ddlState.DataTextField = "Name";
                this.ddlState.DataValueField = "Id";

                DBHelper.DataBinding(ddlState, "RetrieveTicketStates");
            }


        }

        

        protected void lbtnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                supportform.Visible = false;
                supportresults.Visible = true;
                string shortDesc = txtShortDesc.Text;
                string tech = ddlTechnician.SelectedItem.Text;
                string state = ddlState.SelectedItem.Text;
                string status = rblStatus.SelectedItem.Value;
                string severity = ddlServirty.SelectedItem.Text;
                string dateOpened = calDateOpened.SelectedDate.ToLongDateString();
                string dateClosed = calDateClosed.SelectedDate.ToLongDateString();
                string longDesc = txtLongDesc.Text;
                string actionTaken = txtActionTaken.Text;

                TableCell ETADateCell = new TableCell();
                DateTime date = calDateOpened.SelectedDate;
                switch (severity.ToLower())
                {
                    case "low":
                        ETADateCell.Text = date.AddDays(3).ToLongDateString();
                        break;
                    case "medium":
                        ETADateCell.Text = date.AddDays(4).ToLongDateString();
                        break;
                    case "high":
                        ETADateCell.Text = date.AddDays(5).ToLongDateString();
                        break;
                    case "severe":
                        ETADateCell.Text = date.AddDays(5).ToLongDateString();
                        break;
                }
                rowETA.Cells.Add(ETADateCell);


                TableCell sDescCell = new TableCell();
                sDescCell.Text = shortDesc;
                rowSDesc.Cells.Add(sDescCell);
                TableCell techCell = new TableCell();
                techCell.Text = tech;
                rowTechnician.Cells.Add(techCell);

                TableCell stateCell = new TableCell();
                stateCell.Text = state;
                rowState.Cells.Add(stateCell);

                TableCell statusCell = new TableCell();
                statusCell.Text = status;
                rowStatus.Cells.Add(statusCell);

                TableCell serverityCell = new TableCell();
                serverityCell.Text = severity;
                rowSeverity.Cells.Add(serverityCell);

                TableCell dateOpenedCell = new TableCell();
                dateOpenedCell.Text = dateOpened;
                rowDateOpened.Cells.Add(dateOpenedCell);

                TableCell dateClosedCell = new TableCell();
                dateClosedCell.Text = dateClosed;
                rowDateClosed.Cells.Add(dateClosedCell);

                TableCell lDescCell = new TableCell();
                lDescCell.Text = longDesc;
                rowLongDesc.Cells.Add(lDescCell);

                TableCell actionTakenCell = new TableCell();
                actionTakenCell.Text = actionTaken;
                rowActionTaken.Cells.Add(actionTakenCell);
            }






        }

        protected void calDateOpened_SelectionChanged(object sender, EventArgs e)
        {
            this.txtDateOpened.Text = this.calDateOpened.SelectedDate.ToShortDateString();
        }

        protected void calDateClosed_SelectionChanged(object sender, EventArgs e)
        {
            this.txtDateClose.Text = this.calDateClosed.SelectedDate.ToShortDateString();
        }
    }
}