// models/company.js
module.exports = (sequelize, Sequelize) => {
    const Company = sequelize.define("company", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      name: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '公司名称'
      }
    });
  
    return Company;
  };