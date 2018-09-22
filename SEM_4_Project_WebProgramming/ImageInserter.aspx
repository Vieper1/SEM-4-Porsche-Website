<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageInserter.aspx.cs" Inherits="SEM_4_Project_WebProgramming.ImageInserter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-family: 'Agency FB'; color: white; background-image: url('Resources/background.png'); background-size: 5%; background-repeat: repeat; background-attachment: scroll;">
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Enter Car ID</td>
                <td><asp:TextBox ID="car_id" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Upload Image</td>
                <td><asp:FileUpload ID="imageupload" runat="server" /></td>
            </tr>
            <tr>
                <td>Image Name</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="uploadtodb" runat="server" Text="Upload" OnClick="uploadtodb_Click" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
