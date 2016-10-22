var joy1, sdk;
alicorn.shard("Launch")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){

    if(joy1.get("a") == true){
      var a = true;
    }
    if(joy1.get("b") == true){
      var b = true;
    }

    if(a == true){
      sdk.set("cross", -0.3);
      self.sleep(1300);
      sdk.set("cross", 0);
      self.sleep(1000);
      a = false;
    }

    if(b == true){
      sdk.set("cross", 0.5);
      self.sleep(1000);
      sdk.set("cross", 0);
      self.sleep(1000);
      b = false;
    }
  });
