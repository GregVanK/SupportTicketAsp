<%@ Page Title="" Language="C#" MasterPageFile="~/TicketForm.Master" AutoEventWireup="true" CodeBehind="TicketFormSheet.aspx.cs" Inherits="Assignment1.TicketForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ID="supportform" runat="server">
    <asp:Label ID="lblShortDesc" runat="server" Text="Short Description: "></asp:Label>
    <asp:TextBox ID="txtShortDesc" runat="server"></asp:TextBox><br />
    
    <asp:Label ID="lblTechncian" runat="server" Text="Technician: "></asp:Label>
    <asp:DropDownList ID="ddlTechnician" runat="server" AppendDataBoundItems="true">
        <asp:ListItem Value="0">--Select a Technician--</asp:ListItem>
    </asp:DropDownList><br />

    <asp:Label ID="lblState" runat="server" Text="State: "></asp:Label>
    <asp:DropDownList ID="ddlState" runat="server" AppendDataBoundItems="true">
        <asp:ListItem Value="0">--Select a State--</asp:ListItem>
    </asp:DropDownList><br />

    <asp:Label ID="lblStatus" runat="server" Text="Ticket Status: "></asp:Label>
    <asp:RadioButtonList ID="rblStatus" runat="server">
        <asp:ListItem Text="Open" Value="Open"></asp:ListItem>
        <asp:ListItem Text="Closed" Value="Closed"></asp:ListItem>
    </asp:RadioButtonList><br />

    <asp:Label ID="lblSeverity" runat="server" Text="Severity: " ></asp:Label>
    <asp:DropDownList ID="ddlServirty" runat="server" AppendDataBoundItems="true">
        <asp:ListItem Value="0">--Select a Severity--</asp:ListItem>
    </asp:DropDownList><br />
    <asp:Label ID="lblDateOpened" runat="server" Text="Date Opened: "></asp:Label>
    <asp:Calendar ID="calDateOpened" runat="server"
                            BackColor="White" BorderColor="#3366CC"
                            BorderWidth="1px" CellPadding="1"
                            DayNameFormat="Shortest"
                            Font-Names="Verdana" Font-Size="8pt"
                            ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="calDateOpened_SelectionChanged" >
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        <asp:TextBox ID="txtDateOpened" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblDateClosed" runat="server" Text="Date Closed: "></asp:Label>
    <asp:Calendar ID="calDateClosed" runat="server"
                            BackColor="White" BorderColor="#3366CC"
                            BorderWidth="1px" CellPadding="1"
                            DayNameFormat="Shortest"
                            Font-Names="Verdana" Font-Size="8pt"
                            ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="calDateClosed_SelectionChanged">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        <asp:TextBox ID="txtDateClose" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblLongDesc" runat="server" Text="Long Desc: "></asp:Label>
    <asp:TextBox ID="txtLongDesc" TextMode="MultiLine" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblActionTaken" runat="server" Text="Action Taken: "></asp:Label>
    <asp:TextBox ID="txtActionTaken" TextMode="MultiLine" runat="server"></asp:TextBox><br />
    <asp:LinkButton ID="lbtnSubmit"  CssClass="btn btn-primary" runat="server" OnClick="lbtnSubmit_Click">Submit</asp:LinkButton>
</div>
<div runat="server" ID="supportresults"  visible="false">
    <asp:Table ID="tblResults" runat="server">
        <asp:TableRow ID="rowSDesc" runat="server">
            <asp:TableCell>Short Description:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowTechnician" runat="server">
            <asp:TableCell>Technician:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowState" runat="server">
            <asp:TableCell>State:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowStatus" runat="server">
            <asp:TableCell>Status:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowSeverity" runat="server">
            <asp:TableCell>Severity:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowDateOpened" runat="server">
            <asp:TableCell>Date Opened:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowDateClosed" runat="server">
            <asp:TableCell>Date Closed:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowLongDesc" runat="server">
            <asp:TableCell>Long Description:</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="rowActionTaken" runat="server">
            <asp:TableCell>Action Taken:</asp:TableCell>
        </asp:TableRow>

    </asp:Table>
</div>

    
</asp:Content>
