var joy1, sdk;
alicorn.shard("Launch")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){

    if(joy1.get("a") == true){
      var a = true;
    } else if (joy1.get("a") == false){
      a = false;
    }

    if(joy1.get("b") == true){
      var b = true;
    } else if (joy1.get("b") == false){
      b = false;
    }


    if(a == true){
      sdk.set("cross", -0.3);
    } else if(a == false && b == false){
      sdk.set("cross", 0);
    }
    if(b == true){
      sdk.set("cross", 0.5);
    } else if(a == false && b == false){
      sdk.set("cross", 0);
    }


  });
