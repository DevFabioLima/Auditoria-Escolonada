import * as Yup from "yup";

import Plan from '../models/Plan';

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
    const list = await List.findAll({
      attributes: ["name", "cpf"],
      include: [
        {
          model: Event,

          attributes: ["name", "attraction"]
        }
      ],
      limit: 20,
      offset: (page - 1) * 20
    });
    return res.json(list);
  }
}

export default new ListController();
