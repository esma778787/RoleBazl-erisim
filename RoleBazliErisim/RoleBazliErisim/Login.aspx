<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RoleBazliErisim.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Kullanıcı Girişi</h3>
            <table>
                <tr>
                    <td>Kullanıcı adı:</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Şifre :</td>
                    <td>
                        <asp:TextBox ID="txtSifre" TextMode="Password"
                            runat="server" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnLogin"  OnClick="btnLogin_Click" Text="Log In"
                runat="server" />
            <p>
                <asp:Label ID="Msg" ForeColor="red" runat="server" />
            </p>
        </div>
    </form>
</body>
</html>
