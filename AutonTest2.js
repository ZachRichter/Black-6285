var joy1, sdk;
alicorn.shard("AutonTest2")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    sdk.set("cross", 0.5);
    self.sleep(600);
    sdk.set("cross", 0);
    self.sleep(500);
    sdk.set("cross", -0.5);
    self.sleep(800);
    sdk.set("cross", 0);
    self.sleep(100);
    sdk.set("cross", 0.5);
    self.sleep(800);
    sdk.set("chain", -1);
    slef.sleep(500);
    sdk.set("chain", 0);
    self.sleep(200);
    sdk.set("cross", 0.5)
    self.sleep(600);
    sdk.set("cross", 0);
    self.sleep(1000);
    sdk.set("right", -0.5);
    sdk.set("left", 0.4);
    self.sleep(1800);
    sdk.set("right", 0);
    sdk.set("left", 0);
    self.sleep(800);

  )};
