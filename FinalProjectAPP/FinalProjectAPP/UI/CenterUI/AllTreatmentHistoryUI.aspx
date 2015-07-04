<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/CenterMasterPageUI.Master" AutoEventWireup="true" CodeBehind="AllTreatmentHistoryUI.aspx.cs" Inherits="FinalProjectAPP.UI.CenterUI.AllTreatmentHistoryUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TittlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderPlaceHolder" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            width: 197px;
            height: 30px;
        }
        .auto-style3 {
            width: 197px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            width: 197px;
            height: 32px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    
    
     <table style="width: 100%; height: 144px;">
        <tr>
        <td class="auto-style3"> <asp:Label ID="Label1" runat="server" Text="Voter ID"></asp:Label> </td>  
                <td class="auto-style4"> <asp:TextBox ID="voterIdTextBox" runat="server" Width="150px"></asp:TextBox> <asp:Button ID="show" runat="server" Text="Show" Width="87px" OnClick="show_Click" />
                    <asp:Button ID="Pdf" runat="server" Text="Pdf" Width="87px" OnClick="Pdf_Click" />
            </td>
                <td class="auto-style4"> </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Name</td>
               <td>
                   <asp:TextBox ID="nameTextBox" runat="server" Width="150px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 197px">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label> </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" TextMode="MultiLine" Height="76px" Width="151px"></asp:TextBox>  </td>
               
            </tr>
            <tr>
                <td class="auto-style1" style="width: 197px">
                    Date of Birth</td>
               <td>
                   <asp:TextBox ID="ageTextBox" runat="server" Width="150px"></asp:TextBox>
                    </td>
             
    </table>
    <div id="Content" runat="server">
        
    </div>
   

</asp:Content>
