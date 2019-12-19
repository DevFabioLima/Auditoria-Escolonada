import * as Yup from "yup";
import User from "../models/User";

class UserController {
  async store(req, res) {
    const schema = Yup.object().shape({
      name: Yup.string().required(),
      email: Yup.string()
        .email()
        .required(),
      password: Yup.string()
        .required()
        .min(4),
      type: Yup.string()
        .required()
        .min(3),
      cpf: Yup.string()
        .required()
        .min(11)
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }
    // SE O EMAIL JA EXISTIR MENSAGEM DE ERROR //
    const userExists = await User.findOne({ where: { email: req.body.email } });
    const userCPF = await User.findOne({ where: { CPF: req.body.cpf } });
    if (userExists) {
      return res.status(400).json({ error: "User already exists. " });
    }
    if (userCPF) {
      return res.status(400).json({ error: "User already exists. " });
    }
    // RETORNA OS DADOS QUE FORAM INSERIDOS //
    const { id, name, email, type, cpf } = await User.create(req.body);
    return res.json({
      id,
      name,
      email,
      type,
      cpf
    });
  }

  async update(req, res) {
    const schema = Yup.object().shape({
      name: Yup.string(),
      email: Yup.string().email(),
      oldPassword: Yup.string().min(4),
      password: Yup.string()
        .min(4)
        .when("oldPassword", (oldPassword, field) =>
          oldPassword ? field.required() : field
        ),
      confirmPassword: Yup.string().when("password", (password, field) =>
        password ? field.required().oneOf([Yup.ref("password")]) : field
      ),
      type: Yup.string().required()
    });
    if (!(await schema.isValid(req.body))) {
      return res.status(400).json({ error: "Validation fails" });
    }
    // PEGA DO BODY O EMAIL E SENHA ANTIGA //
    const { email, oldPassword } = req.body;
    // BUSCA NO BANCO O USUARIO COM O ID Q FOI AUTENTICADO//
    const user = await User.findByPk(req.userId);
    // VERIFICA SE O USUARIO QUER MUDAR O EMAIL SE SIM VERIFICA SE O EMAIL JA ESTA CADASTRADO//
    if (email !== user.email) {
      const userExists = await User.findOne({ where: { email } });
      if (userExists) {
        return res.status(400).json({ error: "User already exists. " });
      }
    }
    // SÓ VOU ALTERAR A SENHA SE ELE INFORMOR A SENHA ANTIGA //
    if (oldPassword && !(await user.checkPassword(oldPassword))) {
      return res.status(401).json({ error: "Password does not match" });
    }
    // DA O UPDATE NO USUARIO COM AS INFORMAÇÕES DO BODY //
    const { id, name, type } = await user.update(req.body);
    return res.json({
      id,
      name,
      email,
      type
    });
  }

  async delete(req, res) {
    const user = await User.findByPk(req.params.id);
    if (!user) {
      return res.json("User invalid");
    }
    await User.destroy({ where: { id: req.params.id } });
    return res.json("User delete with sucess");
  }

  async index(req, res){
    const {page = 1} = req.query;
    const user = await User.findAll({
      order:['name'],
      attributes: ['name','email','type','cpf'],
      limit: 20,
      offset: (page - 1) * 20,
    });
    return res.json(user);
  }
  
}

export default new UserController();
