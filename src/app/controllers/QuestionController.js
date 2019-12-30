import Question from '../models/Question';

class QuestionController {
async index(req, res){
    const question = await Question.findByPk(req.params.id);
   return res.json(question);
}   

}
export default new QuestionController();