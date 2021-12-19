import express from "express";

const app = express();
const port = 8080;

app.get("/", (req, res) => {
  res.send("Hello world!");
});

async function start() {
  app.listen(port, () => {
    console.info(`server started at http://localhost:${port}`);
  });
}

start();
