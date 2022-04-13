<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRecordings.aspx.cs" Inherits="TSPrecisionParking.ViewRecordings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:auto;margin-right:auto;text-align:center;">
            <h4>Change Sensor</h4>
            <asp:DropDownList ID="ddlSensors" runat="server" 
                DataSourceID="sqlsrcSensors" DataTextField="SensorID" DataValueField="SensorID" 
                AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlSensors_SelectedIndexChanged">
                <asp:ListItem Text="All Sensors" Value="ALL" />
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="grdvwRecords"
                runat="server"
                DataSourceID="sqlsrcRecords"
                AllowSorting="true"
                AutoGenerateSelectButton="false"
                HorizontalAlign="Center"
                AutoGenerateColumns="false" DataKeyNames="SensorID">
                <Columns>
                    <asp:BoundField HeaderText="Sensor ID" DataField="SensorID" SortExpression="SensorID" />
                    <asp:BoundField HeaderText="Record Timestamp (UTC)" DataField="RecordTimestamp" SortExpression="RecordTimestamp" />
                    <asp:BoundField HeaderText="Reading" DataField="Reading" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlsrcSensors" runat="server"
                ConnectionString="<%$ ConnectionStrings:TSPP %>"
                SelectCommand="SELECT SensorID FROM Sensor"></asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlsrcRecords" runat="server"
                ConnectionString="<%$ ConnectionStrings:TSPP %>"
                SelectCommand="SELECT * FROM Record"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
