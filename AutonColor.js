var sdk, joy1;
alicorn.shard("AutonColor")

  .create(function(self){
    console.log("create called");

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");


    })
    .update(function(self) {
        console.log("update called");

          console.log(sdk.get("color"));

    });
