import Sequelize, { Model } from "sequelize";

class Setor extends Model {
  static init(sequelize) {
    super.init(
      {
        name: Sequelize.STRING,
        linha: Sequelize.STRING,
      },
      {  
        sequelize
      }
    );
    return this;
  }

}
export default Setor;
