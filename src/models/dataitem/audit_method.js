// models/audit_method.js
module.exports = (sequelize, Sequelize) => {
    const AuditMethod = sequelize.define("audit_method", {
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
      }
    });
  
    return AuditMethod;
  };