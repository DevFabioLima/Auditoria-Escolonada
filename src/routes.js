import { Router } from "express";
import multer from "multer";
import multerConfig from "./config/multer";

import UserController from "./app/controllers/UserController";
import SessionController from "./app/controllers/SessionController";
import authMiddleware from "./app/middlewares/auth";
import EventController from "./app/controllers/EventController";
import FileController from "./app/controllers/FileController";
import ListController from "./app/controllers/ListController";

const routes = new Router();
const upload = multer(multerConfig);

routes.post("/sessions", SessionController.store);

routes.use(authMiddleware);
routes.get("/users", UserController.index);
routes.post("/users", UserController.store);
routes.put("/users", UserController.update);
routes.delete("/users/:id", UserController.delete);

routes.post("/events", EventController.store);
routes.put("/events/:id", EventController.update);
routes.get("/events", EventController.index);
routes.delete("/events/:id", EventController.delete);

routes.post("/files", upload.single("file"), FileController.store);

routes.post("/list/:id_events", ListController.store);
routes.get("/list", ListController.index);
export default routes;
