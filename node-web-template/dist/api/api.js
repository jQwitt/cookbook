"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function configureEndpoints(app) {
    app.get("/", function (req, res) {
        res.send("Hello world!");
    });
}
exports.default = configureEndpoints;
