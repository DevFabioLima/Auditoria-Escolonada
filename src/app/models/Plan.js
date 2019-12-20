import Sequelize, { Model } from "sequelize";


class Plan extends Model {
  static init(sequelize) {
    super.init(
      {
        item: Sequelize.STRING,
        problema: Sequelize.STRING,
        auditor: Sequelize.STRING,
        maquina: Sequelize.STRING,
        setor: Sequelize.STRING,
        acao: Sequelize.STRING,
        responsavel: Sequelize.STRING,
        data: Sequelize.DATE,
        prazo: Sequelize.DATE,
        conclusao:Sequelize.DATE
      },
      {
        sequelize
      }
      
    );
    return this;
  }
  static associate(models){
    this.belongsTo(models.Auditoria,{foreignKey:'auditoria_id',  as: 'auditoria'});
    this.belongsTo(models.File,{foreignKey:'avatar_id', as: 'file'});
  }
  
}
export default Plan;
