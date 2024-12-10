// models/user.js
module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("user", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      username: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '用户名'
      },
      deptName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '所属部门'
      },
      email: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '邮箱号'
      },
      status: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: '状态'
      },
      passwd: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '密码'
      },
      roleName: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '角色'
      }
    }
  );
  
    return User;
  };