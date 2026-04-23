using System;
using System.Net;
using System.Web.Routing;


namespace SANSUNIC
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            ServicePointManager.SecurityProtocol |= SecurityProtocolType.Tls;
            RegisterRoutes(RouteTable.Routes);
        }
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.Ignore("{resource}.axd/{*pathInfo}");

            // ✅ Homepage
            routes.MapPageRoute(
                "Home",
                "",
                "~/Default.aspx"
            );



            // 🔥 MAIN CLEAN URL ROUTE (IMPORTANT)
            routes.MapPageRoute(
                "CleanUrl",
                "{slug}",
                "~/default.aspx"
            );
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}