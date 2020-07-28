Imports System.Data.SqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Unnamed5_Click(sender As Object, e As EventArgs)
        Dim cn As SqlConnection
        Dim cmd As SqlCommand
        'cn.ConnectionString = "Data Source=LAPTOP-PC1RJNFQ;Initial Catalog=login;Integrated Security=True"
        Dim objcn As SqlConnection = Nothing
        Dim objcmd As SqlCommand = Nothing
        objcn = New SqlConnection("Data Source=DESKTOP-KT0NB26;Initial Catalog=Pharmacy;Integrated Security=True")
        objcn.Open()
        Dim stmt As String = "select *from Logintable where UserName ='" & TextBoxUserName.Text & "' and  passwordd=" & TextBoxPassword.Text & " "
        objcmd = New SqlCommand(stmt, objcn)
        Dim reader As SqlDataReader = objcmd.ExecuteReader
        If reader.Read Then
            'MsgBox(" login seccefully")
            Response.Redirect("dashboard.aspx")
        Else
            MsgBox(" invalid password or username")
        End If
    End Sub
End Class