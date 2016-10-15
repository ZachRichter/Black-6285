class Test < Alicorn::Sphere
	def create
		# Get a reference to the Android FTC SDK.
		@sdk = getSphere("AndroidFTC")

		# If an SDK couldn't be obtained, destroy this Sphere.
		raise "Needs to have an Android FTC SDK!" unless @sdk
	end

	def update
		puts "Setting motors backwards."
		@sdk.set "left", 1
		@sdk.set "right", -1

		sleep 2000

		puts "Setting motors forward."
		@sdk.set "right", -1
		@sdk.set "left", 1

		sleep 2000

		puts "Settings motors to zero."
		@sdk.set "right", 0
		@sdk.set "left", 0

		sleep 2000
	end

end
