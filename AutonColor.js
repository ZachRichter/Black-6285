var sdk, joy1;
alicorn.shard("Color")

  .create(function(self){
    console.log("create called");

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");


    })
    .update(function(self) {
        console.log("update called");

        for (var i =0; i >= 1; i++){
          console.log(sdk.get("color"));
        }
    });
