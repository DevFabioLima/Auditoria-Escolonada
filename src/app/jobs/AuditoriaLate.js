import Auditoria from '../models/Auditoria';
import User from '../models/User';
import {Op} from 'sequelize';
import { getISOWeek } from 'date-fns';
import Mail from '../../lib/Mail';

 async function AuditoriaLate(){
 const actualSemana = getISOWeek(new Date());

   const auditorias = await Auditoria.findAll({
    raw:true,
    attributes: ['auditor', 'setor','semana','semana'],
       where:{
           cargo: {
               [Op.ne]: 'Operador',
           },
           status: {
               [Op.ne]: 'Planejado'
           },
           semana: {
               [Op.lt]: actualSemana
           }
       },
       order:[['id', 'ASC']]
   });
    
     const emails = await User.findAll({
       raw:true,
       attributes:['email','name'],
       where: {
           name: auditorias.map((auditor) => auditor.auditor),
       }
   });
   
   
   /*await emails.map((email) => 
     Mail.sendMail({
       to: `${email.name} <${email.email}>`,
       subject: 'Auditoria atrasada',
       template: 'lateauditoria',
       context: {
           name: email.name,
       }
   })
   )*/
  
}
export default AuditoriaLate;
