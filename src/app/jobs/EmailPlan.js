import Auditoria from '../models/Auditoria';
import {Op} from 'sequelize';
 async function EmailPlan(){
   const auditorias = await Auditoria.findAll({
       where:{
           cargo: {
               [Op.ne]: 'Operador',
           },
           status: {
               [Op.ne]: 'Planejado'
           }
       },
       order:[['id', 'ASC']]
   });
  
   console.log("OLA");
}
export default EmailPlan;
