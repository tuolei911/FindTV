using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class T_UserModel
    {
        public int UserId { get; set; }

        public string UserName { get; set; }

        public string UMail { get; set; }

        public string UPhone { get; set; }

        public string UPassWord { get; set; }

        public int Status { get; set; }

        public DateTime CreateTime { get; set; }

        public DateTime UpdateTime { get; set; }

    }
}
