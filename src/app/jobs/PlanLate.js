import {Op} from 'sequelize';
import Mail from '../../lib/Mail';
import Plan from '../models/Plan';
import { format, addWeeks } from 'date-fns';
import pt from 'date-fns/locale/pt';  
import User from '../models/User';

 async function AuditoriaLate(){
 const today = format(new Date(),'yyyy-MM-dd', { locale: pt});
 const today2 = format(addWeeks(new Date(), 1), 'yyyy-MM-dd', {locale: pt});

   const plans = await Plan.findAll({
    raw:true,
    attributes: ['problema','setor','maquina','acao','responsavel','data','conclusao','prazo'],
       where:{
           conclusao: null,
           prazo: {
               [Op.gt]: today
           },
       },
       order:[['id', 'ASC']],
       include: [
           {
               model: User,
               as: 'user',
               attributes: ['id', 'name','email']
           }
       ]
   });
    
 
    
   
  await plans.map((plan) => 
   
     Mail.sendMail({
       to: `${plan["user.name"]} <${plan["user.email"]}>`,
       subject: 'Ação atrasada',
       template: 'lateplan',
       context: {
           name: plan["user.name"],
           setor: plan.setor,
           maquina: plan.maquina,
           problema: plan.problema,
           prazo: plan.prazo,
       }
   })
   )
  
 
}
export default AuditoriaLate;
