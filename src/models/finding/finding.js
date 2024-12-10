// models/finding.js
module.exports = (sequelize, Sequelize) => {
    const Finding = sequelize.define("finding", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      auditName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '来源审计'
      },
      status: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '状态：1-开启，0-关闭'
      },
      processName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '流程'
      },
      airportName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '地点'
      },
      userName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '流程负责人'
      },
      targetCloseTime: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '目标解决日期'
      },
      closer: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '关闭人'
      },
      detpName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '不符合部门'
      },
      findingTypeName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '不符合类型'
      },
      evaluateResult: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '详细内容'
      }
    });
  
    return Finding;
  };
  