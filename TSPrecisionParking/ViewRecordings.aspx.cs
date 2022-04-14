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
                sqlsrcRecords.SelectCommand = "SELECT Sensor.SensorID, LocationName, RecordTimestamp, Reading " +
                    "FROM Record JOIN Sensor ON Record.SensorID = Sensor.SensorID " +
                    "JOIN Location ON Sensor.LocationID = Location.LocationID;";
            else
                sqlsrcRecords.SelectCommand = "SELECT Sensor.SensorID, LocationName, RecordTimestamp, Reading " +
                    "FROM Record JOIN Sensor ON Record.SensorID = Sensor.SensorID " +
                    "JOIN Location ON Sensor.LocationID = Location.LocationID WHERE Sensor.SensorID = '" + ddlSensors.SelectedValue + "';";
        }
    }
}