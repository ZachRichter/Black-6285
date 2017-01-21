var joy1, sdk;
function sleep(milliseconds) {
var start = new Date().getTime();
for (var i = 0; i < 1e7; i++) {
if ((new Date().getTime() - start) > milliseconds){
  break;
}}}
alicorn.shard("AutonTest1")

  .create(function(self){

    sdk = self.require("AndroidFTC");
    joy1 = sdk.get("gamepad_1");

    sdk.set("cross", 0.5);
    sleep(300);
    sdk.set("cross", 0);
    sleep(800);
  });
