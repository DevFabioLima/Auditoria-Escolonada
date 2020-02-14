import express from 'express';
import path from 'path';
import cors from 'cors';
import routes from './routes';
import cron from 'node-cron';
import './database';
import EmailPlan from './app/jobs/EmailPlan';

class App {
  constructor() {
    this.server = express();
    /*this.jobs();*/
    this.middlewares();
    this.routes();
  }
  /**jobs(){
    cron.schedule("* * * * *", EmailPlan);
  }*/

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
