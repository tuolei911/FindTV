using BaseClasses;
using Data;
using Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace BLL
{
    public class T_RoomBLL
    {
        public int Add(T_RoomModel t_RoomModel)
        {
            return new T_RoomDAL().Add(t_RoomModel);
        }

        public int Update(T_RoomModel t_RoomModel, int roomId)
        {
            return new T_RoomDAL().Update(t_RoomModel, roomId);
        }

      

        public RetInfo<int> Del(int roomId)
        {
            RetInfo<int> ret = new RetInfo<int>() { Code = 0 };
            int i = new T_RoomDAL().Del(roomId);
            if (i < 1)
            {
                ret.Code = -1;
            }

            return ret;
        }

        public T_RoomModel Get(string roomName)
        {
            return new T_RoomDAL().Get(roomName);
        }

        public List<T_RoomModel> GetAll()
        {
            return new T_RoomDAL().GetAll();
        }

        public List<T_RoomModel> GetPageT_RoomModelList(string type, int userId, int PageSize, int CurPage, ref int PageNum)
        {
            List<T_RoomModel> T_RoomModelList = new T_RoomBLL().GetAll().Where(e => e.Status == 1).OrderByDescending(t => t.OrderNum).ToList();

            switch (type)
            {
                case "hot":
                    T_RoomModelList = T_RoomModelList.FindAll(e => e.IsHot == 1).OrderByDescending(t => t.OrderNum).ToList();
                    break;
                case "1":
                    T_RoomModelList = T_RoomModelList.FindAll(e => e.RoomType == 1).OrderByDescending(t => t.OrderNum).ToList();
                    break;
                case "2":
                    T_RoomModelList = T_RoomModelList.FindAll(e => e.RoomType == 2).OrderByDescending(t => t.OrderNum).ToList();
                    break;
                case "3":
                    T_RoomModelList = T_RoomModelList.FindAll(e => e.RoomType == 3).OrderByDescending(t => t.OrderNum).ToList();
                    break;
                case "4":
                    T_RoomModelList = T_RoomModelList.FindAll(e => e.RoomType == 4).OrderByDescending(t => t.OrderNum).ToList();
                    break;
                case "5":
                    T_RoomModelList = T_RoomModelList.FindAll(e => e.RoomType == 5).OrderByDescending(t => t.OrderNum).ToList();
                    break;
                //case "user":
                //    T_RoomModelList = new T_UserCollectBLL().GetUserRoom(userId);
                //    break;

            }
            T_RoomModelList.ForEach(e => e = new RoomLiveBLL().getRoomLive(e));
            T_RoomModelList = T_RoomModelList.OrderByDescending(e => e.isLive).ToList();
            PageNum = (int)Math.Ceiling((decimal)T_RoomModelList.Count() / PageSize);

            return QueryByPage(PageSize, CurPage, T_RoomModelList);
        }

        protected List<T_RoomModel> QueryByPage(int PageSize, int CurPage, List<T_RoomModel> objs)
        {
            var query = from cms_contents in objs select cms_contents;
            return query.Take(PageSize * CurPage).Skip(PageSize * (CurPage - 1)).ToList();
        }


     
    }
}
