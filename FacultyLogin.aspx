<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FacultyLogin.aspx.cs" Inherits="FacultyLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <style>
        .Login {
  padding: 30px;
  width: 274px;
  background-color: #F7F7F7;
  margin: 0 auto 10px;
  border-radius: 15px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  //overflow: hidden;
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
   
    <div class="Login">
        <h2>
           Teacher Log-in
        </h2>
        <br />
        <formview>
                <asp:TextBox class="Username" ID="TextBoxmno"  runat="server" placeholder="Mobile Number" Height="44px" style="margin-left: 0px" Width="100%"></asp:TextBox><br /><br />
                <asp:TextBox class="Password" ID="TextBoxpass" runat="server" TextMode="Password" placeholder="Password" Height="44px" style="margin-left: 0px" Width="100%"></asp:TextBox><br /><br />
                <asp:Button class="button1" ID="Button1"  runat="server" Text="Login" Height="44px" style="margin-left: 0px" Width="100%" OnClick="Button1_Click"></asp:Button>
        <asp:Label ID="Errormsg" runat="server" Text=""></asp:Label>
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
    <asp:Button ID="Button3" CssClass="button2" runat="server" Text="Update Syllabus" Width="226px" Height="50px" OnClick="Button3_Click" />
      
    <asp:Button ID="Button2" CssClass="button1" runat="server" Text="Check Timetables" Width="226px" Height="50px" OnClick="Button2_Click" />
        <br /><br /><br />
      
        </div>
</asp:Content>

