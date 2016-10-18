var joy1, sdk;
alicorn.shard("RoboDrive")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    var toggle = false;
  })

    .update(function(self){
      var left = joy1.get("y1");
      var right = joy1.get("y2");

      if (joy1.get("a") == true){
        toggle = true;
      } else if (joy1.get("b") == true) {
        toggle = false;
      }

      if (toggle == false){
        if (joy1.get("y1") >= 0.3){
          sdk.set("left", -0.5);
      } else if (joy1.get("y1") <= -0.3){
        sdk.set("left", 0.5);
      } else {
        sdk.set("left", 0);
      }

        if (joy1.get("y2") >= 0.3){
          sdk.set("right", 0.5);
      } else if (joy1.get("y2") <= -0.3){
        sdk.set("right", -0.5);
      } else {
        sdk.set("right", 0);
      }
    }

      if (toggle == true){
        if (joy1.get("y1") >= 0.3){
          sdk.set("left", -0.2);
        }   else if (joy1.get("y1") <= -0.3){
        sdk.set("left", 0.2);
      } else {
      sdk.set("left", 0);
    }

        if (joy1.get("y2") >= 0.3){
          sdk.set("right", 0.2);
          } else if (joy1.get("y2") <= -0.3){
          sdk.set("right", -0.2);
        } else {
      sdk.set("right", 0);
    }
    }
});
