/**
 * 加载所有的中间件
 * @param {express实例} app 
 */
module.exports=app=>{
//加载拦截器
require('./interceptors')(app)
//在配置路由前解决跨域问题
require("./cors")(app)
//挂载路由
require("../routes")(app);
console.log("所有中间件都加载了！！！")
}