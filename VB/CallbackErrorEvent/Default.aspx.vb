Imports Microsoft.VisualBasic
Imports System
Imports System.Web
Imports System.Web.UI

Public Partial Class _Default
	Inherits Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If HttpContext.Current.Session("Log") Is Nothing Then
			HttpContext.Current.Session("Log") = ""
		End If
	End Sub
	Protected Sub ASPxCallback1_Callback(ByVal source As Object, ByVal e As DevExpress.Web.ASPxCallback.CallbackEventArgs)
		Dim innerException As Exception = New Exception("NoReport")
		Throw New Exception("This exception is thrown to demonstrate an <b>ASPxWebControl.CallbackError</b> event handler.", innerException)
	End Sub
End Class