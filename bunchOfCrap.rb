class Dylan < Stratos::Sphere

	# Method: create//////////////////////////////////////////////////////////////
	#
	# Called when this Sphere is first created, immediately before it begins receiving
	# updates.
	#
	# In FTC, this method should be used to initialize your robot and prepare it
	# for operation.
	#
	# Alternatively, if you want to have a linear-style OpMode, usually for an
	# autonomous program, you can put all of that code in this function since
	# it wil only be run once.
	#
	def create
		# Get a reference to the Android FTC SDK.
		@sdk = getSphere("AndroidFTC")
		# Your intialization code goes here.
		#Setup all the hardware
		@joy1 = @sdk.get("gamepad_1")
		@joy2 = @sdk.get("gamepad_2")

	end

	# Method: update//////////////////////////////////////////////////////////////
	#
	# Called whenever this Sphere is updated.
	#
	# In FTC, this method should be used to control your robot during the
	# teleoperated portion of the game.  If you need to delay for any reason,
	# you can call sleep(milliseconds) from within this method to halt execution
	# of this Sphere until the specified amount of time elapses; don't worry,
	# everything else will keep running even while your Sphere is sleeping.
	def update
		# Your update code goes here.
		sleep(50)

		#Option 1///////////////////////////////////////////////////////////////////
		if @joy1.get("y1").require(.15).value > 0  #Analog forward drives forward
			@sdk.set("left", .50)
			@sdk.set("right", .50)
		elsif @joy1.get("y1").require(.15).value < 0 #Analog backward drives backward
			@sdk.set("left", -.50)
			@sdk.set("right", -.50)
		end

		if @joy1.get("x1").require(.15).value > 0
			@sdk.set("left", .50)
			@sdk.set("right", -.50)
		elsif @joy1.get("x1").require(.15).value < 0
			@sdk.set("left", -.50)
			@sdk.set("right", .50)
		end

	  while @joy1.get("y1").require(.25).value != 0 && @joy1.get("x1").require(.25).value != 0
			@sdk.set("left", 0.0)
			@sdk.set("right", 0.0)
    #///////////////////////////////////////////////////////////////////////////

		#Option 2///////////////////////////////////////////////////////////////////
		@sdk.set("left", @joy1.get("y1").require(.15))
		@sdk.set("right", @joy1.get("x1").require(.15))
    #////////////////////////////////////////////////////////////////////////////

			if @speed_boost
				if @joy1.get("y1").require(.15).value != 0 && @joy1.get("x1").require(.15).value != 0
					@sdk.set("left", 0.0)
					@sdk.set("right", 0.0)
				end

				#Forward Backward
				if @joy1.get("y1").require(.15).value > 0  #Analog forward drives forward
					@sdk.set("left", 1.0)
					@sdk.set("right", 1.0)
				elsif @joy1.get("y1").require(.15).value < 0 #Analog backward drives backward
					@sdk.set("left", -1.0)
					@sdk.set("right", -1.0)
				end

				#Turning
				if @joy1.get("x1").require(.15).value > 0 #Analog right point turns right
					@sdk.set("left", 1.0)
					@sdk.set("right", -1.0)
				elsif @joy1.get("x1").require(.15).value < 0 #Analog left point turns left
					@sdk.set("left", -1.0)
					@sdk.set("right", 1.0)
				end
			end


	end

	#Method: destroy//////////////////////////////////////////////////////////////
	#
	# Called when this Sphere is destroyed.
	#
	# In FTC, this method should be used to safely shut down your robot after
	# a match ends.
	#
	def destroy
        # Your shutdown code goes here.
	end
end
