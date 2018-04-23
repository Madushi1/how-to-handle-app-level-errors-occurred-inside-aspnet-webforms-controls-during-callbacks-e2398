using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web;

public partial class Default2 : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        ASPxMemo1.Text = HttpContext.Current.Session["Log"].ToString();
    }
    protected void LinkButton_Clear_Click(object sender, EventArgs e) {
        HttpContext.Current.Session["Log"] = "";
        ASPxMemo1.Text = "";
    }
}