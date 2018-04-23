using System;
using System.Web;
using System.Web.UI;

public partial class _Default : Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(HttpContext.Current.Session["Log"] == null)
            HttpContext.Current.Session["Log"] = "";
    }
    protected void ASPxCallback1_Callback(object source, DevExpress.Web.ASPxCallback.CallbackEventArgs e) {
        Exception innerException = new Exception("NoReport");
        throw new Exception("This exception is thrown to demonstrate an <b>ASPxWebControl.CallbackError</b> event handler.", innerException);
    }
}