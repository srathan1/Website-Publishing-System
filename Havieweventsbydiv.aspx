<%@ Page Title="" Language="C#" MasterPageFile="~/HA.master" AutoEventWireup="true" CodeFile="Havieweventsbydiv.aspx.cs" Inherits="Havieweventsbydiv" %>

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
        .style2
        {
            height: 23px;
        }
        .style2
        {
            width: 171px;
        }
        .style5
        {
            width: 146px;
        }
        .style3
        {
            height: 9px;
        }
        .style4
        {
            width: 171px;
            height: 9px;
        }
        .style6
        {
            height: 9px;
            width: 146px;
        }
        .style7
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
        <td>
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style5">
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
        <td class="style2">
                &nbsp;</td>
        <td colspan="3">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label3" runat="server" Text="VIEW EVENTS BY DIVISION" 
                    Font-Bold="True" Font-Size="Large"></asp:Label>
        </td>
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
        <td class="style3">
        </td>
        <td class="style4">
        </td>
        <td class="style6">
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style5">
            <asp:Label ID="Label4" runat="server" Text="SELECT DIVISION" Font-Bold="True"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddldivisionid" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="divid" DataValueField="divid" 
                    Height="21px" Width="131px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                    SelectCommand="SELECT [divid] FROM [division]"></asp:SqlDataSource>
        </td>
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
        <td class="style2">
                &nbsp;</td>
        <td class="style5">
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
        <td class="style7" colspan="10">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="eventid" DataSourceID="SqlDataSource2" Width="936px">
                <Columns>
                    <asp:BoundField DataField="divid" HeaderText="divid" SortExpression="divid" />
                    <asp:BoundField DataField="eventid" HeaderText="eventid" ReadOnly="True" 
                            SortExpression="eventid" />
                    <asp:BoundField DataField="eventname" HeaderText="eventname" 
                            SortExpression="eventname" />
                    <asp:BoundField DataField="description" HeaderText="description" 
                            SortExpression="description" />
                    <asp:ImageField DataImageUrlField="Url" HeaderText="Image">
                        <ControlStyle Height="200px" Width="300px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                    SelectCommand="SELECT * FROM [events] WHERE ([divid] = @divid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddldivisionid" Name="divid" 
                            PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style5">
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
        <td class="style2">
                &nbsp;</td>
        <td class="style5">
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
        <td class="style2">
                &nbsp;</td>
        <td class="style5">
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
        <td class="style2">
                &nbsp;</td>
        <td class="style5">
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

