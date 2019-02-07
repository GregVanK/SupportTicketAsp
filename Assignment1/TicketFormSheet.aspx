<%@ Page Title="" Language="C#" MasterPageFile="~/TicketForm.Master" AutoEventWireup="true" CodeBehind="TicketFormSheet.aspx.cs" Inherits="Assignment1.TicketForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="supportform" runat="server" class="ctr">
        <asp:Label ID="lblShortDesc" runat="server" Text="Short Description: "></asp:Label><br />
        <asp:TextBox ID="txtShortDesc" runat="server" ValidationGroup="validateTicket"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqShortDesc" runat="server"
            EnableClientScript="false"
            ErrorMessage="Short Description is Required"
            ControlToValidate="txtShortDesc"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="lblTechncian" runat="server" Text="Technician: "></asp:Label><br />
        <asp:DropDownList ID="ddlTechnician" runat="server" AppendDataBoundItems="true" ValidationGroup="validateTicket">
            <asp:ListItem Value="">--Select a Technician--</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="reqTechnician" runat="server"
            ErrorMessage="Technician is Required"
            ControlToValidate="ddlTechnician"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="lblState" runat="server" Text="State: "></asp:Label><br />
        <asp:DropDownList ID="ddlState" runat="server" AppendDataBoundItems="true" ValidationGroup="validateTicket">
            <asp:ListItem Value="">--Select a State--</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="reqState" runat="server"
            ErrorMessage="State is Required"
            ControlToValidate="ddlState"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="lblStatus" runat="server" Text="Ticket Status: "></asp:Label><br />
        <asp:RadioButtonList ID="rblStatus" runat="server" ValidationGroup="validateTicket" CssClass="custom-center-item">
            <asp:ListItem Text="Open" Value="Open"></asp:ListItem>
            <asp:ListItem Text="Closed" Value="Closed"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="reqStatus" runat="server"
            ErrorMessage="Status is Required"
            ControlToValidate="rblStatus"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i> 
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="lblSeverity" runat="server" Text="Severity: "></asp:Label><br />
        <asp:DropDownList ID="ddlServirty" runat="server" AppendDataBoundItems="true" ValidationGroup="validateTicket">
            <asp:ListItem Value="">--Select a Severity--</asp:ListItem>
        </asp:DropDownList><br />
        <asp:RequiredFieldValidator ID="reqSeverities" runat="server" 
            ErrorMessage="Severities is Required"
            ControlToValidate="ddlServirty"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="lblDateOpened" runat="server" Text="Date Opened: " ></asp:Label><br />
        <asp:Calendar ID="calDateOpened" runat="server" CssClass="custom-center-item"
            BackColor="White" BorderColor="#3366CC"
            BorderWidth="1px" CellPadding="1"
            DayNameFormat="Shortest"
            Font-Names="Verdana" Font-Size="8pt"
            ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="calDateOpened_SelectionChanged">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <asp:TextBox ID="txtDateOpened" runat="server" ValidationGroup="validateTicket"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqDateOpened" runat="server"
            ErrorMessage="Date Opened is Required"
            ControlToValidate="txtDateOpened"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="lblDateClosed" runat="server" Text="Date Closed: " ></asp:Label><br />
        <asp:Calendar ID="calDateClosed" runat="server" CssClass="custom-center-item"
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
        </asp:Calendar><br />
        <asp:TextBox ID="txtDateClose" runat="server" ValidationGroup="validateTicket"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqDateClosed" runat="server"
            ErrorMessage="Date Closed is Required"
            ControlToValidate="txtDateClose"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvtxtStartDate" runat="server"
            ControlToCompare="txtDateOpened"
            Display="Dynamic"
            ControlToValidate="txtDateClose"
            ErrorMessage="Opened date must be before the Closed Date"
            Type="Date" SetFocusOnError="true" Operator="GreaterThanEqual"
            Text="Opened date must be before the Closed Date" ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:CompareValidator>
        <br />

        <asp:Label ID="lblLongDesc" runat="server" Text="Long Desc: "></asp:Label><br />
        <asp:TextBox ID="txtLongDesc" TextMode="MultiLine" runat="server" ValidationGroup="validateTicket"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqLongDesc" runat="server"
            ErrorMessage="Long Description is Required"
            ControlToValidate="txtLongDesc"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="lblActionTaken" runat="server" Text="Action Taken: "></asp:Label><br />
        <asp:TextBox ID="txtActionTaken" TextMode="MultiLine" runat="server" ValidationGroup="validateTicket"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqActionTaken" runat="server"
            ErrorMessage="Action Taken is Required"
            ControlToValidate="txtActionTaken"
            ValidationGroup="validateTicket">
            <i class="fas fa-exclamation-circle" style="color:red"></i>
        </asp:RequiredFieldValidator><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="validateTicket" />
        <br />
        <br />

        <asp:LinkButton ID="lbtnSubmit" CssClass="btn btn-primary" runat="server" OnClick="lbtnSubmit_Click" ValidationGroup="validateTicket">Submit</asp:LinkButton>
    </div>
    <div runat="server" id="supportresults" visible="false">
        <asp:Table ID="tblResults" runat="server" CssClass="custom-center-table">
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
            <asp:TableRow ID="rowETA" runat="server">
                <asp:TableCell>Date of ETA:</asp:TableCell>
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
