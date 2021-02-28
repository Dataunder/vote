<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Myapp.admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="../CSS/bootstrap.css" rel="stylesheet" />
    <style>
        .content {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            min-width: 1000px;
            z-index: -10;
            zoom: 1;
            background-color: #fff;
            background: url("../Image/background2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-position: center 0;
        }

        #login {
            width: 655px;
            height: 281px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            border: ridge
        }

        span {
            display: inline-block;
            max-width: 100%;
            text-align: right;
            margin-top: 0px;
            width: 30%
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <div id="login">
                <asp:Label ID="Label3" runat="server" Text="欢迎管理员登录" Width="490px" Style="font-size: 50px; font-family:'Segoe UI'"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="用户名" Height="40px" Width="198px" Style="font-size:20px;font-family:'Microsoft Sans Serif'" ></asp:Label>
                <asp:TextBox ID="username" runat="server" Height="27px" Width="258px" CssClass="form-control" style="display:inline"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="密码" Height="40px" Width="198px" Style="font-size:20px;font-family:'Microsoft Sans Serif'"></asp:Label>
                <asp:TextBox ID="pwd" runat="server" Height="28px" Width="257px" TextMode="Password" CssClass="form-control" style="display:inline"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="52px" Text="登录" Width="182px" Style="margin-left: 243px" CssClass="btn btn-default"/>
                <br />
            </div>
        </div>
    </form>
    <script src="../Scripts/jquery-3.4.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>

