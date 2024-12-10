// models/root_analyze.js
module.exports = (sequelize, Sequelize) => {
    const RootAnalyze = sequelize.define("root_analyze", {
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
        comment: '所属部门：0-顶级根源，其他为子根源'
      }
    });
  
    return RootAnalyze;
  };