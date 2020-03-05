import Setor from '../models/Setor';

class SetoresController {
async index(req, res){
    const name = req.query.setor;
    if(setor === undefined){
        return ;
    }else{
    const setor = await Setor.findAll({
        where: {
            name: name
        }
    })
   return res.json(setor);
}   
}
}
export default new SetoresController();