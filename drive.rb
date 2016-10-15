class Drive < Alicorn::Sphere

  def create

    @sdk = getSphere("AndroidFTC")
    @joy1 = @sdk.get("gamepad_1")
    @joy2 = @sdk.get("gamepad_2")

=begin
Motor Controller 1 (AH00QHOY) = left and arm
Motor Controller 2 (AL00VI0D) = rack
Motor Controller 3 (AL00VCPW) = lift and right
Servo Controller 1 (AL00VTNH) = Sleft and Sright
=end

  end # end create

#------------------------------------------------------------------------------

  def update

    @left = @joy1.get("y1").invert()
    @right = @joy1.get("y2")

    @sdk.set("left", @left)
    @sdk.set("right", @right)

#  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    if @joy1.get("dpad_up") == true
  @sdk.set("lift", Stratos::Vector.new(0.2).invert())

    end

    if @joy1.get("dpad_down") == true
  @sdk.set("lift", Stratos::Vector.zero)

    end

#===============================================================================

    if @joy1.get("a") == true && @joy1.get("b") == false
      @sdk.set("arm", Stratos::Vector.new(0.45))

    elsif @joy1.get("b") == true && @joy1.get("a") == false
      @sdk.set("arm", Stratos::Vector.new(0.3).invert())

    else
      @sdk.set("arm", Stratos::Vector.zero)

    end #end if
#===============================================================================


    if @joy1.get("x") == true && @joy1.get("y") == false
      @sdk.set("rack", Stratos::Vector.new(0.95))

    elsif @joy1.get("y") == true && @joy1.get("x") == false
      @sdk.set("rack", Stratos::Vector.new(0.25).invert())

    else
      @sdk.set("rack", Stratos::Vector.zero)

    end # end if


#===============================================================================

  end # end update

#-------------------------------------------------------------------------------

  def destroy

  end # end destroy

end
