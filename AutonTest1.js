var joy1, sdk;
alicorn.shard("AutonTest1")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    sdk.set("right", 0.5);
    sdk.set("left", -0.4);
    self.sleep(2000);
    sdk.set("right", 0);
    sdk.set("left", 0);
    self.sleep(800);
  });
