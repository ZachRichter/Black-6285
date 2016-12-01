var joy1, sdk;
alicorn.shard("DriveAlt")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){
    var left = joy1.get("y1")/1.5;
    var right = joy1.get("y2")/-1.5;

    sdk.set("left", left);
    sdk.set("right", right);


    if(joy1.get("x") == true){
      var a = true;
    } else if (joy1.get("x") == false){
      a = false;
    }

    if(joy1.get("y") == true){
      var b = true;
    } else if (joy1.get("y") == false){
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
