class Sensor < Alicorn::Sphere

  def create
    @sdk = getSphere("AndroidFTC")

  end

  def update
    @sdk.set("left", Alicorn::Vector.new(0.5))
    @sdk.set("right", Alicorn::Vector.new(0.5))

    while true

    if @sdk.get("Touch") >= Alicorn::Vector.new(0.5)
      @sdk.set("left", Alicorn::Vector.zero)
      @sdk.set("right", Alicorn::Vector.zero)
    end

     if @sdk.get("Light") >= Alicorn::Vector.new(0.5)
       @sdk.set("left", Alicorn::Vector.new(0.5))
       @sdk.set("right", Alicorn::Vector.new(0.3))

     elsif @sdk.get("Light") < Alicorn::Vector.new(0.5)
       @sdk.set("left", Alicorn::Vector.new(0.3))
       @sdk.set("right", Alicorn::Vector.new(0.5))
     end

   end

  end
