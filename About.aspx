<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 401px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1 style="color: #333333; text-transform: capitalize; font-style: normal; font-weight: bold; ">
About
</h1>
<p></p>
    <table class="style1">
        <tr>
            <td align="center" class="style2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/asrao.PNG" />
            </td>
            <td style="color: #666666">
                <p class="MsoNormal" style="font-weight: bold">
                    &quot;Let us work up the embers of national pride latent in all of us and build up 
                    our morale so that we can confidently aim high and achieve greater goals&quot;<o:p></o:p></p>
                <p class="MsoNormal" style="font-weight: bold">
                    Dr. A.S.Rao,<o:p></o:p></p>
                <p class="MsoNormal" style="font-weight: bold">
                    Founder MD of ECIL <o:p></o:p>
                </p>
            </td>
        </tr>
    </table>
    <h2 style="font-size: medium">
        History
    </h2>
    <p style="font-weight: normal">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        ECIL was setup under the Department of Atomic Energy on 11th April, 1967 with a view to generate a strong  indigenous capability in the field of professional grade electronics. The initial accent was on total self-reliance and ECIL was engaged in the Design, Development, Manufacture and Marketing of several products with emphasis on three technology lines viz. Computers, Control Systems and Communications. Over the years, ECIL pioneered the development of various complex electronics products without any external technological help and scored several 'firsts' in these  fields prominent among them being country's
    </p>
    <p>
        &nbsp;</p>
    <asp:BulletedList ID="BulletedList1" runat="server" style="margin-top: 53px">
        <asp:ListItem>First Digital Computer</asp:ListItem>
        <asp:ListItem>First Solid State TV</asp:ListItem>
        <asp:ListItem>First Control &amp; Instrumentation of Nuclear Power Plants</asp:ListItem>
        <asp:ListItem>First Earth Station Antenna</asp:ListItem>
        <asp:ListItem>First Computerized Operator Information System</asp:ListItem>
        <asp:ListItem>First Radiation Monitoring &amp; Detection Systems</asp:ListItem>
        <asp:ListItem>First Automatic Message Switching Systems</asp:ListItem>
        <asp:ListItem>First Operation &amp; Maintenance Center For E-108 Exchange</asp:ListItem>
        <asp:ListItem>First Programmable Logic Controller</asp:ListItem>
        <asp:ListItem>First Solid State Cockpit Voice Recorder</asp:ListItem>
        <asp:ListItem>First Electronic Voting Machines</asp:ListItem>
    </asp:BulletedList>
    <h2 style="font-size: medium; height: 24px;">
        Vision</h2>
    <p class="MsoNormal" style="font-weight: normal">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        The company played a very significant role in the training and growth of high 
        caliber technical and managerial manpower especially in the fields of Computers 
        and Information Technology. Though the initial thrust<span 
            style="mso-spacerun:yes">&nbsp; </span>was on meeting the Control &amp; 
        Instrumentation requirements of the Nuclear Power Program, the expanded scope of 
        self-reliance pursued by ECIL enabled the company to develop various products to 
        cater to the needs of<span style="mso-spacerun:yes">&nbsp; </span>Defense, Civil 
        Aviation, Information &amp; Broadcasting, Telecommunications, Insurance, Banking, 
        Police, and Para-Military Forces, Oil &amp; Gas, Power, Space Education, Health, 
        Agriculture, Steel and Coal sectors and various user departments in the 
        Government domain. ECIL thus evolved as a multi-product company serving multiple 
        sectors of Indian economy with emphasis on import of country substitution and 
        development of products &amp; services that are of economic and strategic 
        significance to the country.</p>
    <p></p>
    <h2 style="font-size: medium; height: 40px;">
        &nbsp;</h2>
    <h2 style="font-size: medium; height: 40px;">
        Mission
    </h2>
    <p class="MsoNormal" style="font-weight: normal">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To 
        contribute to the country in acheving self reliance in strategic electronics.<o:p></o:p></p>
    <p class="MsoNormal" style="font-weight: normal">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        ECIL&#39;s mission is to consolidate its status as a valued national asset in the 
        area of strategic electronics with specific focus on Atomic Energy, Defense, 
        Security and such critical sectors of strategic national importance.<o:p></o:p></p>
    <h2 style="font-size: medium">
        Objective
    </h2>
    <p></p>
    <asp:BulletedList ID="BulletedList2" runat="server">
        <asp:ListItem>To continue services to the country&#39;s needs for the peaceful uses Atomic Energy. Special and Strategic requirements of Defence and Space, Electronics Security Systems and Support for Civil Aviation sector.</asp:ListItem>
        <asp:ListItem>To establish newer technology products such as Container Scanning Systems and Explosive Detectors.</asp:ListItem>
        <asp:ListItem>To explore new avenues of business and work for growth in strategic sectors in addition to working for realizing technological solutions for the benefit of society in areas like Agriculture, Education, Health, Power, Transportation, Food, Disaster Management etc.</asp:ListItem>
        <asp:ListItem>To progressively improve shareholder value of the company.</asp:ListItem>
        <asp:ListItem>To strengthen the technology base, enhance skill base and ensure succession planning in the company.</asp:ListItem>
        <asp:ListItem>To re-engineer the company to become nationally and internationally competitive by paying particular attention to delivery, cost and quality in all its activities.</asp:ListItem>
        <asp:ListItem>To consciously work for finding export markets for the company&#39;s products.</asp:ListItem>
    </asp:BulletedList>
    <p></p>
    <h2 style="font-size: medium">
        &nbsp;</h2>
    <p>&nbsp;</p>
    
</asp:Content>
