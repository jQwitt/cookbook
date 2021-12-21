import express from "express";

import configureEndpoints from "./api/api";

const app = express();
const port = 3000;

configureEndpoints(app);

app.listen(port, () => {
  console.info(`server started at http://localhost:${port}`);
});
