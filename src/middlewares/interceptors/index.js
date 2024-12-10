module.exports=app=>{
    const express = require("express");
    //解析 content-type - application/json
    app.use(express.json());
    //解析 content-type - application/x-www-form-urlencoded
    app.use(express.urlencoded({ extended: true }));
}