class Servo < Stratos::Sphere

  def create
    @sdk = getSphere("AndroidFTC")
    @joy1 = @sdk.get("gamepad_1")
    @joy2 = @sdk.get("gamepad_2")

  end

---------------------------------------------------------------

  def update

    if @joy1.get("a") == true
      @sdk.set("Sleft", Stratos::Vector.new(0.3))
      @sdk.set("Sright", Stratos::Vector.new(0.5).invert())
    end

    if @joy1.get("b") == true
      @sdk.set("Sleft", Stratos::Vector.new(0.6).invert())
      @sdk.set("Sright", Stratos::Vector.new(0.5))
    end

    if @joy1.get("x") == true
      @sdk.set("Sleft", Stratos::Vector.new(0.6).invert())
      @sdk.set("Sright", Stratos::Vector.new(0.5).invert())
    end

    if @joy1.get("y") == true
      @sdk.set("Sleft", Stratos::Vector.new(0.6).invert())
      @sdk.set("Sright", Stratos::Vector.new(0.5).invert())
    end

  end

--------------------------------------------------------------

  def destroy

  end


end
