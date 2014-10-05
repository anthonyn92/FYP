Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox7_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub CreateUserWizard1_CreatedUser(sender As Object, e As EventArgs) Handles CreateUserWizard1.CreatedUser
        Dim uName As String = CreateUserWizard1.UserName.ToString
        Roles.AddUserToRole(uName, "Student")


    End Sub
End Class