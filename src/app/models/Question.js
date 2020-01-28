import Sequelize, { Model } from "sequelize";

class Question extends Model {
  static init(sequelize) {
    super.init(
      {
        item: Sequelize.DECIMAL,
        text: Sequelize.STRING,
        area: Sequelize.STRING,
      },
      {  
        sequelize
      }
    );
    return this;
  }

}
export default Question;
