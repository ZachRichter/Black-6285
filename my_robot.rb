class MyRobot < Alicorn::Sphere
    def create
        @sdk = getSphere("AndroidFTC")
        @joy1 = @sdk.get("gamepad_1")
    end

    def update
        x = @joy1.get("x2").invert()
        y = @joy1.get("y1")

        left = x.subtract(y).require(0.2)
        right = x.add(y).require(0.2)

        #@sdk.set("left", left)
        #@sdk.set("right", right)

        @sdk.set("left", @joy1.get("y1"))
        @sdk.set("right", @joy1.get("y2"))
    end
end
