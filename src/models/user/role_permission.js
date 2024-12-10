// models/role_permission.js
module.exports = (sequelize, Sequelize) => {
    const RolePermission = sequelize.define("role_permission", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      role_name: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '角色名称'
      },
      permissions: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '权限'
      }
    });
  
    return RolePermission;
  };