/**
 * 导入各个模块中的路由文件
 */
module.exports=app=>{
    console.log("路由已经加载！！！")
    require("./user")(app)
    
}