// models/risk_source.js
module.exports = (sequelize, Sequelize) => {
    const RiskSource = sequelize.define("risk_source", {
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
        comment: '所属流程：0-顶级风险源，其他为子风险源'
      }
    });
  
    return RiskSource;
  };