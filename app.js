const express = require("express");
const app = express();

//加载环境变量
require('dotenv').config(); 
require('./src/middlewares')(app)

const PORT= process.env.PORT
//启动服务
app.listen(PORT, () => {
  console.log(`服务在 ${PORT}端口启动啦！`);
});
