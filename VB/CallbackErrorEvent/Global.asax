<%@ Application Language="vb" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="DevExpress.Web.ASPxClasses" %>

<script runat="server">

	Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
		' Assign Application_Error as a callback error handler
		AddHandler ASPxWebControl.CallbackError, AddressOf Application_Error
	End Sub

	Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
		' Use HttpContext.Current to get a Web request processing helper
		Dim server As HttpServerUtility = HttpContext.Current.Server
		Dim exception As Exception = server.GetLastError()
		If TypeOf exception Is HttpUnhandledException Then
			exception = exception.InnerException
		End If
		' Log an exception
		AddToLog(exception.Message, exception.StackTrace)
	End Sub

	Sub AddToLog(ByVal message As String, ByVal stackTrace As String)
		Dim sb As StringBuilder = New StringBuilder()
		sb.AppendLine(DateTime.Now.ToLocalTime().ToString())
		sb.AppendLine(message)
		sb.AppendLine()
		sb.AppendLine("Source File: " & HttpContext.Current.Request.RawUrl)
		sb.AppendLine()
		sb.AppendLine("Stack Trace: ")
		sb.AppendLine(stackTrace)
		For i As Integer = 0 To 149
			sb.Append("-")
		Next i
		sb.AppendLine()
		HttpContext.Current.Session("Log") += sb.ToString()
		sb.AppendLine()
	End Sub

</script>
