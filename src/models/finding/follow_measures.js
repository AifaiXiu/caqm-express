// models/follow_measures.js
module.exports = (sequelize, Sequelize) => {
    const FollowMeasures = sequelize.define("follow_measures", {
      id: {
        type: Sequelize.STRING,
        primaryKey: true,
        allowNull: false,
        comment: '唯一标识'
      },
      findingName: {
        type: Sequelize.STRING,
        allowNull: false,
        comment: '不符合项名称'
      },
      dutyMan: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '责任人'
      },
      finisher: {
        type: Sequelize.STRING,
        allowNull: true,
        comment: '完成人'
      },
      targetDate: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '目标日期'
      },
      finishDate: {
        type: Sequelize.DATEONLY,
        allowNull: true,
        comment: '完成日期'
      },
      details: {
        type: Sequelize.TEXT,
        allowNull: true,
        comment: '详细方法'
      }
    });
  
    return FollowMeasures;
  };