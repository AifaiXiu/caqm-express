// models/permission.js
module.exports = (sequelize, Sequelize) => {
    const Permission = sequelize.define("permission", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      permissionName: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '权限名'
      }
    });
  
    return Permission;
  };