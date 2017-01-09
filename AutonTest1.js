var joy1, sdk;
alicorn.shard("AutonTest1")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    sdk.set("cross", 0.5);
    self.sleep(800);
    sdk.set("cross", 0);
    self.sleep(1000);
  });
