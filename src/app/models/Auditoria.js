import Sequelize, { Model } from "sequelize";

class Auditoria extends Model {
  static init(sequelize) {
    super.init(
      {
        setor: Sequelize.STRING,
        semana: Sequelize.INTEGER,
        status: Sequelize.STRING,
        auditor: Sequelize.STRING,
        data_realizado: Sequelize.DATE,
        obs: Sequelize.STRING
      },
      {  
        sequelize
      }
    );
    return this;
  }

}
export default Auditoria;
