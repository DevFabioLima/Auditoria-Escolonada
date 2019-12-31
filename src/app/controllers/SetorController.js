import Auditoria from '../models/Auditoria';

class SetorController {
async index(req, res){
    const lugar = await Auditoria.findByPk(req.params.id);
   return res.json(lugar);
}   

}
export default new SetorController();