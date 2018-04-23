<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxCallback" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">

		<dx:ASPxButton ID="ASPxButton2" runat="server" Text="Throw exception on Callback" AutoPostBack="False" Width="120px">
			<ClientSideEvents Click="function(s, e) { callback1.PerformCallback(); }" />
		</dx:ASPxButton>
		<dx:ASPxCallback ID="ASPxCallback1" runat="server" 
			ClientInstanceName="callback1" oncallback="ASPxCallback1_Callback">
		</dx:ASPxCallback>

	</form>
</body>
</html>