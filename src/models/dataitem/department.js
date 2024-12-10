// models/department.js
module.exports = (sequelize, Sequelize) => {
    const Department = sequelize.define("department", {
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
      parentName: {
        type: Sequelize.STRING,
        allowNull: true,
        defaultValue: '0',
        comment: '所属部门：0-顶级部门，其他为子部门'
      }
    });
  
    return Department;
  };