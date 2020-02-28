import Plan from '../models/Plan';

class PlanUnicaController {
async index(req, res){
    const plan = await Plan.findByPk(req.params.id);
   return res.json(plan);
}   

}
export default new PlanUnicaController();