import Auditoria from '../models/Auditoria';
import {Op} from 'sequelize';
class AuditoriaMonthController {
async index(req, res){
    const firstWeek = req.query.firstWeek;
    const lastWeek = req.query.lastWeek;
   const auditorias = await Auditoria.findAll({
       where:{
           semana: {
               [Op.between]: [
                   firstWeek,lastWeek
               ]
           }
       },
       order:['semana']
   });
   return res.json(auditorias);
}
}
export default new AuditoriaMonthController();