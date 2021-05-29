Public Class inicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim i As Integer = DropDownList1.SelectedIndex
        Dim t As Integer = Convert.ToDouble(temmperatura.Text)
        Dim fi As Integer
        Dim ci As Integer
        Dim Ki As Integer
        Select Case i

            Case 1
                Convertir.SetActiveView(Celsius)
                fi = (t * 1.8) + 32
                Ki = t + 273.15
                f1.Text = Convert.ToString(fi)
                k1.Text = Convert.ToString(Ki)
            Case 2
                Convertir.SetActiveView(Farenheit)
                Ki = (t - 32) * 5 / 9 + 273.15
                ci = (t - 32) * 5 / 9
                c2.Text = Convert.ToString(ci)
                k2.Text = Convert.ToString(Ki)
            Case 3
                Convertir.SetActiveView(Kelvin)
                ci = t - 273.15
                fi = (t - 273.15) * 9 / 5 + 32
                c3.Text = Convert.ToString(ci)
                f3.Text = Convert.ToString(fi)

            Case Else
                Convertir.ActiveViewIndex = -1
        End Select




    End Sub
End Class