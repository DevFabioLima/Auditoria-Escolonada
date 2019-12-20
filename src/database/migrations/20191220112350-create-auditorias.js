
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('auditorias', {
      id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
      },
      setor: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      semana: {
        type: Sequelize.INTEGER,
        allowNull: false,
      },
      status: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      auditor: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      data_realizado:{
        type: Sequelize.DATE,
        allowNull:true
      },
      obs:{
        type: Sequelize.STRING,
        allowNull:true
      },
      created_at: {
        type: Sequelize.DATE,
        allowNull: false,
      },
      updated_at: {
        type: Sequelize.DATE,
        allowNull: false,
      },
    });
  },

  down: queryInterface => {
    return queryInterface.dropTable('auditorias');
  },
};
