<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #Admin1{

        }
        body{
            background-image: url("blue2.jpg");
             background-size:cover;
            background-attachment: fixed;
        }
    </style>
   
    
 
    <style>
        .Login {
  padding: 30px;
  width: 274px;
  background-color: #F7F7F7;
  margin: 0 auto 10px;
  border-radius: 15px;
  //box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
}

.Login h2 {
  font-weight: 100;
  text-align: center;
  font-size: 2.3em;
}
        body {
            background-image: url("blue2.jpg");
             background-size:cover;
            background-attachment: fixed;
        }
.Username{
    font-family:Georgia;
    font-size:large;
}
.Password{
    font-family:Georgia;
    font-size:large;
}
.button1{
    background-color:cornflowerblue;
    text-align:center;
    text-decoration-color:white;
    //color:lavender;
    font-family:Georgia;
    border-radius:25px;
    font-size:large;
}

    </style>
    <br /><br />
    <div class="Login">
        <h2>
           Admin Log-in
        </h2>
        <br />
        <formview>
                <asp:TextBox class="Username" ID="AUsername"  runat="server" placeholder="Username" Height="44px" style="margin-left: 0px" Width="100%"></asp:TextBox><br /><br />
                <asp:TextBox class="Password" ID="APassword" runat="server" TextMode="Password" placeholder="Password" Height="44px" style="margin-left: 0px" Width="100%"></asp:TextBox><br /><br />
                <asp:Button class="button1" ID="ALoginButton"  runat="server" Text="Login" Height="44px" style="margin-left: 0px" Width="100%" OnClick="Button1_Click2"></asp:Button>
                <asp:Label ID="Errormsg" runat="server" style="z-index: 1; left: 87px; top: 205px; position: absolute; width: 115px" Text=" "></asp:Label>

        </formview>
    </div>
    <style>
        .button1{
     background-color: #8099b8;
     text-shadow:#375cba;
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
            margin-left: 240px;
        }
    .button2{
     background-color: #8099b8;
     text-shadow:#375cba;
     border-radius:10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
   	font-size: 20px;
            margin-left: 328px;
        }
    #center{
        align-content:center;

    }
    </style>
    <div id="center">
        <br /><br />
    <asp:Button ID="Button2" CssClass="button2" runat="server" Text="Update Syllabus" Width="226px" Height="50px" OnClick="Button2_Click" />
    <asp:Button ID="Button1" CssClass="button1" runat="server" Text="Set Timetables" Width="226px" Height="50px" OnClick="Button1_Click" />
        <br /><br /><br />
        </div>
     
</asp:Content>

