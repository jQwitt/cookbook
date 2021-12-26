"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function configureApi(app) {
    app.get("/", function (req, res) {
        res.send("Hello world!");
    });
    app.get("/collections", function (req, res) {
        res.send("Hello world!");
    });
}
exports.default = configureApi;
