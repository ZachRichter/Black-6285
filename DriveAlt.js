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
    sdk.set("right", 0);


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
      sdk.set("cross", -0.2);
    } else if(a == false && b == false){
      sdk.set("cross", 0);
    }
    if(b == true){
      sdk.set("cross", 0.3);
    } else if(a == false && b == false){
      sdk.set("cross", 0);
    }


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
    if(joy1.get("left_bumper") == true){
      var c = true;
    } else {
      c = false;
    }

    if(a == true){
      sdk.set("chain", -1);
    } else if(b == true){
      sdk.set("chain", 0);
    } else if(c == true){
      sdk.set("chain", 0.5);
    }
  });
