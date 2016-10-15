class Belt < Stratos::Sphere

  def create
    @sdk = getSphere("AndroidFTC")
    @joy1 = @sdk.get("gamepad_1")
    @joy2 = @sdk.get("gamepad_2")

    belt = false
  end

  def update

    if @joy1.get("a") == true
       #belt = true
      @sdk.set("lift", Stratos::Vector.new(0.3).invert())
    end

    if @joy1.get("b") == true
      #belt = false
      @sdk.set("lift", Stratos::Vector.zero)
    end

=begin
    if belt == true
      @sdk.set("lift", Stratos::Vector.new(0.5).invert())

    end

    if belt == false
      @sdk.set("lift", Stratos::Vector.zero)

    end
=end
  end

  def destroy

  end

end
