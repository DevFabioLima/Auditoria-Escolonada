import * as Yup from "yup";
import List from "../models/List";
import Event from "../models/Event";

class ListController {
  async store(req, res) {
    const schema = Yup.object().shape({
      name: Yup.string().required(),
      cpf: Yup.string().required()
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }

    const { name, cpf } = await List.create(req.body);

    const list2 = await List.findOne({
      where: { cpf: req.body.cpf },
      order: [["createdAt", "DESC"]]
    });

    const { id_events } = await List.update(req.params, {
      where: { id: list2.id }
    });

    const event_id = req.params.id_events;

    const list4 = await List.findAndCountAll({
      where: { id_events: event_id, cpf: req.body.cpf }
    });

    if (list4.count > 1) {
      await List.destroy({ where: { id: list2.id } });
      return res.status(400).json({ error: "This name already in List" });
    }

    return res.json({
      name,
      cpf
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
