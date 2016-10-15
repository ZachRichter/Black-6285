class Arm < Stratos::Sphere

  def create
    @sdk = getSphere("AndroidFTC")
    @joy1 = @sdk.get("gamepad_1")
    @joy2 = @sdk.get("gamepad_2")
  end

  def update

    if @joy1.get("a") == true && @joy1.get("b") == false
      @sdk.set("arm", Stratos::Vector.new(0.3))

    elsif @joy1.get("b") == true && @joy1.get("a") == false
      @sdk.set("arm", Stratos::Vector.new(0.1).invert())

    else
      @sdk.set("arm", Stratos::Vector.zero)

    end #end if


    if @joy1.get("x") == true && @joy1.get("y") == false
      @sdk.set("rack", Stratos::Vector.new(0.25))

    elsif @joy1.get("y") == true && @joy1.get("x") == false
      @sdk.set("rack", Stratos::Vector.new(0.25).invert())

    else
      @sdk.set("rack", Stratos::Vector.zero)

    end # end if

  end

  def destroy

  end

end
