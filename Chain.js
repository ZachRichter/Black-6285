var joy1, sdk;
alicorn.shard("Chain")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    var a = false;
    var b = false;
  })

  .update(function(self){

    if(joy1.get("x") == true){
      a = true;
    } else {
      a = false;
    }
    if(joy1.get("y") == true){
      b = true;
    } else {
      b = false;
    }

    if(a == true && b == false){
      sdk.set("chain", 0.2);
    } else if(b == true && a == false){
      sdk.set("chain", 0);
    }

  });
