<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Myapp.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>ע��ҳ</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <style>
        span {
            display: inline-block;
            max-width: 100%;
            text-align: right;
            margin-bottom: 15px;
            margin-top: 0px;
            width: 30%
        }

        #register {
            width: 750px;
            height: 450px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            border: ridge
        }

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
            background: url("Image/background.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-position: center 0;
        }
    </style>
    <script>

        function removestyle(x) {
            if ((x.value == "��xxx@xxx.com") || x.value == "11λ,ȫ����,������ͨ�ĺ���" || x.value == "���д��ʲô") {
                x.value = "";
                x.style.fontStyle = "normal";
                x.style.color = "black";
            }

        }

        function setstylea(x) {
            if (!x.value) {
                x.value = "��xxx@xxx.com";
                x.style.fontStyle = "italic";
                x.style.color = "grey";
            }

        }

        function setstyleb(x) {
            if (!x.value) {
                x.value = "11λ,ȫ����,������ͨ�ĺ���";
                x.style.fontStyle = "italic";
                x.style.color = "grey";
            }

        }
        function setstylec(x) {
            if (!x.value) {

                x.value = "���д��ʲô";
                x.style.fontStyle = "italic";
                x.style.color = "grey";
            }

        }



    </script>
</head>
<body>
    <div class="content">
        <form id="form1" runat="server">
            <div id="register">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <div>
                    <h1 style="text-align: center; color: #fd0000; font-family: �����п�,sans-serif;">�����������ϸ��Ϣ</h1>
                </div>
                <div>
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="�û���"></asp:Label>
                        <asp:TextBox ID="username" runat="server" Width=" 170px"></asp:TextBox>
                        <asp:Button ID="Button4" runat="server" Height="27px" Style="margin-right: 0px" Text="��֤" Width="99px" ValidationGroup="1" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="�û�������Ϊ��" ForeColor="Red" Style="text-align: left" Width="178px" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="�û��������Ϲ淶��" Style="text-align: left" Width="220px" ForeColor="Red" ValidationExpression="^[a-zA-Z]\w{4,16}[a-zA-Z0-9]$" ControlToValidate="username" Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="�û��Ѵ���" Width="201px" ControlToValidate="username" Display="Dynamic" ForeColor="Red" ValidationGroup="1"></asp:CustomValidator>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div>
                                <asp:Label ID="Label2" runat="server" Text="����"></asp:Label>
                                <asp:TextBox ID="pwd1" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd1" ErrorMessage="���벻��Ϊ��" Display="Dynamic" ForeColor="Red" Style="text-align: left;" Width="158px"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="���벻���Ϲ淶" Style="text-align: left;" Width="199px" Height="25px" ForeColor="Red" ControlToValidate="pwd1" ValidationExpression="^[^\\\$]{6,16}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:Label ID="Label3" runat="server" Text="ȷ������"></asp:Label>
                                <asp:TextBox ID="pwd2" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="��������ͬ������" Style="text-align: left" Width="263px" Height="28px" ForeColor="Red" ControlToValidate="pwd2" ControlToCompare="pwd1"></asp:CompareValidator>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Label ID="Label4" runat="server" Text="�Ա�"></asp:Label>
                    <asp:RadioButton ID="sex1" runat="server" Text="��" GroupName="group1" />
                    <asp:RadioButton ID="sex2" runat="server" Text="Ů" GroupName="group1" />
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label5" runat="server" Text="����"></asp:Label>
                            <asp:DropDownList ID="province" runat="server" Height="16px" Width="64px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="����">����</asp:ListItem>
                                <asp:ListItem Value="����">����</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="city" runat="server" Height="16px" Width="64px" AutoPostBack="true">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div>
                        <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="email" runat="server" Width="170px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Email��ʽ������Ҫ��" ControlToValidate="email" ValidationExpression="^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$" Height="28px" Width="239px" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="phone" runat="server" Width="170px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="�ֻ��Ų�����Ҫ��" ControlToValidate="phone" ValidationExpression="^(130|135)\d{8}$" Height="25px" Width="206px" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <asp:Label ID="Label13" runat="server" Text=" "></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="�ύ" Style="margin-top: 15px" CssClass="btn btn-default" />
                    &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="����" Style="margin-top: 15px" CssClass="btn btn-default"/>
                    <br />
                </div>
            </div>
        </form>
    </div>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
