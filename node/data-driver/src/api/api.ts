import express, { Request, Response } from "express";

function configureApi(app: express.Application) {
  app.get("/", (req: Request, res: Response) => {
    res.send("Hello world!");
  });

  app.get("/collections", (req: Request, res: Response) => {
    res.send("Hello world!");
  });
}

export default configureApi;
