module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.addColumn("users", "gestor", {
      type: Sequelize.STRING,
      allowNull: true
    });
  },
  down: queryInterface => {
    return queryInterface.removeColumn("users", "gestor");
  }
};