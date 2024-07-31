<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="shaadi.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            height: 26px;
            width: 974px;
        }
        .style9
        {
            width: 974px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style6">
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: bold; font-size: 35px" class="style9">
                Register now</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
        </tr>
        
        
        <tr>
            <td class="style9">
                Name</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="name is required" 
                    SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style8">
                Age</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="age is required" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ErrorMessage="age should be greater than 18" 
                    ControlToValidate="TextBox5" ForeColor="Red" MaximumValue="60" 
                    MinimumValue="18" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        
        
        <tr>
            <td class="style8">
                Email</td>
        </tr>
        <tr>
            <td style="margin-left: 80px" class="style9">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="email is required" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="invalid email format" 
                    ForeColor="Red" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Password</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="password is required" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="password's length should be 4" 
                    onservervalidate="CustomValidator1_ServerValidate1" 
                    ControlToValidate="TextBox4" ForeColor="Red" SetFocusOnError="True"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Confirm password</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="confirmation is required" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="passwords should be same" ControlToCompare="TextBox4" 
                    ControlToValidate="TextBox7" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" Text="Register" 
                    onclick="Button1_Click" />
&nbsp;or&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                    onclick="Button2_Click" Text="Login" />
             </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>

    </table>
</asp:Content>
