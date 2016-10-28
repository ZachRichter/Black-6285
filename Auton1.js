var joy1, sdk;
alicorn.shard("Auton1")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){

    for(var i = 0; i <= 3; i++){
      sdk.set("right", 0.5);
      sdk.set("left", -0.4);
      self.sleep(800);
      sdk.set("right", 0);
      sdk.set("left", 0);
      self.sleep(200);
      sdk.set("right", 0.5);
      sdk.set("left", -0.5);
      self.sleep(800);
      sdk.set("right", 0.5);
      sdk.set("left", -0.4);
      self.sleep(800);
    }

    if("color" == 10){
      sdk.set("servo", 0.5);
      sdk.set("right", 0.3);
      sdk.set("left", -0.3);
      self.sleep(400);
      sdk.set("right", 0);
      sdk.set("left", 0);
    }
    if("color" == 3){

    }
  });
