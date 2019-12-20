import { Router } from "express";
import multer from "multer";
import multerConfig from "./config/multer";

import UserController from "./app/controllers/UserController";
import SessionController from "./app/controllers/SessionController";
import authMiddleware from "./app/middlewares/auth";
import FileController from './app/controllers/FileController';
import AuditoriaController from './app/controllers/AuditoriaController';
import PlanController from './app/controllers/PlanController';

const routes = new Router();
const upload = multer(multerConfig);

routes.post("/sessions", SessionController.store);

routes.use(authMiddleware);

routes.post("/users", UserController.store);
routes.get("/users", UserController.index);
routes.put("/users", UserController.update);
routes.delete("/users/:id", UserController.delete);

routes.post("/auditoria", AuditoriaController.store);
routes.get("/auditoria", AuditoriaController.index);
routes.put("/auditoria/:id", AuditoriaController.update);
routes.delete("/auditoria/:id", AuditoriaController.delete);

routes.post("/plan/:auditoria_id", PlanController.store);

routes.post("/files", upload.single("file"), FileController.store);


export default routes;
