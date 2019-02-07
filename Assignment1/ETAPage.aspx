<%@ Page Title="" Language="C#" MasterPageFile="~/TicketForm.Master" AutoEventWireup="true" CodeBehind="ETAPage.aspx.cs" Inherits="Assignment1.ETAPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="ctr">Severity ETA</h3>
    <asp:Label ID="lblHeader" runat="server" Text="Label" CssClass="font-weight-bold"></asp:Label>
    <asp:Table ID="tblETAs" runat="server" CssClass="custom-center-table">
        
        <asp:TableHeaderRow >
            <asp:TableCell>
                Severity
            </asp:TableCell>
            <asp:TableCell>
                ETA
            </asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableRow ID="rowLow" runat="server">
                <asp:TableCell>Low:</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow ID="rowMedium" runat="server">
                <asp:TableCell>Medium:</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow ID="rowHigh" runat="server">
                <asp:TableCell>High:</asp:TableCell>
            </asp:TableRow>
        <asp:TableRow ID="rowSevere" runat="server">
                <asp:TableCell>Severe:</asp:TableCell>
            </asp:TableRow>
    </asp:Table>
</asp:Content>
