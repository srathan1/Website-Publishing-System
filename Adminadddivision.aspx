<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Adminadddivision.aspx.cs" Inherits="Aviewdivision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 138px;
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            width: 138px;
            height: 21px;
        }
        .style5
        {
        }
        .style7
        {
            height: 26px;
        }
        .style8
        {
            width: 138px;
            height: 26px;
        }
        .style9
        {
            width: 122px;
            height: 26px;
        }
        .style10
        {
            height: 21px;
            width: 122px;
        }
        .style11
        {
            height: 35px;
        }
        .style12
        {
            width: 138px;
            height: 35px;
        }
        .style13
        {
        }
        .style14
        {
            width: 138px;
            height: 28px;
        }
        .style15
        {
            width: 122px;
            height: 28px;
        }
        .style18
        {
            width: 122px;
            height: 95px;
        }
        .style19
        {
            height: 95px;
        }
        .style20
        {
            width: 138px;
            height: 95px;
        }
        .style21
        {
            width: 122px;
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
            <td class="style21">
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
            <td class="style3">
                </td>
            <td class="style4">
                </td>
            <td colspan="2" class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Label ID="Label1" runat="server" Text="New Division" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
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
            <td class="style3">
            </td>
            <td class="style4">
            </td>
            <td class="style10">
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
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style9">
                <asp:Label ID="Label2" runat="server" Text="Division Id"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;
                <asp:TextBox ID="txtdivisionid" runat="server" Height="16px" Width="133px"></asp:TextBox>
                <asp:DropDownList ID="ddldivisionid" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="divid" DataValueField="divid" 
                    Height="20px" Width="132px" AutoPostBack="True" 
                    onselectedindexchanged="ddldivisionid_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                    SelectCommand="SELECT [divid] FROM [division]"></asp:SqlDataSource>
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
            <td class="style11">
                </td>
            <td class="style12">
                </td>
            <td class="style11" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Division Name "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtdivisionname" runat="server"></asp:TextBox>
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
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style15">
                <asp:Label ID="Label4" runat="server" Text="Division Description"></asp:Label>
            </td>
            <td class="style13" rowspan="2">
                <asp:TextBox ID="txtdivisiondescription" runat="server" Height="107px" 
                    Width="410px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style19">
                </td>
            <td class="style20">
                </td>
            <td class="style18">
                </td>
            <td class="style19">
                </td>
            <td class="style19">
                </td>
            <td class="style19">
                </td>
            <td class="style19">
                </td>
            <td class="style19">
                </td>
            <td class="style19">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style21">
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
            <td class="style5" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnewdivision" runat="server" Text="New Division" 
                    onclick="btnnewdivision_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnmodify" runat="server" Text="Modify" 
                    onclick="btnmodify_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                    onclick="btncancel_Click" />
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
            <td class="style21">
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

