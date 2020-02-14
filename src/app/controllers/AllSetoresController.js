import Setor from '../models/Setor';

class AllSetoresController {
async index(req, res){
   const setor = await Setor.findAll({
       attributes: ['name'],
       order:['id']
   });
   return res.json(setor);
}
}
export default new AllSetoresController();