import Question from '../models/Question';

class QuestionController {
async index(req, res){
   const question = await Question.findAll({
       order:['id']
   });
   return res.json(question);
}
}
export default new QuestionController();