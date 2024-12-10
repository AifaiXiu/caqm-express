// models/checklist.js
module.exports = (sequelize, Sequelize) => {
    const Checklist = sequelize.define("checklist", {
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
      deptName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '部门'
      },
      status: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '状态：1-有效，0-无效'
      },
      remark: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '备注'
      },
      fileNames: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '附件，多个文件名用逗号分隔'
      },
      checklistItemNames: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '检查项，多个检查项名称用逗号分隔'
      }
    });
  
    return Checklist;
  };