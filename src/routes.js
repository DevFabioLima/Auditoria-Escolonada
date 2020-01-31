import { Router } from "express";
import multer from "multer";
import multerConfig from "./config/multer";

import UserController from "./app/controllers/UserController";
import SessionController from "./app/controllers/SessionController";
import authMiddleware from "./app/middlewares/auth";
import FileController from './app/controllers/FileController';
import AuditoriaController from './app/controllers/AuditoriaController';
import PlanController from './app/controllers/PlanController';
import AgendaController from './app/controllers/AgendaController';
import QuestionController from './app/controllers/QuestionController';
import AllQuestionController from './app/controllers/AllQuestionController';
import SetorController from './app/controllers/SetorController';
import AuditoriaWeekController from './app/controllers/AuditoriaWeekController';
import AuditoriaMonthController from './app/controllers/AuditoriaMonthController';
import AuditoriaUnicaController from './app/controllers/AuditoriaUnicaController';

const routes = new Router();
const upload = multer(multerConfig);

routes.post("/sessions", SessionController.store);
routes.post("/users", UserController.store);
routes.use(authMiddleware);

routes.get("/users", UserController.index);
routes.put("/users", UserController.update);
routes.delete("/users/:id", UserController.delete);

routes.post("/auditoria", AuditoriaController.store);
routes.get("/auditoria", AuditoriaController.index);
routes.put("/auditoria/:id", AuditoriaController.update);
routes.delete("/auditoria/:id", AuditoriaController.delete);

routes.post("/plan/:auditoria_id", PlanController.store);
routes.get("/plan",PlanController.index);
routes.put("/plan/:id",PlanController.update);
routes.delete("/plan/:id",PlanController.delete);

routes.get('/agenda',AgendaController.index);

routes.post("/files", upload.single("file"), FileController.store);
routes.get("/questions/:id",QuestionController.index);
routes.get("/all-questions",AllQuestionController.index);
routes.get("/setor/:id",SetorController.index);
routes.get("/auditorias-semana",AuditoriaWeekController.index);

routes.get("/auditoria-mes", AuditoriaMonthController.index);
routes.get("/auditoria-unica/:id", AuditoriaUnicaController.index);


export default routes;
