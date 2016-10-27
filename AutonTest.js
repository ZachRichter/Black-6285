var joy1, sdk;
alicorn.shard("AutonTest")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){
    for(var i = 0; i <= 1; i++){
      sdk.set("right", 0.5);
      sdk.set("left", 0.5);
      sleep(1500);
      sdk.set("right", 0);
      sdk.set("left", 0);
    }
  });
