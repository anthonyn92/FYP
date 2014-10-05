Imports System.Net.Mail

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.IsAuthenticated = True Then
            If User.IsInRole("Student") = True Then
                Response.Redirect("~/Student/Student.aspx")
            ElseIf Request.IsAuthenticated AndAlso User.IsInRole("ReserveInstructor") = True Then
                Response.Redirect("~/ReserveInstructor/ReserveInstructor.aspx")
            ElseIf Request.IsAuthenticated AndAlso User.IsInRole("ChiefInstructor") = True Then
                Response.Redirect("~/ChiefInstructor/ChiefInstructor.aspx")
            ElseIf Request.IsAuthenticated AndAlso User.IsInRole("Graders") = True Then
                Response.Redirect("~/Grader/Grader.aspx")
            ElseIf Request.IsAuthenticated AndAlso User.IsInRole("AssociationChief") = True Then
                Response.Redirect("~/AssociationChief/AssociationChief.aspx")
            ElseIf Request.IsAuthenticated AndAlso User.IsInRole("Administrator") = True Then
                Response.Redirect("~/Admin/Admin.aspx")
            End If
        Else

        End If

    End Sub

   
End Class