class TeleopOne < Stratos::Sphere
	
	def create
		
		@sdk = getSphere("AndroidFTC")
		@joy1 = @sdk.get("gamepad_1")
		
	end
	
	def update
		
		#This section sets each tread motor to one toggle
		
		@l = @joy1.get("y1").invert()
		@r = @joy1.get("y2")
		
		@sdk.set("left", @l)
		@sdk.set("right", @r)
		
		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
		#Raises the rack and pinion when a is pressed and
		#lowers it when b is pressed.
		
		if @joy1.get("a") == true && @joy1.get("b") == false
			
			@sdk.set("rack", Stratos::Vector.new(0.5).invert())
			
		elsif @joy1.get("a") == false && @joy1.get("b") == true
			
			@sdk.set("rack", Stratos::Vector.new(0.5))
			
		else
			
			@sdk.set("rack", Stratos::Vector.zero)
			
		end
		
		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
		#Moves the arm outward when x is pressed and inward
		#when y is pressed.
		
		if @joy1.get("x") == true && @joy1.get("y") == false
			
			@sdk.set("arm", Stratos::Vector.new(0.25).invert())
			
		elsif @joy1.get("x") == false && @joy1.get("y") == true
			
			@sdk.set("arm", Stratos::Vector.new(0.25))
			
		else
			
			@sdk.set("rack", Stratos::Vector.zero)
			
		end
		
		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
		#Moves the left servo to the outward posistion when
		#the left bumper is pressed and back to the closed
		#position when it is pressed again.
		
		if @sdk.get("sleft") > 0.5 && @joy1.get("left_bumper") == true
			
			@sdk.set("sleft", 0)
			
		elsif @sdk.get("sleft") < 0.5 && @joy1.get("left_bumper") == true
			
			@sdk.set("sleft", 1)
			
		end
		
		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
		#Moves the right servo to the outward posistion when
		#the right bumper is pressed and back to the closed
		#position when it is pressed again.
		
		if @sdk.get("sright") < -0.5 && @joy1.get("right_bumper") == true
			
			@sdk.set("sright", 0)
			
		elsif @sdk.get("sright") > -0.5 && @joy1.get("right_bumper") == true
			
			@sdk.set("sright", 1)
			
		end
		
	end
	
	def destroy
		
		#destroy
		
	end
	
end