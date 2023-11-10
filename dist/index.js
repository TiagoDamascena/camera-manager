"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const gphoto2_driver_1 = require("@tsed/gphoto2-driver");
(0, gphoto2_driver_1.run)(() => {
    const cameraList = new gphoto2_driver_1.CameraList().load();
    console.log(cameraList);
}, { logLevel: "debug" });
