<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TSPrecisionParking.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnNew" runat="server" Text="New Sensor"  OnClick="btnNew_Click"/><br />
            <asp:DropDownList ID="ddlSensors" runat="server" DataSourceID="sqlsrcListSensors" DataTextField="SensorID" DataValueField="SensorID" AutoPostBack="true"></asp:DropDownList><br />
            <asp:Button ID="btnLaunch" runat="server" Text="Launch Sensor" OnClick="btnLaunch_Click" /><br />
        </div>
        <asp:SqlDataSource ID="sqlsrcListSensors" runat="server"
        ConnectionString="<%$ ConnectionStrings:TSPP %>"
        SelectCommand="SELECT SensorID FROM Sensor;"></asp:SqlDataSource>
    </form>
</body>
</html>
