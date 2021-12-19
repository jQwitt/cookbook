import express, { Request, Response } from "express";

function configureEndpoints(app: express.Application) {
  app.get("/", (req: Request, res: Response) => {
    res.send("Hello world!");
  });
}

export default configureEndpoints;
