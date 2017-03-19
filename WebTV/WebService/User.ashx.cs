using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
namespace WebTV.WebService
{
    /// <summary>
    /// User 的摘要说明
    /// </summary>
    public class User : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            string UserName = context.Request.Form["UserName"];
            string UMail = context.Request.Form["UMail"];
            string UPhone = context.Request.Form["UPhone"];
            string UPassWord = context.Request.Form["UPassWord"];
            new T_UserBLL().Add(new T_UserModel() {  UserName = UserName, UMail= UMail, UPhone= UPhone, UPassWord= UPassWord });
            context.Response.Redirect("~/index.aspx");
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }


    }
}