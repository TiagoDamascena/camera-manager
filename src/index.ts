import {CameraList, run} from "@tsed/gphoto2-driver";

run(
  () => {
    const cameraList = new CameraList().load();

    console.log(cameraList);
  },
  {logLevel: "debug"}
);