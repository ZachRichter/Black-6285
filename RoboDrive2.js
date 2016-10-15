var joy1, sdk;
alicorn.shard("RoboDrive2")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){

    if (joy1.get("y1") <= -0.3) {
      sdk.set("left", 0.5);

    } else {
      sdk.set("left", 0);
    }

  });
