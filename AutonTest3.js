var joy1, sdk;
alicorn.shard("AutonTest3")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    sdk.set("cross", 0.5);
    self.sleep(800);
    sdk.set("cross", 0);
    self.sleep(500);
    sdk.set("cross", -0.4);
    self.sleep(1100);
    sdk.set("cross", 0);
    self.sleep(300);
    sdk.set("cross", 0.5);
    self.sleep(300);
    sdk.set("chain", -1);
    self.sleep(500);
    sdk.set("chain", 0);
    self.sleep(200);
    sdk.set("cross", 0.5);
    self.sleep(600);
    sdk.set("cross", 0);
    self.sleep(1000);

  });
