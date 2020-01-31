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
        data: Sequelize.DATE,
        obs: Sequelize.STRING,
        turno: Sequelize.STRING,
        cargo: Sequelize.STRING,
        ano: Sequelize.INTEGER,
      },
      {  
        sequelize
      }
    );
    return this;
  }

}
export default Auditoria;
