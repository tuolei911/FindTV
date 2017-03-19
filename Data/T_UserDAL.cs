using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using BaseClasses;

namespace Data
{
  public  class T_UserDAL : BaseDal
    {
        public int Add(T_UserModel t_UserModel)
        {
            var sqlparams = new SqlParameter[] {
                new SqlParameter("@UserName",t_UserModel.UserName),
                new SqlParameter("@UMail",t_UserModel.UMail),
                new SqlParameter("@UPhone",t_UserModel.UPhone),
                new SqlParameter("@UPassWord",t_UserModel.UPassWord),
                new SqlParameter("@Status",1),
                new SqlParameter("@CreateTime",DateTime.Now),
                new SqlParameter("@UpdateTime",DateTime.Now)
            };
            string sql = @" INSERT INTO [T_User]
            (
            [UserName]
           ,[UMail]
           ,[UPhone]
           ,[UPassWord]
           ,[Status]
           ,[CreateTime]
           ,[UpdateTime])
           VALUES
           (
           @UserName
           ,@UMail
           ,@UPhone
           ,@UPassWord
           ,@Status
           ,@CreateTime
           ,@UpdateTime
            )";
            return SqlHelper.ExecuteNonQuery(ConnectionString.WTVDns, CommandType.Text, sql, sqlparams);
        }

    }
}
