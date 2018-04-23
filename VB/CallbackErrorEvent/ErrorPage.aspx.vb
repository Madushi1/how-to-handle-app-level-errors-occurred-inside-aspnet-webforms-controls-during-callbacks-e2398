Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web

Public Partial Class Default2
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ASPxMemo1.Text = HttpContext.Current.Session("Log").ToString()
	End Sub
	Protected Sub LinkButton_Clear_Click(ByVal sender As Object, ByVal e As EventArgs)
		HttpContext.Current.Session("Log") = ""
		ASPxMemo1.Text = ""
	End Sub
End Class