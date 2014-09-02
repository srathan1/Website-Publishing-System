<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
       <h2>
        Welcome !
    </h2>
 <table class="style1">
           <tr>
               <td class="style3">
    <asp:Panel  ID="Panel1"  runat="server" Height="354px" 
        style="margin-left: 50px; margin-top: 0px;" Width="407px">
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/adrot1.xml" Height="300px" Width="400px" />
        &nbsp;</asp:Panel>
               </td>
               <td>
                   <asp:Panel ID="Panel2" runat="server" Height="384px">
                       <br />
                      
                       <asp:Image ID="Image1" runat="server" Height="124px" ImageUrl="~/asrao.PNG" 
                           Width="104px" />
                       <br />
                      
                       <br />
                       <marquee direction= Up scroll scrollspeed=15 onmouseover = me.scrollamount= 0 onmouseout= me.scrollamount=2.5><asp:Label ID="Label1" runat="server" Font-Bold="True" 
                           
                           Text="&quot;Let us work up the embers of national pride latent in all of us and build up our morale so that we can confidently aim high and achieve greater goals&quot; " 
                           Font-Size="Medium"></asp:Label>
                       &nbsp;<br />
                       <br />
                       <asp:Label ID="Label2" runat="server" Font-Bold="True" Text=" Dr. A.S.Rao," 
                           Font-Size="Large"></asp:Label>
                       <br />
                       <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                           Text="Founder MD of ECIL" Font-Size="Large"></asp:Label></marquee>
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </asp:Panel>
               </td>
           </tr>
       </table>
    <meta http-equiv="refresh" content="5" />
    </asp:Content>


