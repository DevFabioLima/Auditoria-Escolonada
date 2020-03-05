import Auditoria from '../models/Auditoria';
import {Op} from 'sequelize';
class MatrizController {
async index(req, res){
    const firstWeek = req.query.firstWeek;
    const lastWeek = req.query.lastWeek;
    const ano = req.query.date2;
   const auditorias = await Auditoria.findAll({
       where:{
           ano: ano,
           semana: {
               [Op.between]: [
                   firstWeek,lastWeek
               ]
           },
           id: {
               [Op.between]: [
                   28,748
               ]
           }
       },
       order:['semana']
   });
   return res.json(auditorias);
}
}
export default new MatrizController();