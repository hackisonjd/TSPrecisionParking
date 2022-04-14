<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TSPrecisionParking.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <ul>
                <li>
                    <a href="index.aspx">Add New Sensor</a>
                </li>
                <li>
                    <a href="AddRecording_Testpage.aspx">Add Recordings</a>
                </li>
                <li>
                    <a href="ViewRecordings.aspx">View Recordings</a>
                </li>
            </ul>
        </div>
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Button ID="btnNew" runat="server" Text="New Sensor" OnClick="btnNew_Click" />
            <br />
            <asp:DropDownList ID="ddlSensors" runat="server" DataSourceID="sqlsrcListSensors" DataTextField="LocationName" DataValueField="SensorID" AutoPostBack="true"></asp:DropDownList><br />
            <asp:Button ID="btnLaunch" runat="server" Text="Launch Sensor" OnClick="btnLaunch_Click" />
            <br />
        </div>
        <asp:SqlDataSource ID="sqlsrcListSensors" runat="server"
            ConnectionString="<%$ ConnectionStrings:TSPP %>"
            SelectCommand="SELECT Sensor.SensorID, LocationName FROM Sensor JOIN Location ON Sensor.LocationID = Location.LocationID;"></asp:SqlDataSource>
    </form>
</body>
</html>
