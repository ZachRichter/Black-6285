var joy1, sdk;
alicorn.shard("Chain")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    var a = false;
    var b = false;
  })

  .update(function(self){

    if(joy1.get("a") == true){
      a = true;
    } else {
      a = false;
    }
    if(joy1.get("b") == true){
      b = true;
    } else {
      b = false;
    }

    if(a == true){
      sdk.set("chain", 1);
    } else if(b == true){
      sdk.set("chain", 0);
    }

  });
