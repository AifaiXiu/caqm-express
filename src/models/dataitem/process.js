// models/process.js
module.exports = (sequelize, Sequelize) => {
    const Process = sequelize.define("process", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      name: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '名称'
      },
      parentName: {
        type: Sequelize.STRING,
        allowNull: true,
        defaultValue: '0',
        comment: '所属流程：0-顶级流程，其他为子流程'
      }
    });
  
    return Process;
  };