// models/role.js
module.exports = (sequelize, Sequelize) => {
    const Role = sequelize.define("role", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      name: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '角色名称'
      }
    });
  
    return Role;
  };