using BaseClasses;
using Model;
using Model.emun;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace BLL.UrlData
{
   public class YouKuUrlHelperBLL: IAutoDataBLL
    {
        public List<T_RoomModel>   GetWebData()
        {
            string YouKuUrl_Fan = DataURL.YouKuUrl_Fan;
            string webResult = HttpFunction.Get(YouKuUrl_Fan, Encoding.UTF8, 25600000);
            Regex webRegex = new Regex(@"<a.*target=""video"".*?title=.*>(.*?)</a>", RegexOptions.IgnoreCase);
           
            MatchCollection douyumc = webRegex.Matches(webResult);
            List<T_RoomModel> modelList = new List<T_RoomModel>();

            foreach (Match m in douyumc)
            {
                Regex regex = new Regex("<a\\s*?href=\"(?<href>.*)\"\\s*?target=\"(?<target>.*?)\\s*?title=\"(?<title>.*?)\">.*</a>",
                                  RegexOptions.Singleline);
                string href = regex.Match(m.Value).Groups["href"].Value;
                href = href.Substring(0, href.IndexOf(".html")).Replace("http://v.youku.com/v_show/", "http://player.youku.com/embed/").Replace("id_", "");
                string title = regex.Match(m.Value).Groups["title"].Value;

                T_RoomModel t_RoomModel = new T_RoomModel();
                t_RoomModel.PlatType = (int)PlatTypeEmun.youku;
                t_RoomModel.RoomName = title;
                t_RoomModel.PlayUrl = href;
                t_RoomModel.RoomBG = GetImgUrl(webResult, title);
                t_RoomModel.RoomType = (int)RoomTypeEmun.fan;
                t_RoomModel.CreateTime = DateTime.Now;
                t_RoomModel.UpateTime=DateTime.Now;
                t_RoomModel.Status = 1;
                t_RoomModel.OwnerName = "优酷";
                t_RoomModel.PlayTime = "";
                modelList.Add(t_RoomModel);
            }
            return modelList;
        }

        static string GetImgUrl(string webResult,string title)
        {
            //<img src="//r1.ykimg.com/0515000058B24448ADC0AE056508D9DF" alt="当老外遇到&quot;中式英语&quot;后">
            Regex webRegex = new Regex(@"<img\s*?src=""(?<src>.*)""\s*?alt="""+ title + @""".*/>", RegexOptions.IgnoreCase);
            Match douyumc = webRegex.Match(webResult);
            string src = douyumc.Groups["src"].Value;
            if (src.IndexOf("https") < 0)
            {
                src = "http:"+ src;
            }
            return src;
        }
    }
}
