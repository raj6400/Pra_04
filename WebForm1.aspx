<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
    <style>
        /* Page layout */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg,#f0f4ff 0%,#e8fff5 100%);
            margin: 0;
            padding: 40px 0;
            color: #222;
        }

        /* Form card */
        #form1 {
            width: 420px;
            margin: 0 auto;
            background: #fff;
            padding: 24px 28px;
            border-radius: 10px;
            box-shadow: 0 6px 18px rgba(35,47,90,0.12);
        }

        #form1 p {
            margin: 12px 0;
            line-height: 1.4;
        }

        #form1 p:first-child {
            text-align: center;
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 18px;
            color: #0b3a66;
        }

        /* Inputs */
        input[type="text"], input[type="password"], input[type="email"], select, input[type="tel"] , .asp-textbox {
            width: calc(100% - 12px);
            padding: 8px 6px;
            border: 1px solid #ccd6ea;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
        }

        /* Radio and labels */
        input[type="radio"] {
            margin-right: 6px;
        }

        /* Buttons */
        input[type="submit"], input[type="reset"] {
            background: #0b66c3;
            color: #fff;
            border: none;
            padding: 8px 14px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 600;
            margin-right: 8px;
        }

        input[type="reset"] {
            background: #6b7a91;
        }

        /* Small screens */
        @media (max-width: 480px) {
            #form1 { width: 92%; padding: 16px; }
        }

        /* Inline validator style: red checkbox icon + message */
        .validatorMessage {
            color: #c62828; /* red */
            font-size: 13px;
            display: inline-block;
            margin-left: 6px;
        }

        /* removed check icon */

        /* Style to highlight invalid input fields with red box */
        .invalidField {
            border: 2px solid #c62828 !important;
            box-shadow: 0 0 4px rgba(198,40,40,0.25);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- ValidationSummary removed as inline field validators will display messages next to fields -->
        <p>
            ONLINE EVENT REGISTRATION PORTAL
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
            NAME&nbsp; :
            <asp:TextBox ID="TextBoxName" runat="server" CssClass="asp-textbox" /></p>
        <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Name is required." Text="Name is required." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            EMAIL :
            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="asp-textbox" /></p>
        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required." Text="Email is required." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid email." Text="Enter a valid email." ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            PASSWORD :&nbsp;
            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" CssClass="asp-textbox" /></p>
        <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password is required." Text="Password is required." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            CONFIRM PASSWORD :&nbsp;
            <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password" CssClass="asp-textbox" /></p>
        <asp:RequiredFieldValidator ID="reqConfirm" runat="server" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Confirm password is required." Text="Confirm password is required." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <asp:CompareValidator ID="cmpPasswords" runat="server" ControlToValidate="TextBoxConfirmPassword" ControlToCompare="TextBoxPassword" ErrorMessage="Passwords do not match." Text="Passwords do not match." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            BRANCH :&nbsp;
            <asp:TextBox ID="TextBoxBranch" runat="server" CssClass="asp-textbox" />
        </p>
        <asp:RequiredFieldValidator ID="reqBranch" runat="server" ControlToValidate="TextBoxBranch" ErrorMessage="Branch is required." Text="Branch is required." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            GR NO.&nbsp; <asp:TextBox ID="TextBoxGR" runat="server" CssClass="asp-textbox" /></p>
        <asp:RegularExpressionValidator ID="revGR" runat="server" ControlToValidate="TextBoxGR" ErrorMessage="GR must be numeric." Text="GR must be numeric." ValidationExpression="^\d+$" Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            ROLL NO.
            <asp:TextBox ID="TextBoxRoll" runat="server" CssClass="asp-textbox" /></p>
        <asp:RegularExpressionValidator ID="revRoll" runat="server" ControlToValidate="TextBoxRoll" ErrorMessage="Roll No must be numeric." Text="Roll No must be numeric." ValidationExpression="^\d+$" Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            DIVISION :<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="">-- Select --</asp:ListItem>
                <asp:ListItem>5EC1</asp:ListItem>
                <asp:ListItem>5EC2</asp:ListItem>
                <asp:ListItem>5EC3</asp:ListItem>
                <asp:ListItem>5EC4</asp:ListItem>
                <asp:ListItem>5EC5</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:RequiredFieldValidator ID="reqDivision" runat="server" ControlToValidate="DropDownList1" InitialValue="" ErrorMessage="Please select a division." Text="Please select a division." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            MOBILE NO. <asp:TextBox ID="TextBoxMobile" runat="server" CssClass="asp-textbox" /></p>
        <asp:RequiredFieldValidator ID="reqMobile" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Mobile is required." Text="Mobile is required." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Enter a valid 10-digit mobile number." Text="Enter a valid 10-digit mobile number." ValidationExpression="^\d{10}$" Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            DATE OF BIRTH : <asp:TextBox ID="TextBoxDOB" runat="server" CssClass="asp-textbox" />
            <asp:Calendar ID="Calendar1" runat="server" AutoPostBack="True" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        </p>
        <asp:RequiredFieldValidator ID="reqDOB" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Date of birth is required." Text="Date of birth is required." Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            GENDER :
            <asp:RadioButton ID="MALE" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="MALE " />
&nbsp;<asp:RadioButton ID="FEMALE" runat="server" GroupName="Gender" Text="FEMALE" />
        </p>
        <asp:CustomValidator ID="cvGender" runat="server" ErrorMessage="Please select gender." Text="Please select gender." OnServerValidate="cvGender_ServerValidate" Display="Dynamic" CssClass="validatorMessage" ForeColor="Red" />
        <p>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" CssClass="submitBtn" />&nbsp;
            <input id="Reset1" type="reset" value="reset" /></p>
        <asp:Label ID="lblResult" runat="server" ForeColor="Green" />

    <script type="text/javascript">
        (function () {
            function updateFieldStyles() {
                if (typeof (Page_Validators) === 'undefined') return;
                for (var i = 0; i < Page_Validators.length; i++) {
                    var v = Page_Validators[i];
                    var ctrlId = v.controltovalidate;
                    if (!ctrlId) continue;
                    var ctrl = document.getElementById(ctrlId);
                    if (!ctrl) continue;
                    if (!v.isvalid) {
                        ctrl.classList.add('invalidField');
                    } else {
                        ctrl.classList.remove('invalidField');
                    }
                }
            }

            var originalUpdate = window.ValidatorUpdateDisplay;
            window.ValidatorUpdateDisplay = function (validator) {
                if (originalUpdate) originalUpdate(validator);
                try { updateFieldStyles(); } catch (e) { }
            };

            // Also run once on page load to reflect server-side validation state
            if (window.addEventListener) window.addEventListener('load', updateFieldStyles);
            else if (window.attachEvent) window.attachEvent('onload', updateFieldStyles);
        })();
    </script>
    </form>
</body>
</html>
