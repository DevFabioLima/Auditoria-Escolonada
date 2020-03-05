import Auditoria from '../models/Auditoria';
import {Op} from 'sequelize';
class AuditoriaGestaoController {
async index(req, res){
   const setor = req.query.setor;
   if(setor === undefined) {
       return;
   }else{
   const auditorias = await Auditoria.findAll({
       where:{
           setor: setor,
           cargo: {
               [Op.ne]: 'Operador',
           },
           status: {
               [Op.ne]: 'Planejado'
           }
       },
       order:[['id', 'ASC']]
   });
   return res.json(auditorias);
}
}
}

export default new AuditoriaGestaoController();