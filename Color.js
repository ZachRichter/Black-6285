var sdk, joy1;
alicorn.shard("Color")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");


    })
    .update(function(self) {


        for (var i =0; i == 1; i++){
          console.log(sdk.get("color"));
        }
    });
