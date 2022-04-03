using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// SQL imports
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;

namespace TSPrecisionParking
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            // update command, helper method used to determine table to be used
            String sqlQuery = "INSERT INTO Sensor (LocationID) VALUES (NULL);";


            // def connections, create commands, insert parameter, and execute query
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["TSPP"].ConnectionString);
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnect);
            sqlConnect.Open();
            sqlCommand.ExecuteScalar();
            sqlConnect.Close();
        }

        protected void btnLaunch_Click(object sender, EventArgs e)
        {
            
            String sqlQuery = "UPDATE Sensor SET StartTime = '" +  DateTime.Now + "' WHERE SensorID = '" + ddlSensors.SelectedValue + "';";


            // def connections, create commands, insert parameter, and execute query
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["TSPP"].ConnectionString);
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnect);
            sqlConnect.Open();
            sqlCommand.ExecuteScalar();
            sqlConnect.Close();

        }



    }
}