<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentControl.ascx.cs" Inherits="LabWork10.StudentControl" %>

<div class="card">
    <div class="card-header bg-primary text-white">
        <h5>Регистрационная форма студента</h5>
    </div>
    <div class="card-body">
        <div class="form-row">
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelLastName" runat="server" Text="Фамилия" AssociatedControlID="TextBoxLastName"></asp:Label>
                    <asp:TextBox ID="TextBoxLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBoxLastName" ValidationGroup="g" ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="Не указана фамилия" Display="Dynamic">
                        <p class="text-danger">Не указана фамилия</p>
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelGender" runat="server" Text="Пол" AssociatedControlID="RadioButtonListGender"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                        <asp:ListItem Value="Мужской" Text="&nbsp;Мужской" class="mr-3"></asp:ListItem>
                        <asp:ListItem Value="Женский" Text="&nbsp;Женский" class="mr-3"></asp:ListItem>
                        <asp:ListItem Value="Другой" Text="&nbsp;Другой"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ControlToValidate="RadioButtonListGender" ValidationGroup="g" ID="RequiredFieldValidatorGender" runat="server" ErrorMessage="Не указан пол" Display="Dynamic">
                        <p class="text-danger">Не указан пол</p>
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelFirstName" runat="server" Text="Имя" AssociatedControlID="TextBoxFirstName"></asp:Label>
                    <asp:TextBox ID="TextBoxFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBoxFirstName" ValidationGroup="g" ID="RequiredFieldValidatorFirstName" runat="server" ErrorMessage="Не указано имя" Display="Dynamic">
                        <p class="text-danger">Не указано имя</p>
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelFaculty" runat="server" Text="Факультет" AssociatedControlID="DropDownListFaculty"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownListFaculty" runat="server" CssClass="form-control">
                        <asp:ListItem Value="" Text="Не выбран"></asp:ListItem>
                        <asp:ListItem Value="ИТ" Text="ИТ"></asp:ListItem>
                        <asp:ListItem Value="ТОВ" Text="ТОВ"></asp:ListItem>
                        <asp:ListItem Value="ИЭ" Text="ИЭ"></asp:ListItem>
                        <asp:ListItem Value="ХТиТ" Text="ХТиТ"></asp:ListItem>
                        <asp:ListItem Value="ЛХ" Text="ЛХ"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ControlToValidate="DropDownListFaculty" ValidationGroup="g" ID="RequiredFieldValidatorFaculty" runat="server" ErrorMessage="Не указан факультет" Display="Dynamic">
                        <p class="text-danger">Не указан факультет</p>
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelMiddleName" runat="server" Text="Отчество" AssociatedControlID="TextBoxMiddleName"></asp:Label>
                    <asp:TextBox ID="TextBoxMiddleName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelGroup" runat="server" Text="Группа" AssociatedControlID="TextBoxGroup"></asp:Label>
                    <asp:TextBox ID="TextBoxGroup" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBoxGroup" ValidationGroup="g" ID="RequiredFieldValidatorGroup" runat="server" ErrorMessage="Не указан номер группы" Display="Dynamic">
                        <p class="text-danger">Не указан номер группы</p>
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ControlToValidate="TextBoxGroup" ValidationGroup="g" Type="Integer" MinimumValue="1" MaximumValue="100" ID="RangeValidatorGroup" runat="server" ErrorMessage="Номер группы должен находиться в пределах [1, 100]" Display="Dynamic">
                        <p class="text-danger">Номер группы должен находиться в пределах [1, 100]</p>
                    </asp:RangeValidator>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelDateOfBirth" runat="server" Text="Дата рождения" AssociatedControlID="TextBoxDateOfBirth"></asp:Label>
                    <asp:TextBox ID="TextBoxDateOfBirth" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBoxDateOfBirth" ValidationGroup="g" ID="RequiredFieldValidatorDateOfBirth" runat="server" ErrorMessage="Не указана дата рождения" Display="Dynamic">
                        <p class="text-danger">Не указана дата рождения</p>
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <asp:Label ID="LabelYearOfEnrollment" runat="server" Text="Год поступления" AssociatedControlID="TextBoxYearOfEnrollment"></asp:Label>
                    <asp:TextBox ID="TextBoxYearOfEnrollment" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBoxYearOfEnrollment" ValidationGroup="g" ID="RequiredFieldValidatorYearOfEnrollment" runat="server" ErrorMessage="Не указан год поступления" Display="Dynamic">
                        <p class="text-danger">Не указан год поступления</p>
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
    </div>
    <div class="card-footer">
        <div class="row">
            <div class="col">
                <asp:Button ID="ButtonSubmit" CausesValidation="true" runat="server" CssClass="btn btn-primary" ValidationGroup="g" OnClick="ButtonSubmit_Click" />
                <asp:Button ID="ButtonCancel" CausesValidation="False" runat="server" Text="Отмена" CssClass="btn btn-danger" OnClick="ButtonCancel_Click" />
            </div>
            <div class="col">
                <asp:ValidationSummary ID="ValidationSummary" HeaderText="Ошибки заполнения формы:" ValidationGroup="g" runat="server" CssClass="text-danger" />
            </div>
        </div>
    </div>
</div>
