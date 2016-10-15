class Atomauto < Stratos::Sphere

	def create

		# Get a reference to the Android FTC SDK.
		@sdk = getSphere("AndroidFTC")
		@joy1 = @sdk.get("gamepad_1")
		@joy2 = @sdk.get("gamepad_2")

  end

  def update


    @sdk.set("left", Stratos::Vector.new(0.5))
    @sdk.set("right", Stratos::Vector.new(0.5))

    sleep(1500)

    @sdk.set("left", Stratos::Vector.new(0.5))
    @sdk.set("right", Stratos::Vector.new(0.5).invert())

    sleep(500)

    #Hi Zach, you're super cool -TheProgrammingGod
    #drm1qaz@gmail.com / dylantheprogrammer1@gmail.com =
    @sdk.set("left", Stratos::Vector.new(0.5))
    @sdk.set("right", Stratos::Vector.new(0.5))

		break

  end


	def destroy

	end

end
