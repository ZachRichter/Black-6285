var joy1, sdk;
alicorn.shard("DriveAlt2")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

  })

  .update(function(self){
    var left = joy1.get("y1")/1.5;
    var right = joy1.get("y2")/-1.5;

    sdk.set("left", left);
    sdk.set("right", 0);

  });
