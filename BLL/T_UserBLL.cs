using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class T_UserBLL
    {
        public int Add(T_UserModel t_UserModel)
        {
           return new Data.T_UserDAL().Add(t_UserModel);
        }
    }
}
