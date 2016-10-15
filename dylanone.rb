class Dylanone < Stratos::Sphere


	def create
		@sdk = getSphere("AndroidFTC")
		@joy1 = @sdk.get("gamepad_1")
		@joy2 = @sdk.get("gamepad_2")
	end

	def update

		if @joy1.get("x") == true
			@belt = true

		elsif @joy1.get("y") == true
			@belt = false

		end

		#Right Trigger
		if @joy1.get("dpad_right") == true
			@sdk.set("Sright", Stratos::Vector.new(0.5))

		elsif @joy1.get("dpad_up") == true
			@sdk.set("Sright", Stratos::Vector.zero)

		end


		if @sdk.get("left_trigger").require(0.2) > 0
			@sdk.set("Sleft", Stratos::Vector.new(0.5))

		elsif @sdk.get("left_bumper") == true
			@sdk.set("Sleft", Stratos::Vector.zero)

		end

		y1 = @joy1.get("y1")
		x1 = @joy1.get("x1")
		y2 = @joy1.get("y2")
		x2 = @joy1.get("x2")

		left = x1.add(y1).require(0.15)
		right = x1.subtract(y1).require(0.15)

		#Analog forward drives forward
		if y1.value.require(0.5) > 0
			@sdk.set("left", left)
			@sdk.set("right", right.invert)

		#Analog backward drives backward
		elsif y1.value.require(0.5) < 0
			@sdk.set("left", left.invert)
			@sdk.set("right", right)

		end
		#Analog right point turns right
		if x1.value.require(0.5) > 0
			@sdk.set("left", left)
			@sdk.set("right", right)

		#Analog left point turns left
		elsif x1.value.require(0.5) < 0
			@sdk.set("left", left.invert)
			@sdk.set("right", right.invert)

		end

		#pressing A will give speed boost


		#Pressing X will turn conveyor belt on
		if @belt
			@sdk.set("lift", Stratos::Vector.max)

		else
			@sdk.set("lift", Stratos::Vector.zero)

		end

	#End update
	end

	def destroy
		
	end
#End class
end
