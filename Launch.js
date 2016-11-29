var joy1, sdk, a, b;
alicorn.shard("Launch")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){

    if(joy1.get("a") == true){
      a = true;
    } else if (joy1.get("a") == false){
      a = false;
    }
    if(joy1.get("b") == true){
      b = true;
    } else if (joy1.get("b") == false){
      b = false;
    }
    while(a == true){
      sdk.set("cross", -0.3);
    }
    while(b == true){
      sdk.set("cross", 0.5);
    }
    while(a == false && b == false){
      sdk.set("cross", 0);
    }

  });
