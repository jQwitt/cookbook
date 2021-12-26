import express from "express";

import configureMongoose from "./loaders/mongoose";
import configureApi from "./api/api";

import { SampleModel } from "./models";

async function start() {
  const app = express();
  const port = 3000;

  await configureMongoose();
  configureApi(app);

  // testing - works!
  const sample = new SampleModel({ name: "sample" });
  sample.save();

  app.listen(port, () => {
    console.info(`server started at http://localhost:${port}`);
  });
}

start();
