Imports System.Data.SqlClient
Public Class Employees
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source =DESKTOP-KT0NB26 ; initial catalog=Pharmacy; integrated Security=true")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        populate()
        'cmd.Connection = cn
        'cmd.CommandText = "select Blood_Group,Gender from Staff"
        'cn.Open()
        'dr = cmd.ExecuteReader
        'While dr.Read = True
        '    dropdownlistGender.Items.Add(dr(0))
        '    DropDownlistbllood.Items.Add(dr(0))
        'End While
        'dr.Close()
        'cn.Close()
    End Sub
    Sub populate()

        cmd.Connection = cn
        cmd.CommandText = "select * from staff"
        cn.Open()
        dr = cmd.ExecuteReader
        GridView1.DataSource = dr
        GridView1.DataBind()
        cn.Close()
    End Sub
    Sub clear()
        TextBoxid.Text = ""
        TextBoxName.Text = ""
        TextBoxAge.Text = ""

        TextBoxsalary.Text=""

        TextBoxAddress.Text=""
        TextBoxContactNO.Text=""
        TextBoxEmail.Text = ""
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles BtInsert.Click
        If TextBoxid.Text = "" Or TextBoxName.Text = "" Or TextBoxAge.Text = "" Or TextBoxsalary.Text = "" Or TextBoxAddress.Text = "" Or TextBoxContactNO.Text = "" Or TextBoxEmail.Text = "" Then

            Response.Write("<Script>alert('donot leave empty space' )</Script>")
        Else







            cmd.Connection = cn
            cmd.CommandText = "insert into Staff values (@ID,@StaffName,@Age,@Gender,
        @salary,@Blood_Group,@Staff_Address,@Contect_No,@Email)"
            cmd.Parameters.AddWithValue("@ID", TextBoxid.Text)
            cmd.Parameters.AddWithValue("@StaffName", TextBoxName.Text)
            cmd.Parameters.AddWithValue("@Age", TextBoxAge.Text)
            cmd.Parameters.AddWithValue("@Gender", dropdownlistGender.SelectedItem.Text)
            cmd.Parameters.AddWithValue("@salary", TextBoxsalary.Text)
            cmd.Parameters.AddWithValue("@Blood_Group", DropDownlistbllood.SelectedItem.Text)
            cmd.Parameters.AddWithValue("@Staff_Address", TextBoxAddress.Text)
            cmd.Parameters.AddWithValue("@Contect_No", TextBoxContactNO.Text)
            cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text)


            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
            clear()
            populate()
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        cmd.Connection = cn
        cmd.CommandText = " update staff set StaffName=@StaffName,Age=@Age,Gender=@Gender,
        Salary=@salary,Blood_Group=@Blood_Group,Staff_Address=@Staff_Address,Contect_No=@Contect_No,Email=@Email  where ID=@ID "
        cmd.Parameters.AddWithValue("@ID", TextBoxid.Text)
        cmd.Parameters.AddWithValue("@StaffName", TextBoxName.Text)
        cmd.Parameters.AddWithValue("@Age", TextBoxAge.Text)
        cmd.Parameters.AddWithValue("@Gender", dropdownlistGender.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@salary", TextBoxsalary.Text)
        cmd.Parameters.AddWithValue("@Blood_Group", DropDownlistbllood.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@Staff_Address", TextBoxAddress.Text)
        cmd.Parameters.AddWithValue("@Contect_No", TextBoxContactNO.Text)
        cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text)



        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        populate()
        clear()
        'con.Open()
        'cm.ExecuteNonQuery()
        'con.Close()

        'populate()
        'cm.Parameters.Clear()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.Connection = cn
        cmd.CommandText = "delete from staff where ID=@ID "
        cmd.Parameters.AddWithValue("@ID", TextBoxid.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        populate()
        clear()
        cmd.Parameters.Clear()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        TextBoxid.Text = row.Cells(1).Text
        TextBoxName.Text = row.Cells(2).Text
        TextBoxAge.Text = row.Cells(3).Text
        dropdownlistGender.SelectedItem.Text = row.Cells(4).Text
        TextBoxsalary.Text = row.Cells(5).Text
        DropDownlistbllood.SelectedItem.Text = row.Cells(6).Text
        TextBoxAddress.Text = row.Cells(7).Text
        TextBoxContactNO.Text = row.Cells(8).Text
        TextBoxEmail.Text = row.Cells(9).Text
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        clear()
    End Sub
End Class