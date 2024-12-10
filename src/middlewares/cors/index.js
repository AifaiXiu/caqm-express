require('dotenv').config(); 
module.exports=app=>{

    const cors = require("cors");
    var corsOptions = {
        origin: process.env.ALLOWPATH
      };
    app.use(cors(corsOptions));
}
