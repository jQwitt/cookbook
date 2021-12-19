"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = __importDefault(require("express"));
var api_1 = __importDefault(require("./api/api"));
var app = (0, express_1.default)();
var port = 3000;
(0, api_1.default)(app);
app.listen(port, function () {
    console.info("server started at http://localhost:".concat(port));
});
