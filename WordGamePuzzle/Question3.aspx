﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question3.aspx.cs" Inherits="WordGamePuzzle.Question3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <p>Fill in the blan space with two words that you think is relevant to the word 
                    shown below.
                </p>
            </div>
        </div>
        
            <div class="row">
               <div class ="col">
                <asp:Label ID="lblWord1" runat="server"></asp:Label>
                   </div>
                <div class ="col">
                <asp:TextBox ID="txtWord1" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtWord2" runat="server"></asp:TextBox>
                    </div>

               
            </div>

        <div class ="row">

            <asp:Button ID="btn_Next" runat="server" OnClick="btn_Next_Click" Text="Next" />

            <asp:RequiredFieldValidator ID="cvword1" runat="server" ErrorMessage="Please select a valid english word" ForeColor="Red" ControlToValidate ="txtWord1">
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="cvword2" runat="server" ErrorMessage="Please select a valid english word" ForeColor="Red" ControlToValidate ="txtWord2">
            </asp:RequiredFieldValidator>
           <asp:CustomValidator ID="cvValidEnglishWordValidator" runat="server"  ErrorMessage="Please enter a valid english word" ForeColor="Red" OnServerValidate="cvValidEnglishWordValidator_ServerValidate" ></asp:CustomValidator>

        </div>
    
    </form>
</body>
</html>