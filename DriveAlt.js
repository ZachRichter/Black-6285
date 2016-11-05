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
    }
    if(joy1.get("y") == true){
      var b = true;
    }

    if(a == true){
      sdk.set("cross", -0.3);
      self.sleep(1200);
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
