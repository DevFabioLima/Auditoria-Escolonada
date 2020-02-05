import Auditoria from '../models/Auditoria';
import {Op} from 'sequelize';
class AuditoriaWeekController {
async index(req, res){
    const actualWeek = req.query.actualWeek;
    const setor = req.query.setor;

   
   const auditorias = await Auditoria.findAll({
       where:{
           setor:setor,
           semana: actualWeek,
           cargo: 'Operador',
       },
       order:['created_at']
   });
   return res.json(auditorias);
}
}
export default new AuditoriaWeekController();