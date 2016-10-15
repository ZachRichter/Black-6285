class RoboDrive < Alicorn::Sphere

#@teleOp = true

  def create

    @sdk = getSphere("AndroidFTC")
    @joy1 = @sdk.get("gamepad_1")

    @toggle = false
    end

    def update
      @left = @joy1.get("y1")
      @right = @joy1.get("y2")

      if @joy.get("a") == true
        @toggle = true
      elsif @joy.get("b") == true
        @toggle = false
      end

      if @toggle == false
        if @joy1.get("y1") > Alicorn::Vector.new(0.3)
          @sdk.set("left", Alicorn::Vector.new(0.5))

        elsif @joy1.get("y1") <= Alicorn::Vector.new(0.3).invert()
          @sdk.set("left", Alicorn::Vector.new(0.5).invert())
        end

        if @joy1.get("y2") > Alicorn::Vector.new(0.3)
          @sdk.set("right", Alicorn::Vector.new(0.5))

        elsif @joy1.get("y2") <= Alicorn::Vector.new(0.3).invert()
          @sdk.set("right", Alicorn::Vector.new(0.5).invert())
        end
      end

      if @toggle == true
        if @joy1.get("y1") > Alicorn::Vector.new(0.3)
          @sdk.set("left", Alicorn::Vector.new(0.2))

        elsif @joy1.get("y1") <= Alicorn::Vector.new(0.3).invert()
          @sdk.set("left", Alicorn::Vector.new(0.2).invert())
        end

        if @joy1.get("y2") > Alicorn::Vector.new(0.3)
          @sdk.set("right", Alicorn::Vector.new(0.2))

        elsif @joy1.get("y2") <= Alicorn::Vector.new(0.3).invert()
          @sdk.set("right", Alicorn::Vector.new(0.2).invert())
        end
      end
    end
  end
