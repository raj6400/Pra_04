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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            ONLINE EVENT REGISTRATION PORTAL
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
            NAME&nbsp; :
            <input id="Text1" type="text" /></p>
        <p>
            EMAIL :
            <input id="Text2" type="text" /></p>
        <p>
            PASSWORD :&nbsp;
            <input id="Password1" type="password" /></p>
        <p>
            GR NO.&nbsp; <input id="Text4" type="text" /></p>
        <p>
            ROLL NO.
            <input id="Text5" type="text" /></p>
        <p>
            DIVISION :<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>5EC1</asp:ListItem>
                <asp:ListItem>5EC2</asp:ListItem>
                <asp:ListItem>5EC3</asp:ListItem>
                <asp:ListItem>5EC4</asp:ListItem>
                <asp:ListItem>5EC5</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            MOBILE NO. <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            GENDER :
            <asp:RadioButton ID="MALE" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="MALE " />
&nbsp;<asp:RadioButton ID="FEMALE" runat="server" Text="FEMALE" />
        </p>
        <p>
            <input id="SUBMIT" type="submit" value="submit" />&nbsp;
            <input id="Reset1" type="reset" value="reset" /></p>
    </form>
</body>
</html>
