module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.addColumn("plans", "question_id", {
      type: Sequelize.INTEGER,
      references: { model: "questions", key: "id" },
      onUpdate: "CASCADE",
      onDelete: "SET NULL",
      allowNull: true
    });
  },
  down: queryInterface => {
    return queryInterface.removeColumn("plans", "question_id");
  }
};