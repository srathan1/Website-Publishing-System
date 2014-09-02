<%@ Page Title="" Language="C#" MasterPageFile="~/HA.master" AutoEventWireup="true" CodeFile="Havieweventsbyid.aspx.cs" Inherits="Havieweventsbyid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 214px;
        }
        .style2
        {
            height: 23px;
        }
        .style2
        {
            height: 21px;
        }
        .style4
        {
            height: 21px;
            width: 214px;
        }
        .style5
        {
            height: 47px;
        }
        .style6
        {
            width: 214px;
            height: 47px;
        }
        .style7
        {
            height: 22px;
        }
        .style8
        {
            height: 22px;
            width: 214px;
        }
        .style9
        {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style4">
            </td>
            <td class="style2" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="VIEW EVENTS BY ID" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;</td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Label ID="Label4" runat="server" Text="SELECT EVENT ID" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddleventid" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="eventid" DataValueField="eventid" 
                    Height="22px" Width="132px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                    SelectCommand="SELECT [eventid] FROM [events]"></asp:SqlDataSource>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style8">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style9" colspan="10">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="eventid" DataSourceID="SqlDataSource2" Width="937px">
                    <Columns>
                        <asp:BoundField DataField="eventid" HeaderText="eventid" ReadOnly="True" 
                            SortExpression="eventid" />
                        <asp:BoundField DataField="eventname" HeaderText="eventname" 
                            SortExpression="eventname" />
                        <asp:BoundField DataField="description" HeaderText="description" 
                            SortExpression="description" />
                        <asp:BoundField DataField="divid" HeaderText="divid" SortExpression="divid" />
                        <asp:ImageField DataImageUrlField="Url" HeaderText="Image">
                            <ControlStyle Height="200px" Width="300px" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                    SelectCommand="SELECT * FROM [events] WHERE ([eventid] = @eventid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddleventid" Name="eventid" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

