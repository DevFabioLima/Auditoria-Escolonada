module.exports = {
  up:(queryInterface,Sequelize) => { 
  return queryInterface.addColumn("auditoria","turno",{
  type: Sequelize.STRING,
  allowNull: true
  });
  },
  down: queryInterface => {
    return queryInterface.removeColumn("auditoria","turno");
  }
  };
  
  
  
  