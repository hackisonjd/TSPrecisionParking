using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSPrecisionParking
{
    public partial class ViewRecordings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlSensors_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSensors.SelectedValue == "ALL")
                sqlsrcRecords.SelectCommand = "SELECT * FROM Record;";
            else
                sqlsrcRecords.SelectCommand = "SELECT * FROM Record WHERE SensorID = '" + ddlSensors.SelectedValue + "';";
        }
    }
}