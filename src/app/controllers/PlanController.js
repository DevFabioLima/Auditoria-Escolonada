import * as Yup from "yup";

import Plan from '../models/Plan';
import File from '../models/File';

class ListController {
  async store(req, res) {
    const schema = Yup.object().shape({
      item: Yup.string().required(),
      problema: Yup.string().required(),
      auditor: Yup.string(),
      maquina: Yup.string(),
      setor: Yup.string(),
      acao: Yup.string(),
      responsavel: Yup.string(),
      data: Yup.date(),
      prazo: Yup.date(),
      conclusao: Yup.date()
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }
      

    const {
      item,
      problema,
      auditor,
      maquina,
      setor,
      acao,
      responsavel,
      data,
      prazo,
      conclusao
    } = await Plan.create(req.body);
    const plan = await Plan.findOne({
        where: {item: req.body.item, problema: req.body.problema}
    });
    
    const { auditoria_id } = await Plan.update(req.params,{
      where: {id: plan.id}
    });
  
    return res.json({
      item,
      problema,
      auditor,
      maquina,
      setor,
      acao,
      responsavel,
      data,
      prazo,
      conclusao,
    });

  }
  async index(req, res) {
    const { page = 1 } = req.query;
    const plan = await Plan.findAll({
      attributes: ["item", "problema", "maquina", "setor","responsavel","data","prazo","conclusao"],
      include: [
        {
          model: File,
          as: 'file',
          attributes: ["id", "path", "url"]
        }
      ],
      limit: 20,
      offset: (page - 1) * 20
    });
    return res.json(plan);
  }

  async update (req, res){
    const schema = Yup.object().shape({
      item: Yup.string(),
      problema: Yup.string(),
      auditor: Yup.string(),
      maquina: Yup.string(),
      setor: Yup.string(),
      responsavel: Yup.string(),
      data: Yup.date(),
      prazo: Yup.date(),
      conclusao: Yup.date()
    });
    if(!(await schema.isValid(req.body))){
      return res.status(400).json({error: "Validation fails"})
    }
    const plan = await Plan.findByPk(req.params.id);

    if(!plan){
      return res.status(400).json({error: "This event not exist"});
    }
    const {
       item, 
       problema,
       auditor, 
       maquina, 
       setor, 
       responsavel, 
       data, 
       prazo, 
       conclusao
      } = await plan.update(req.body);
      return res.json ({
        item, 
        problema,
        auditor, 
        maquina, 
        setor, 
        responsavel, 
        data, 
        prazo, 
        conclusao
      })
  }

  async delete (req, res){
    const plan = await Plan.findByPk(req.params.id);
    if(!plan){
      return res.status(400).json({error: "Plan not exist"});
    }
    await Plan.destroy({ where: {id: req.params.id}});
    const plan2 = await Plan.findAll();
    return res.json(plan2);

  }
}

export default new ListController();
