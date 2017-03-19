using BaseClasses;
using BLL.UrlData;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace BLL
{
   public  class AutoDataBLL
    {
        public static void GetWebData()
        {
            List<IAutoDataBLL> iAutoDataBLLList = new List<IAutoDataBLL>();
            iAutoDataBLLList.Add(new YouKuUrlHelperBLL());//优酷搞笑
            TvLiveHelper tvLiveHelper = new TvLiveHelper(iAutoDataBLLList);
            tvLiveHelper.GetWebData();
        } 
    }

    public interface IAutoDataBLL
    {
        List<T_RoomModel> GetWebData();
    }
}
