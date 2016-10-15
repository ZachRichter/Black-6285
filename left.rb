class Left < Stratos::Sphere
  def create

    @sdk = getSphere("AndroidFTC")
		@joy1 = @sdk.get("gamepad_1")
		@joy2 = @sdk.get("gamepad_2")
  end

  def update
  @sdk.set("right", Stratos::Vector.new(0.3))

  sleep(2000)

  @sdk.set("right", Stratos::Vector.zero)

  break
  end

  def destroy
  end
end
