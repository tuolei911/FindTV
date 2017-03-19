using System.Configuration;
namespace Data
{
    public class ConnectionString
    {
        public static readonly string WTVDns = ConfigurationManager.ConnectionStrings["WTVDns"] != null ? ConfigurationManager.ConnectionStrings["WTVDns"].ConnectionString : string.Empty;
    }
}
