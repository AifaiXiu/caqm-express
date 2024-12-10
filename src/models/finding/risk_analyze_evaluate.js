// models/risk_analyze_evaluate.js
module.exports = (sequelize, Sequelize) => {
    const RiskAnalyzeEvaluate = sequelize.define("risk_analyze_evaluate", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      findingName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '来源'
      },
      rootName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '根源分析'
      },
      riskRelatedDeptName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '部门'
      },
      dutyMan: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '责任人'
      },
      possibility: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '可能性'
      },
      severity: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '严重性'
      },
      riskValue: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '风险'
      },
      isSecure: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '是否是安全事件'
      },
      eventDiscribe: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '事件描述'
      },
      excuteDate: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '实施日期'
      }
    });
  
    return RiskAnalyzeEvaluate;
  };