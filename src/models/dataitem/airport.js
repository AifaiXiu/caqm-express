// models/airport.js
module.exports = (sequelize, Sequelize) => {
    const Airport = sequelize.define("airport", {
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
  
    return Airport;
  };
  