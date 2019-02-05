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
            this.ddlTechnician.DataTextField = "fullName";
            this.ddlTechnician.DataValueField = "Id";

            fillTechnicians();

            this.ddlServirty.DataTextField = "Name";
            this.ddlServirty.DataValueField = "Id";

            fillSeverities();

            this.ddlState.DataTextField = "Name";
            this.ddlState.DataValueField = "Id";

            fillStates();

        }

        private void fillTechnicians()
        {
            try
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {

                    using (SqlCommand cmd = new SqlCommand("RetrieveTechnicians", conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                //sets up connection between dropdown and the data reader;
                                this.ddlTechnician.DataSource = dr;
                                this.ddlTechnician.DataBind();
                            }
                            else
                            {
                                //TODO:Add message lbl
                                //lblMessage.Text = "No technicians found";
                            }
                        }
                        conn.Close();//Not needed but here for example (using handles closing)
                    }
                }
            }
            catch (Exception ex)
            {

                //blMessage.Text = ex.Message;
            }
        }

        private void fillSeverities()
        {
            try
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {

                    using (SqlCommand cmd = new SqlCommand("RetrieveServerities", conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                //sets up connection between dropdown and the data reader;
                                this.ddlServirty.DataSource = dr;
                                this.ddlServirty.DataBind();
                            }
                            else
                            {
                                //TODO:Add message lbl
                                //lblMessage.Text = "No technicians found";
                            }
                        }
                        conn.Close();//Not needed but here for example (using handles closing)
                    }
                }
            }
            catch (Exception ex)
            {

                //blMessage.Text = ex.Message;
            }
        }

        private void fillStates()
        {
            try
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {

                    using (SqlCommand cmd = new SqlCommand("RetrieveTicketStates", conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                //sets up connection between dropdown and the data reader;
                                this.ddlState.DataSource = dr;
                                this.ddlState.DataBind();
                            }
                            else
                            {
                                //TODO:Add message lbl
                                //lblMessage.Text = "No technicians found";
                            }
                        }
                        conn.Close();//Not needed but here for example (using handles closing)
                    }
                }
            }
            catch (Exception ex)
            {

                //blMessage.Text = ex.Message;
            }
        }
    }
}