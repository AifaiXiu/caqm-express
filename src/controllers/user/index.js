const { where } = require("sequelize")
const db=require("../../models")
const User=db.user

exports.findAll=(req,res)=>{
  User.findAll().then(data=>{
    console.log("数据",data)
    res.send(data)
  })
}