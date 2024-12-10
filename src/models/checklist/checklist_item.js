// models/checklist_item.js
module.exports = (sequelize, Sequelize) => {
    const ChecklistItem = sequelize.define("checklist_item", {
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
      details: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '内容'
      },
      fileNames: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '参考文件，多个文件名用逗号分隔'
      },
      remark: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '备注'
      },
      guidance: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '指南'
      },
      actions: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '措施'
      }
    });
  
    return ChecklistItem;
  };