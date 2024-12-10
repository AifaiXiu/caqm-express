// models/audit.js
module.exports = (sequelize, Sequelize) => {
    const Audit = sequelize.define("audit", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      name: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '审计名'
      },
      deptName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '受审部门'
      },
      plannedStartDate: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '计划开始日期'
      },
      plannedEndDate: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '计划结束日期'
      },
      realStartDate: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '实际开始日期'
      },
      realEndDate: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '实际结束日期'
      },
      aiportName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '地点'
      },
      processName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '流程'
      },
      mainAuditor: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '主审计员'
      },
      otherAuditors: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '其他审计员'
      },
      methodName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '审计方法'
      },
      status: {
        type: Sequelize.INTEGER,
        allowNull: false,
        comment: '状态，0：计划，1：执行，2：取消，3：待关闭，4：已关闭'
      },
      closeUser: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '关闭人'
      },
      remark: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '备注'
      },
      checklistNames: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '检查单'
      },
      findingNames: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '不符合项'
      },
      summary: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '审计总结'
      }
    });
  
    return Audit;
  };