import express from 'express';
import path from 'path';
import cors from 'cors';
import routes from './routes';
import cron from 'node-cron';
import './database';
import AuditoriaLate from './app/jobs/AuditoriaLate';
import PlanLate from './app/jobs/PlanLate';

class App {
  constructor() {
    this.server = express();
    this.auditoria();
    /*this.plan();*/
    this.middlewares();
    this.routes();
  }
 auditoria(){
    cron.schedule("* * * * *", AuditoriaLate);
  }
 /* plan(){
    cron.schedule("* * * * *", PlanLate);
  } */

  middlewares() {
    this.server.use(express.json());
    this.server.use(cors());
    this.server.use(
      '/files',
      express.static(path.resolve(__dirname, '..', 'tmp', 'uploads'))
    );
  }

  routes() {
    this.server.use(routes);
  }
  
}

export default new App().server;
