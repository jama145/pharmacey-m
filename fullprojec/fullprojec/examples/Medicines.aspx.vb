
Imports System.Data.SqlClient
Public Class Medicines
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source =DESKTOP-KT0NB26; initial catalog=Pharmacy; integrated Security=true")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Sub totalmed()
        'lastno = ds.Tables("company").Rows.Count + 1
        'If lastno >= 0 Then
        '    txtid.Text = lastno
        'Else
        '    txtid.Text = 0
        'End If
        cmd.Connection = cn
        cmd.CommandText = "select sum(Quentity) from Medicine"
        cn.Open()
        lblresult.Text = cmd.ExecuteScalar().ToString

        cn.Close()
        cmd.Parameters.Clear()
    End Sub

    Sub populate()
        'lastno = ds.Tables("company").Rows.Count + 1
        'If lastno >= 0 Then
        '    txtid.Text = lastno
        'Else
        '    txtid.Text = 0
        'End If
        cmd.Connection = cn
        cmd.CommandText = "select * from Medicine"
        cn.Open()
        dr = cmd.ExecuteReader
        gridmedicine.DataSource = dr
        gridmedicine.DataBind()
        cn.Close()
        cmd.Parameters.Clear()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        populate()
        totalmed()

    End Sub
    Sub clear()
        TextBoxID.Text = ""
        txtname.Text = ""
        txtQuantity.Text = ""
        TextBoxManufacture.Text = ""
        TextBoxProductionDate.Text = ""
        txtdate.Text = ""
        txtprice.Text = ""
        txtsell.Text = ""
        txtTotal.Text = ""



    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        'txtTotal.Text = CDbl(txtQuantity.Text) + (lblresult.Text)
        If TextBoxID.Text = "" Or txtname.Text = "" Or txtQuantity.Text = "" Or TextBoxManufacture.Text = "" Or TextBoxProductionDate.Text = "" Or txtdate.Text = "" Or txtprice.Text = "" Or txtsell.Text = "" Or txtTotal.Text = "" Then

            Response.Write("<Script>alert('donot leave empty space' )</Script>")
        Else
            cmd.Connection = cn
            cmd.CommandText = "insert into Medicine values(@ID,@Medicine_Name,@Quentity,@Manufactor,
        @Production_Date,@Expiry_Date,@Puying_Price,@Selling_Price,@Medicine_Total)"
            cmd.Parameters.AddWithValue("@ID", TextBoxID.Text)
            cmd.Parameters.AddWithValue("@Medicine_Name", txtname.Text)
            cmd.Parameters.AddWithValue("@Quentity", txtQuantity.Text)
            cmd.Parameters.AddWithValue("@Manufactor", TextBoxManufacture.Text)
            cmd.Parameters.AddWithValue("@Production_Date", TextBoxProductionDate.Text)
            cmd.Parameters.AddWithValue("@Expiry_Date", txtdate.Text)
            cmd.Parameters.AddWithValue("@Puying_Price", txtprice.Text)
            cmd.Parameters.AddWithValue("@Selling_Price", txtsell.Text)
            cmd.Parameters.AddWithValue("@Medicine_Total", txtTotal.Text)

            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
            populate()
            clear()
        End If

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim oldvlue As Double = CInt(txtQuantity.Text)
        If oldvlue > txtQuantity.Text Then
            txtTotal.Text = CInt(oldvlue) - (lblresult.Text)
        Else
            txtTotal.Text = CInt(oldvlue) + (lblresult.Text)
        End If


        cmd.Connection = cn
        cmd.CommandText = "Update Medicine set  Medicine_Name = @Medicine_Name,Quentity=@Quentity,Manufactor=@Manufactor,
        Production_Date=@Production_Date,Expriy_Date=@Expriy_Date,Paying_Price= @Paying_Price,  Seling_Price = @Seling_Price, Medicine_Total=@Medicine_Total where ID= @ID"
        cmd.Parameters.AddWithValue("@ID", TextBoxID.Text)
        cmd.Parameters.AddWithValue("@Medicine_Name", txtname.Text)
        cmd.Parameters.AddWithValue("@Quentity", txtQuantity.Text)
        cmd.Parameters.AddWithValue("@Manufactor", TextBoxManufacture.Text)
        cmd.Parameters.AddWithValue("@Production_Date", TextBoxProductionDate.Text)
        cmd.Parameters.AddWithValue("@Expriy_Date", txtdate.Text)
        cmd.Parameters.AddWithValue("@Paying_Price", txtprice.Text)
        cmd.Parameters.AddWithValue("@Seling_Price", txtsell.Text)
        cmd.Parameters.AddWithValue("@Medicine_Total", txtTotal.Text)

        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        populate()
        clear()



    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.Connection = cn
        cmd.CommandText = "delete from Medicine where ID=@ID "
        cmd.Parameters.AddWithValue("@ID", TextBoxID.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        populate()
        clear()
        cmd.Parameters.Clear()
    End Sub

    Protected Sub txtTotal_TextChanged(sender As Object, e As EventArgs) Handles txtTotal.TextChanged
        ' cmd.Connection = cn
        ' txtQuantity.Text = cmd.CommandText = "update Medicine set Quentity =medicine.Quentity-sales.Quentity from 
        'medicine inner join sales on medicine.Medicine_Name=sales.Medicine_Name"
        ' cn.Open()
        ' cmd.ExecuteNonQuery()
        ' cn.Close()

    End Sub



    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        clear()
    End Sub

    Protected Sub gridmedicine_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gridmedicine.SelectedIndexChanged
        Dim row As GridViewRow = gridmedicine.SelectedRow
        TextBoxID.Text = row.Cells(1).Text
        txtname.Text = row.Cells(2).Text
        txtQuantity.Text = row.Cells(3).Text
        TextBoxManufacture.Text = row.Cells(4).Text
        TextBoxProductionDate.Text = row.Cells(5).Text
        txtdate.Text = row.Cells(6).Text
        txtsell.Text = row.Cells(7).Text
        txtTotal.Text = row.Cells(8).Text

    End Sub
End Class