// models/file.js
module.exports = (sequelize, Sequelize) => {
    const File = sequelize.define("file", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      name: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '文件名称'
      },
      status: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '状态'
      },
      parentName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '所属部门'
      },
      filePath: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '文件地址'
      }
    });
  
    return File;
  };