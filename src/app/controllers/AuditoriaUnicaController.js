import Auditoria from '../models/Auditoria';

class AuditoriaUnicaController {
async index(req, res){
    const auditoria = await Auditoria.findByPk(req.params.id);
   return res.json(auditoria);
}   

}
export default new AuditoriaUnicaController();