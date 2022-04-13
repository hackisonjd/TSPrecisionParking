using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// sql imports
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TSPrecisionParking
{
    public partial class AddRecording_Testpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            String sqlQuery = "INSERT INTO Record (SensorID, Reading) VALUES (@SensorID, @Reading);";
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["TSPP"].ConnectionString);
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnect);
            sqlCommand.Parameters.AddWithValue("@SensorID", ddlSensors.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@Reading", ckbxReading.Checked);
            sqlConnect.Open();
            sqlCommand.ExecuteScalar();
        }
    }
}