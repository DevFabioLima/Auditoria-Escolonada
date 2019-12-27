import Auditoria from '../models/Auditoria';
import {Op} from 'sequelize';
class AgendaController {
async index(req, res){
    const firstWeek = req.query.firstWeek;
    const lastWeek = req.query.lastWeek;
    const auditor = req.query.auditor;
   const auditorias = await Auditoria.findAll({
       where:{
           auditor:auditor,
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
export default new AgendaController();