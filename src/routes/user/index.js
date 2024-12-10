module.exports =app =>{
    const userTool=require("../../controllers/user/index")

    var router = require("express").Router();

    router.get("/all",userTool.findAll)

    app.use("/api",router)
}