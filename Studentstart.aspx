<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Studentstart.aspx.cs" Inherits="Studentstart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .Sul{
            list-style-type:none;
            margin:0;
            height:100px;
            padding:0;
        }
        a{
            display:block;
            width:200px;
            background-color:lightblue;
          
            
        }
    </style>
    <div class="Sul">
    <ul>
        <li><a href="CheckSyllabus.aspx">Check Syllabus</a></li>
        <li><a href="Table.aspx">Check Timetable</a></li>
    </ul>
        </div>
</asp:Content>

