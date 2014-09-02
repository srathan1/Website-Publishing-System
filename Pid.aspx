<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Pid.aspx.cs" Inherits="Pid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 49px;
    }
    .style3
    {
            width: 198px;
        }
    .style4
    {
        height: 49px;
        width: 198px;
    }
    .style5
    {
        width: 154px;
    }
    .style7
    {
        width: 154px;
        height: 20px;
    }
    .style8
    {
        height: 20px;
        width: 198px;
    }
    .style9
    {
        height: 20px;
    }
    .style10
    {
        width: 113px;
    }
    .style11
    {
        height: 20px;
        width: 113px;
    }
    .style12
    {
        height: 24px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style10">
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
        <td class="style4">
        </td>
        <td class="style2" colspan="5" align="center">
            <asp:Label ID="Label1" runat="server" Text="VIEW PRODUCTS BY PRODUCT ID" 
                Font-Bold="True" Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <td class="style8">
        </td>
        <td class="style7">
            <asp:Label ID="Label3" runat="server" Text="SELECT PRODUCT ID" Font-Bold="True"></asp:Label>
        </td>
        <td class="style11">
            <asp:DropDownList ID="ddlproductid" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="productid" 
                DataValueField="productid" AutoPostBack="True" Height="22px" Width="135px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                SelectCommand="SELECT [productid] FROM [products]"></asp:SqlDataSource>
        </td>
        <td class="style9">
        </td>
        <td class="style9">
        </td>
        <td class="style9">
        </td>
        <td class="style9">
        </td>
        <td class="style9">
        </td>
        <td class="style9">
        </td>
        <td class="style9">
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style10">
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
        <td class="style12" colspan="10">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView 
                ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="productid" DataSourceID="SqlDataSource2" Width="935px">
                <Columns>
                    <asp:BoundField DataField="productid" HeaderText="productid" ReadOnly="True" 
                        SortExpression="productid" />
                    <asp:BoundField DataField="divid" HeaderText="divid" SortExpression="divid" />
                    <asp:BoundField DataField="productname" HeaderText="productname" 
                        SortExpression="productname" />
                    <asp:BoundField DataField="description" HeaderText="description" 
                        SortExpression="description" />
                    <asp:ImageField DataImageUrlField="Url" HeaderText="Product Image">
                        <ControlStyle Height="125px" Width="125px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
                SelectCommand="SELECT * FROM [products] WHERE ([productid] = @productid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlproductid" Name="productid" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style10">
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
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style10">
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
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style10">
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
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style10">
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
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style10">
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

