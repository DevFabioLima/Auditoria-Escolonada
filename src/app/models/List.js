import Sequelize, { Model } from "sequelize";

class List extends Model {
  static init(sequelize) {
    super.init(
      {
        name: Sequelize.STRING,
        cpf: Sequelize.STRING
      },
      {
        sequelize
      }
    );
    return this;
  }
  static associate(models) {
    this.belongsTo(models.Event, { foreignKey: "id_events" });
  }
}
export default List;
