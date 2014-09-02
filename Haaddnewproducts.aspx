<%@ Page Title="" Language="C#" MasterPageFile="~/HA.master" AutoEventWireup="true" CodeFile="Haaddnewproducts.aspx.cs" Inherits="Haaddnewproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 248px;
        }
        .style7
        {
            width: 210px;
        }
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style6">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style7">
                &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    Text=" New Products Details" Font-Bold="True" Font-Size="Large"></asp:Label>
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style7">
                &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label2" runat="server" Text="Division ID"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="ddldivid" runat="server"></asp:TextBox>
        </td>
        <td class="style7">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                    SelectCommand="SELECT [divid] FROM [division]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label4" runat="server" Text="Product ID"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtproductid" runat="server"></asp:TextBox>
            <asp:DropDownList ID="ddlproductid" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="productid" 
                    DataValueField="productid" Height="22px" Width="128px" 
                    onselectedindexchanged="ddlproductid_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td class="style7">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                    
                SelectCommand="SELECT [productid] FROM [products] WHERE ([divid] = @divid)">
                <SelectParameters>
                    <asp:SessionParameter Name="divid" SessionField="divid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label5" runat="server" Text="Product Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtproductname" runat="server"></asp:TextBox>
        </td>
        <td class="style7">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label8" runat="server" Text="Product Image "></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnview" runat="server" Height="22px" onclick="btnview_Click" 
                    Text="view" Width="111px" />
        </td>
        <td class="style7">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label6" runat="server" Text="Product Description"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdescription" runat="server" Height="95px" 
                    TextMode="MultiLine" Width="252px"></asp:TextBox>
        </td>
        <td class="style7">
            <asp:Image ID="imgbox" runat="server" Height="94px" Width="96px" />
        </td>
    </tr>
    <tr>
        <td class="style6" align="right">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style7">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style6" align="right">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnnew" runat="server" Text="New" Width="56px" 
                    onclick="btnnew_Click" />
            <asp:Button ID="btnmodify" runat="server" Text="Modify" 
                    onclick="btnmodify_Click" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                    onclick="btncancel_Click" />
        </td>
        <td class="style7">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td class="style7">
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

