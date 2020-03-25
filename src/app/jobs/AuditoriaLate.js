import Auditoria from '../models/Auditoria';
import User from '../models/User';
import {Op} from 'sequelize';
import { getISOWeek, addWeeks, parseISO, isBefore } from 'date-fns';
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
               [Op.ne]: 'Realizado'
           },
           semana: {
               [Op.lt]: actualSemana
           }
       },
       order:[['id', 'ASC']]
   });
   const auditorias2 = auditorias.map((auditoria) => {
    return {
        seteDias: auditoria.semana + 1,
        ...auditoria,
    }
})
    const auditorias3 = auditorias2.map((auditoria) => {
        return {
            plant: isBefore(new Date(auditoria.seteDias), new Date(actualSemana)),
            ...auditoria,
        }
    })
    
     const emails = await User.findAll({
       raw:true,
       attributes:['email','name','gestor'],
       where: {
           name: auditorias.map((auditor) => auditor.auditor),
       }
   });
   
   
   const eduardo = 'eduardo.villalba@sogefigroup.com,';
   const todos = auditorias3.map(a => {
       a.email = emails.filter(email => email.name === a.auditor);
       return a;
   });
  

  /* await todos.map((plan) => 
     Mail.sendMail({
       to: `${plan.auditor} <${plan.email[0].email}>`,
       cc: `${plan.plant ? eduardo.concat(plan.email[0].gestor) : plan.email[0].gestor}`,
       subject: 'Auditoria atrasada',
       template: 'lateauditoria',
       context: {
           name: plan.auditor,
           setor: plan.setor,
           semana: plan.semana,
       }
   })
   )*/
  
}
export default AuditoriaLate;
