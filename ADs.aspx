<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ADs.aspx.cs" Inherits="ADs" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Latest Products:</h2>
<p align="center">
    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ADS.xml" 
        Height="250px" Width="300px" />
    </p>
    <p align="left">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="productid" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" style="margin-left: 100px" Width="734px" RowStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="productid" HeaderText="Product ID" ReadOnly="True" 
                    SortExpression="productid" />
                <asp:BoundField DataField="title" HeaderText="Product" SortExpression="title" />
                <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                <asp:BoundField DataField="prodescription" HeaderText="Description" 
                    SortExpression="prodescription" />
                <asp:ImageField DataImageUrlField="Url">
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:wpsConnectionString %>" 
            SelectCommand="SELECT * FROM [products] WHERE ([productid] = @productid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="productid" 
                    QueryStringField="SELECT productid from ads where productid is not null" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

