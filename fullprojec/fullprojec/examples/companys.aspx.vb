Imports System.Data.SqlClient

Public Class companys
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source =DESKTOP-KT0NB26 ; initial catalog=Pharmacy; integrated Security=true")
    Dim cm As New SqlCommand
    Dim dr As SqlDataReader

    Sub populate()
        'lastno = ds.Tables("company").Rows.Count + 1
        'If lastno >= 0 Then
        '    txtid.Text = lastno
        'Else
        '    txtid.Text = 0
        'End If
        cm.Connection = con
        cm.CommandText = "select * from company"
        con.Open()
        dr = cm.ExecuteReader
        GridView1.DataSource = dr
        GridView1.DataBind()
        con.Close()
        cm.Parameters.Clear()
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        populate()
    End Sub
    Sub clear()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""


    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Or TextBox6.Text = "" Or TextBox7.Text = "" Or TextBox8.Text = "" Then


            Response.Write("<Script>alert('donot leave empty space' )</Script>")


        Else



            cm.Connection = con
            cm.CommandText = "insert into company values(@Company_ID,@Company_Name,@Contect_Person,@Email,@Company_Address ,@Phone_No, @Medicine_Type, @Buying_Date)"
            cm.Parameters.AddWithValue("@Company_ID", TextBox1.Text)
            cm.Parameters.AddWithValue("@Company_Name", TextBox2.Text)
            cm.Parameters.AddWithValue("@Contect_Person", TextBox3.Text)
            cm.Parameters.AddWithValue("@Email", TextBox4.Text)
            cm.Parameters.AddWithValue("@Company_Address", TextBox5.Text)
            cm.Parameters.AddWithValue("@Phone_No", TextBox6.Text)
            cm.Parameters.AddWithValue("@Medicine_Type", TextBox7.Text)
            cm.Parameters.AddWithValue("@Buying_Date", TextBox8.Text)
            con.Open()
            cm.ExecuteNonQuery()
            con.Close()
            populate()
            clear()
            cm.Parameters.Clear()
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Or TextBox6.Text = "" Or TextBox7.Text = "" Or TextBox8.Text = "" Then

            Response.Write("<Script>alert('donot leave empty space' )</Script>")
        Else

            cm.Connection = con
            cm.CommandText = "update Company set Company_Name=@Company_Name,Contect_Person=Contect_Person,Email=@Email, Company_Address=@Company_Address,Phone_No=@Phone_No,  Medicine_Type=@Medicine_Type,Buying_Date=@Buying_Date  where Company_ID=@Company_ID"
            cm.Parameters.AddWithValue("@Company_ID", TextBox1.Text)
            cm.Parameters.AddWithValue("@Company_Name", TextBox2.Text)
            cm.Parameters.AddWithValue("@Contect_Person", TextBox3.Text)
            cm.Parameters.AddWithValue("@Email", TextBox4.Text)
            cm.Parameters.AddWithValue("@Company_Address", TextBox5.Text)
            cm.Parameters.AddWithValue("@Phone_No", TextBox6.Text)
            cm.Parameters.AddWithValue("@Medicine_Type", TextBox7.Text)
            cm.Parameters.AddWithValue("@Buying_Date", TextBox8.Text)
            con.Open()
            cm.ExecuteNonQuery()
            con.Close()

            populate()
            clear()
            cm.Parameters.Clear()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cm.Connection = con
        cm.CommandText = "delete from company where Company_ID=@Company_ID "
        cm.Parameters.AddWithValue("@Company_ID", TextBox1.Text)
        con.Open()
        cm.ExecuteNonQuery()
        con.Close()
        populate()
        clear()
        cm.Parameters.Clear()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        TextBox1.Text = row.Cells(1).Text
        TextBox2.Text = row.Cells(2).Text
        TextBox3.Text = row.Cells(3).Text
        TextBox4.Text = row.Cells(4).Text
        TextBox5.Text = row.Cells(5).Text
        TextBox6.Text = row.Cells(6).Text
        TextBox7.Text = row.Cells(7).Text
        TextBox8.Text = row.Cells(8).Text
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        clear()
    End Sub
End Class