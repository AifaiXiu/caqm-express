// models/audit_evaluate.js
module.exports = (sequelize, Sequelize) => {
    const AuditEvaluate = sequelize.define("audit_evaluate", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      auditName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '审计名'
      },
      checklistName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '检查单名'
      },
      checklistItemName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '检查项名称'
      },
      checklistContent: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '检查项内容'
      },
      auditor: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '审核员'
      },
      findingName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '不符合项目'
      },
      status: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '状态：0-未完成，1-符合，2-文文不符，3-文实不符，4-不适用'
      },
      summary: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '审核结论'
      },
      fileNames: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '参考文档'
      }
    });
  
    return AuditEvaluate;
  };