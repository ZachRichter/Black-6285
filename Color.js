var sdk, joy1;
alicorn.shard("Color")
    .create(function(self) {
        sdk = self.require("AndroidFTC");
        joy1 = sdk.get("gamepad_1");
      )}

      .update(function(self) {
        console.log(sdk.get("color"));
      }
