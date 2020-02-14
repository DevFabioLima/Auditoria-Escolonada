import Question from '../models/Question';
import {Op} from 'sequelize';
class QuestionOpController {
async index(req, res){
   const question = await Question.findAll({
      where:{
       id: [1,3,6,7,14,16,22]
        }
   });
   return res.json(question);
}
}
export default new QuestionOpController();