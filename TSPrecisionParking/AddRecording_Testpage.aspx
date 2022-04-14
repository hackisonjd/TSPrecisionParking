<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRecording_Testpage.aspx.cs" Inherits="TSPrecisionParking.AddRecording_Testpage" %>

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
                    <a href="index.aspx">index</a>
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
            <h3>Select sensor</h3>
            <asp:DropDownList ID="ddlSensors" runat="server" DataSourceID="sqlsrcSensors" DataTextField="LocationName" DataValueField="SensorID" AutoPostBack="true"></asp:DropDownList><br />
            <br />
            <asp:CheckBox ID="ckbxReading" Text="Spot taken?" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnInsert" runat="server" Text="Insert Reading" OnClick="btnInsert_Click" />

            <asp:SqlDataSource ID="sqlsrcSensors" runat="server"
                ConnectionString="<%$ ConnectionStrings:TSPP %>"
                SelectCommand="SELECT Sensor.SensorID, LocationName FROM Sensor JOIN Location ON Sensor.LocationID = Location.LocationID;"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
