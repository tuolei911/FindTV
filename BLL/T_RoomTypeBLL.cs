using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class T_RoomTypeBLL
    {
        public List<T_RoomTypeModel> GetAll()
        {
            return new Data.T_RoomTypeDAL().GetAll();
        }
    }
}
