import {Op} from 'sequelize';
import Mail from '../../lib/Mail';
import Plan from '../models/Plan';
import { format, addWeeks, parseISO, isBefore } from 'date-fns';
import pt from 'date-fns/locale/pt';  
import User from '../models/User';

 async function AuditoriaLate(){
 const today = format(new Date(),'yyyy-MM-dd', { locale: pt});
 
   const plans = await Plan.findAll({
    raw:true,
    attributes: ['problema','setor','maquina','acao','responsavel','data','conclusao','prazo'],
       where:{
           conclusao: null,
           prazo: {
               [Op.lt]: today
           },
       },
       order:[['id', 'ASC']],
       include: [
           {
               model: User,
               as: 'user',
               attributes: ['id', 'name','email', 'gestor']
           }
       ]
   });
    
 
    const newPlan = plans.map((plan) => {
        return {
            seteDias: format(addWeeks(parseISO(plan.prazo), 1), 'yyyy-MM-dd', {locale: pt}),
            ...plan,
        }
    })
    const newPlan2 = newPlan.map((plan) => {
        return {
            plant: isBefore(new Date(plan.seteDias),new Date(today)),
            ...plan,
        }
    })
    
    const eduardo = 'eduardo.villalba@sogefigroup.com,';
   /* await newPlan2.map((plan) => 
     Mail.sendMail({
       to: `${plan["user.name"]} <${plan["user.email"]}>`,
       cc: `${plan.plant ? eduardo.concat(plan["user.gestor"]) : plan["user.gestor"]}`,
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
   )*/
  
 
}
export default AuditoriaLate;
