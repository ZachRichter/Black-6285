class Atomauto < Stratos::Sphere

	def create

		# Get a reference to the Android FTC SDK.
		@sdk = getSphere("AndroidFTC")

    @sdk.set("left", Stratos::Vector.new(0.5))
  	@sdk.set("right", Stratos::Vector.new(0.5))

  	sleep(1500)

  	@sdk.set("left", Stratos::Vector.new(0.5))
  	@sdk.set("right", Stratos::Vector.new(0.5).invert())

  	sleep(500)

  	@sdk.set("left", Stratos::Vector.new(0.5))
  	@sdk.set("right", Stratos::Vector.new(0.5))

  end



  def update

  end


	def destroy

	end

end
