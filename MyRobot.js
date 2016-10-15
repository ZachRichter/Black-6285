var sdk, joy1;
alicorn.shard("MyRobot")
    .create(function(self) {
        sdk = self.require("AndroidFTC");
        joy1 = sdk.get("gamepad_1");
    })
    .update(function(self) {
        var y2 = joy1.get("y2");
        var y = joy1.get("y1");

        var left = y2.invert() / 2;
        var right = y / 2;

        sdk.set("left", left);
        sdk.set("right", right);
    });
