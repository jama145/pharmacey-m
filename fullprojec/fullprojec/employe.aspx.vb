Imports System.Data.SqlClient
Imports Full_Website.Main
Public Class company
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source =DESKTOP-OH8S0OB;initial catalog=GymManagementSystem; integrated Security=true")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim ds As New DataSet
    Dim dtable As DataTable
    Dim lastno As Integer

End Class