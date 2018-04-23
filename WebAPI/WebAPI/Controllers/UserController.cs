using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.Entity;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    public class UserController : ApiController
    {
        [HttpPost]
        [Route("api/InsertUser")]
        public User Insert(User model)
        {
            using (DBModel db = new DBModel())
            {
                db.Users.Add(model);
                db.SaveChanges();
                return model;
            }
        }
    }
}
