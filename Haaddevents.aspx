<%@ Page Title="" Language="C#" MasterPageFile="~/HA.master" AutoEventWireup="true" CodeFile="Haaddevents.aspx.cs" Inherits="Haaddevents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 172px;
        }
        .style2
        {
            width: 349px;
        }
        .style17
    {
        width: 13px;
    }
        .style3
        {
            height: 31px;
        }
        .style5
        {
            height: 32px;
        }
        .style6
        {
            width: 172px;
            height: 32px;
        }
        .style7
        {
            width: 349px;
            height: 32px;
        }
        .style18
    {
        height: 32px;
        width: 13px;
    }
        .style9
        {
            width: 172px;
            height: 31px;
        }
        .style10
        {
            width: 349px;
            height: 31px;
        }
        .style19
    {
        height: 31px;
        width: 13px;
    }
        .style11
        {
            height: 25px;
        }
        .style12
        {
            width: 172px;
            height: 25px;
        }
        .style13
        {
            width: 349px;
            height: 25px;
        }
        .style20
    {
        height: 25px;
        width: 13px;
    }
        .style14
        {
            height: 34px;
        }
        .style15
        {
            width: 172px;
            height: 34px;
        }
        .style16
        {
            width: 349px;
            height: 34px;
        }
    .style21
    {
        height: 34px;
        width: 13px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
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
        <td class="style4">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style17">
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
        <td class="style3" colspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="New Event"></asp:Label>
                &nbsp;</td>
    </tr>
    <tr>
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
        <td class="style4">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style17">
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
        <td class="style6">
            <asp:Label ID="Label2" runat="server" Text="Event Id"></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="txteventid" runat="server"></asp:TextBox>
            <asp:DropDownList ID="ddleventid" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="eventid" DataValueField="eventid" 
                    Height="22px" Width="128px" 
                    onselectedindexchanged="ddleventid_SelectedIndexChanged">
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
        <td class="style18">
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
        <td class="style5">
        </td>
    </tr>
    <tr>
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
        <td class="style9">
            <asp:Label ID="Label4" runat="server" Text="Event Name"></asp:Label>
        </td>
        <td class="style10">
            <asp:TextBox ID="txteventname" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
        <td class="style3">
        </td>
        <td class="style19">
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
        <td class="style3">
        </td>
    </tr>
    <tr>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style12">
            <asp:Label ID="Label3" runat="server" Text="Division Id"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="ddldivid" runat="server"></asp:TextBox>
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style20">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
        <td class="style11">
        </td>
    </tr>
    <tr>
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
        <td class="style4">
            <asp:Label ID="Label5" runat="server" Text="Event Description"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="txteventdescription" runat="server" Height="133px" 
                    TextMode="MultiLine" Width="295px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style17">
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
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style15">
            <asp:Label ID="Label6" runat="server" Text="Event Image"></asp:Label>
        </td>
        <td class="style16">
            <asp:FileUpload ID="imgupload" runat="server" />
            <asp:Button ID="btnchangeimage" runat="server" Text="Change Image" 
                    onclick="btnchangeimage_Click" />
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style21">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
        <td class="style14">
        </td>
    </tr>
    <tr>
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
        <td class="style4">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style17">
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
        <td align="right" class="style4">
            &nbsp;</td>
        <td class="style2">
            <asp:Button ID="btnnew" runat="server" onclick="btnnew_Click" Text="New" 
                    Width="56px" />
            <asp:Button ID="btnmodify" runat="server" onclick="btnmodify_Click" 
                    Text="Modify" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                    onclick="btncancel_Click" />
        </td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style17">
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
        <td class="style4">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style17">
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
        <td class="style4">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style17">
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

