
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('plans', {
      id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
      },
      item: {
        type: Sequelize.INTEGER,
        allowNull: false,
      },
      problema: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      auditor: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      maquina:{
        type: Sequelize.STRING,
        allowNull:false
      },
    setor:{
        type: Sequelize.STRING,
        allowNull:false
      },
      acao:{
        type: Sequelize.STRING,
        allowNull:true
      },
      responsavel:{
        type:Sequelize.STRING,
        allowNull:false
      },
      data:{
        type:Sequelize.DATE,
        allowNull:false
      },
      prazo:{
        type: Sequelize.DATE,
        allowNull:false
      },
      conclusao:{
        type: Sequelize.DATE,
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
    return queryInterface.dropTable('plans');
  },
};
