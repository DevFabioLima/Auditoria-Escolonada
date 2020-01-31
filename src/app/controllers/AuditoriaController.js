import * as Yup from "yup";
import Auditoria  from "../models/Auditoria";


class AuditoriaController {
  async store(req, res) {
    const schema = Yup.object().shape({
      setor: Yup.string().required(),
      semana: Yup.number().required(),
      status: Yup.string().required(),
      auditor: Yup.string().required(),
      data_realizado: Yup.date(),
      data: Yup.date(),
      obs: Yup.string(),
      turno: Yup.string(),
      cargo: Yup.string()
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }
    /*const auditoriaExist = await Auditoria.findOne({
      where: { setor: req.body.setor, semana: req.body.semana }
    })
      
    if (auditoriaExist) {
      return res.status(400).json({ error: "Auuditoria already exist" });
    } */
    const {
      id,
      setor,
      semana,
      status,
      auditor,
      data_realizado,
      data,
      obs,
      turno,
      cargo
    } = await Auditoria.create(req.body);
    return res.json({
      id,
      setor,
      semana,
      status,
      auditor,
      data_realizado,
      data,
      obs,
      turno,
      cargo
    });
  }
  async update(req, res) {
    const schema = Yup.object().shape({
      setor: Yup.string(),
      semana: Yup.number(),
      status: Yup.string(),
      auditor: Yup.string(),
      data_realizado: Yup.date(),
      obs: Yup.string(),
      turno: Yup.string()
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }
    const auditoria = await Auditoria.findByPk(req.params.id);
    
    if (!auditoria) {
      return res.status(400).json({ error: "This auditoria not exist" });
    }

    const {
      setor,
      semana,
      status,
      auditor,
      data_realizado,
      obs,
      turno
    } = await auditoria.update(req.body);
    return res.json({
      setor,
      semana,
      status,
      auditor,
      data_realizado,
      obs,
      turno
    });
  }
  async index(req, res) {
    
    const auditorias = await Auditoria.findAll({
      attributes: ["id","setor", "semana", "status", "auditor", "data_realizado", "obs","turno"],
    });
    
    return res.json(auditorias);
  }
  async delete(req, res) {
    const auditoria = await Auditoria.findByPk(req.params.id);
    if (!auditoria) {
      return res.status(400).json({ error: "Auditoria not exist" });
    }
    await Auditoria.destroy({ where: { id: req.params.id } });
    const auditoriaAtt = await Auditoria.findAll();
    return res.json(auditoriaAtt);
  }
}
export default new AuditoriaController();
