import * as Yup from "yup";
import Events from "../models/Event";
import File from "../models/File";

class EventController {
  async store(req, res) {
    const schema = Yup.object().shape({
      name: Yup.string().required(),
      attraction: Yup.string().required(),
      description: Yup.string().required(),
      date: Yup.date().required(),
      hours: Yup.string().required(),
      valuepistaf: Yup.number().required(),
      valuepistam: Yup.number().required(),
      valuecamarotef: Yup.number().required(),
      valuecamarotem: Yup.number().required()
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }
    const eventExist = await Events.findOne({
      where: { attraction: req.body.attraction }
    });
    const eventDate = await Events.findOne({
      where: { date: req.body.date }
    });
    if (eventDate) {
      return res.status(400).json({ error: "This date already exist event" });
    }
    if (eventExist) {
      return res.status(400).json({ error: "Event already exist" });
    }
    const {
      id,
      name,
      attraction,
      description,
      date,
      hours,
      valuepistaf,
      valuepistam,
      valuecamarotem,
      valuecamarotef
    } = await Events.create(req.body);
    return res.json({
      id,
      name,
      attraction,
      description,
      date,
      hours,
      valuepistaf,
      valuepistam,
      valuecamarotem,
      valuecamarotef
    });
  }
  async update(req, res) {
    const schema = Yup.object().shape({
      name: Yup.string().required(),
      attraction: Yup.string(),
      description: Yup.string(),
      date: Yup.date(),
      hours: Yup.string(),
      valuepistaf: Yup.number(),
      valuepistam: Yup.number(),
      valuecamarotef: Yup.number(),
      valuecamarotem: Yup.number()
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }
    const event = await Events.findByPk(req.params.id);

    if (!event) {
      return res.status(400).json({ error: "This event not exist" });
    }

    const {
      name,
      attraction,
      date,
      hours,
      valuepistaf,
      valuepistam,
      valuecamarotem,
      valuecamarotef
    } = await event.update(req.body);
    return res.json({
      name,
      attraction,
      date,
      hours,
      valuepistaf,
      valuepistam,
      valuecamarotem,
      valuecamarotef
    });
  }
  async index(req, res) {
    const { page = 1 } = req.query;
    const events = await Events.findAll({
      attributes: ["name", "attraction", "description", "date", "hours"],
      include: [
        {
          model:File,
          attributes:['name','path','url']
        }
      ],
      limit: 20,
      offset: (page - 1) * 20
    });
    return res.json(events);
  }
  async delete(req, res) {
    const event = await Events.findByPk(req.params.id);
    if (!event) {
      return res.status(400).json({ error: "Event not exist" });
    }
    await Events.destroy({ where: { id: req.params.id } });
    const event2 = await Events.findAll();
    return res.json(event2);
  }
}
export default new EventController();
