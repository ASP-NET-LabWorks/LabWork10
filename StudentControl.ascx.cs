using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWork10
{
    public partial class StudentControl : UserControl
    {
        public string LastName
        {
            get => TextBoxLastName.Text;
            set => TextBoxLastName.Text = value;
        }
        public string FirstName
        {
            get => TextBoxFirstName.Text;
            set => TextBoxFirstName.Text = value;
        }
        public string MiddleName
        {
            get => TextBoxMiddleName.Text;
            set => TextBoxMiddleName.Text = value;
        }
        public DateTime DateOfBirth
        {
            get => DateTime.Parse(TextBoxDateOfBirth.Text);
            set => TextBoxDateOfBirth.Text = value.ToShortDateString();
        }
        public string Gender
        {
            get => RadioButtonListGender.SelectedValue;
            set => RadioButtonListGender.SelectedValue = value;
        }
        public string Faculty
        {
            get => DropDownListFaculty.SelectedValue;
            set => DropDownListFaculty.SelectedValue = value;
        }
        public int Group
        {
            get => int.Parse(TextBoxGroup.Text);
            set => TextBoxGroup.Text = value.ToString();
        }
        public int YearOfEnrollment
        {
            get => int.Parse(TextBoxYearOfEnrollment.Text);
            set => TextBoxYearOfEnrollment.Text = value.ToString();
        }
        public string SubmitButtonText
        {
            get => ButtonSubmit.Text;
            set => ButtonSubmit.Text = value;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/", true);
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("alert('");
            Response.Write($"{LastName} {FirstName} {MiddleName}\\n");
            Response.Write($"Дата рождения: {DateOfBirth.ToShortDateString()}\\n");
            Response.Write($"Факультет: {Faculty}\\n");
            Response.Write($"Группа: {Group}\\n");
            Response.Write($"Год поступления: {YearOfEnrollment}");
            Response.Write("')");
            Response.Write("</script>");
        }
    }
}