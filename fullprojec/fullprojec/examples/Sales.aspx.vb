Imports System.Data.SqlClient
Public Class Sales

    Inherits System.Web.UI.Page
    Dim price As Integer
    Dim con As New SqlConnection("Data Source =DESKTOP-KT0NB26 ; initial catalog=Pharmacy; integrated Security=true")
    Dim cm As New SqlCommand
    Dim dr As SqlDataReader
    Sub totalmed()
        'lastno = ds.Tables("company").Rows.Count + 1
        'If lastno >= 0 Then
        '    txtid.Text = lastno
        'Else
        '    txtid.Text = 0
        'End If
        cm.Connection = con
        cm.CommandText = "select Medicine_Total from Medicine"
        con.Open()
        lblresult.Text = cm.ExecuteScalar().ToString

        con.Close()
        cm.Parameters.Clear()
    End Sub
    Sub populate()
        'lastno = ds.Tables("company").Rows.Count + 1
        'If lastno >= 0 Then
        '    txtid.Text = lastno
        'Else
        '    txtid.Text = 0
        'End If
        cm.Connection = con
        cm.CommandText = "select  * from Sales"
        con.Open()
        dr = cm.ExecuteReader
        GridView1.DataSource = dr
        GridView1.DataBind()
        con.Close()
        cm.Parameters.Clear()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        populate()
        'cm.Connection = con
        'cm.CommandText = "select Medicine_Name from Medicine"
        'con.Open()
        'dr = cm.ExecuteReader
        'While dr.Read
        '    DropDownList1.Items.Add(dr(0))

        'End While
        'dr.Close()
        'con.Close()
        ''subt()
        'cm.Connection = con
        'cm.CommandText = "select Medicine_Name from Medicine"
        'con.Open()
        'dr = cm.ExecuteReader
        'While dr.Read = True
        '    DropDownList1.Items.Add(0)


        'End While
        'dr.Close()
        'con.Close()
        Dim a As Date = Today
        TextBoxpay.Text = a
        Dim item As Integer = DropDownList1.SelectedIndex


        If item = 1 Then
            price = 200
        ElseIf item = 2 Then
            price = 150
        ElseIf item = 3 Then
            price = 800
        ElseIf item = 4 Then
            price = 130


        End If
        TextBoxprice.Text = price




    End Sub
    Sub clear()
        TextBoxID.Text = ""
        TextBoxname.Text = ""
        TextBoxseles.Text = ""
        TextBoxuent.Text = ""
        TextBoxprice.Text = ""
        TextBoxtotal.Text = ""
        TextBoxpaid.Text = ""
        TextBoxremin.Text = ""
        TextBoxpay.Text = ""

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        'subt()
        cm.Connection = con
        cm.CommandText = "insert into sales values (@ID,@Company_Name,@Medicine_Name,@Sales_person,@Quentity,@Price, @Total, @Paid, @Remaining_B,@peyment_date)"
        cm.Parameters.AddWithValue("@ID", TextBoxID.Text)
        cm.Parameters.AddWithValue("@Company_Name", TextBoxname.Text)
        cm.Parameters.AddWithValue("@Medicine_Name", DropDownList1.SelectedItem.Text)
        cm.Parameters.AddWithValue("@Sales_person", TextBoxseles.Text)
        cm.Parameters.AddWithValue("@Quentity", TextBoxuent.Text)
        cm.Parameters.AddWithValue("@Price", TextBoxprice.Text)
        cm.Parameters.AddWithValue("@Total", TextBoxtotal.Text)
        cm.Parameters.AddWithValue("@Paid", TextBoxpaid.Text)
        cm.Parameters.AddWithValue("@Remaining_B", TextBoxremin.Text)
        cm.Parameters.AddWithValue("@peyment_date", TextBoxpay.Text)
        con.Open()
        cm.ExecuteNonQuery()
        con.Close()
        populate()
        clear()
        cm.Parameters.Clear()
    End Sub
    'Sub subt()
    '    TextBox1.Text = CDbl(TextBoxuent.Text) - (lblresult.Text)
    '    cm.CommandText = "Update Medicine set  Medicine_Total=@Medicine_Total where ID= @ID"
    '    cm.Parameters.AddWithValue("@ID", TextBoxID.Text)
    '    cm.Parameters.AddWithValue("@Medicine_Total", TextBox1.Text)


    '    con.Open()
    '    cm.ExecuteNonQuery()
    '    con.Close()
    '    populate()
    'End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        cm.Connection = con
        cm.CommandText = "update Sales set Company_Name=@Company_Name,Medicine_Name=Medicine_Name,Sales_person=@Sales_person, Quentity=@Quentity,Price=@Price,  Total=@Total,Paid=@Paid,Remaining_B=@Remaining_B,peyment_date=@peyment_date  where ID=@ID"
        cm.Parameters.AddWithValue("@ID", TextBoxID.Text)
        cm.Parameters.AddWithValue("@Company_Name", TextBoxname.Text)
        cm.Parameters.AddWithValue("@Medicine_Name", DropDownList1.SelectedItem.Text)
        cm.Parameters.AddWithValue("@Sales_person", TextBoxseles.Text)
        cm.Parameters.AddWithValue("@Quentity", TextBoxuent.Text)
        cm.Parameters.AddWithValue("@Price", TextBoxprice.Text)
        cm.Parameters.AddWithValue("@Total", TextBoxtotal.Text)
        cm.Parameters.AddWithValue("@Paid", TextBoxpaid.Text)
        cm.Parameters.AddWithValue("@Remaining_B", TextBoxremin.Text)
        cm.Parameters.AddWithValue("@peyment_date", TextBoxpay.Text)

        con.Open()
        cm.ExecuteNonQuery()
        con.Close()

        populate()
        clear()
        cm.Parameters.Clear()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cm.Connection = con
        cm.CommandText = "delete from Sales where ID=@ID "
        cm.Parameters.AddWithValue("@ID", TextBoxID.Text)
        con.Open()
        cm.ExecuteNonQuery()
        con.Close()
        populate()
        'clear()
        cm.Parameters.Clear()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim item As Integer = DropDownList1.SelectedIndex


        If item = 1 Then
            price = 200
        ElseIf item = 2 Then
            price = 150
        ElseIf item = 3 Then
            price = 800
        ElseIf item = 4 Then
            price = 130


        End If
        TextBoxprice.Text = price
    End Sub

    Protected Sub TextBoxuent_TextChanged(sender As Object, e As EventArgs) Handles TextBoxuent.TextChanged
        TextBoxtotal.Text = TextBoxprice.Text * TextBoxuent.Text

    End Sub

    Protected Sub TextBoxtotal_TextChanged(sender As Object, e As EventArgs) Handles TextBoxtotal.TextChanged

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        TextBoxID.Text = row.Cells(1).Text
        TextBoxname.Text = row.Cells(2).Text
        DropDownList1.SelectedItem.Text = row.Cells(3).Text
        TextBoxseles.Text = row.Cells(4).Text
        TextBoxuent.Text = row.Cells(5).Text
        TextBoxprice.Text = row.Cells(6).Text
        TextBoxtotal.Text = row.Cells(7).Text
        TextBoxpaid.Text = row.Cells(8).Text
        TextBoxremin.Text = row.Cells(9).Text
        TextBoxpay.Text = row.Cells(10).Text




    End Sub



    Protected Sub TextBoxprice_TextChanged(sender As Object, e As EventArgs) Handles TextBoxprice.TextChanged

    End Sub

    Protected Sub TextBoxpaid_TextChanged(sender As Object, e As EventArgs) Handles TextBoxpaid.TextChanged
        TextBoxremin.Text = TextBoxtotal.Text - TextBoxpaid.Text
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        clear()
    End Sub
End Class