// models/finding_type.js
module.exports = (sequelize, Sequelize) => {
    const FindingType = sequelize.define("finding_type", {
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
  
    return FindingType;
  };