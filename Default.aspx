<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabWork10._Default" %>

<%@ Register Src="~/StudentControl.ascx" TagPrefix="uc1" TagName="StudentControl" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Пользовательский элемент управления</h1>
        <hr />
        <uc1:StudentControl runat="server" id="StudentControl" LastName="Иванов" YearOfEnrollment="2015" SubmitButtonText="Отправить" />
    </div>

</asp:Content>