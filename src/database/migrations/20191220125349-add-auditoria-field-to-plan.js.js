module.exports = {
up:(queryInterface,Sequelize) => { 
return queryInterface.addColumn("plans","auditoria_id",{
type: Sequelize.INTEGER,
references:{model:"auditorias", key:"id"},
onUpdate:"CASCADE",
onDelete:"SET NULL",
allowNull: true
});
},
down: queryInterface => {
  return queryInterface.removeColumn("plans","auditoria_id");
}
};



