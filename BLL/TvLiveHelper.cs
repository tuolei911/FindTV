using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace BLL
{
    public class TvLiveHelper
    {
       List<IAutoDataBLL> iAutoDataBLLList=null;

       

        public TvLiveHelper(List<IAutoDataBLL> iAutoDataBLLList)
        {
            this.iAutoDataBLLList = iAutoDataBLLList;
        }

        public void GetWebData()
        {
            List<T_RoomModel> t_RoomModelList = new List<T_RoomModel>();
           
            iAutoDataBLLList.ForEach(e => t_RoomModelList.AddRange( e.GetWebData()));

            foreach (T_RoomModel d in t_RoomModelList)
            {
                if (new T_RoomBLL().Get(d.RoomName).RoomId == 0)
                {
                    new T_RoomBLL().Add(d);
                }
            }
        }
    }
}
