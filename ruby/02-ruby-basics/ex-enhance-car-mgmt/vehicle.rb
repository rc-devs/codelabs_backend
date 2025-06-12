
  class Vehicle 
    attr_accessor :make, :model, :color
    def initialize(make, model, color)
      @make = make
      @model = model
      @color = color
    end

    def make #getter
      @make
    end

    def make=(make) #setter (still confused)
      @make = make
    end

     def model 
      @model
    end

    def model=(model) 
      @model = model
    end

    def color 
      @color
    end

    def color=(color) 
      @color = color
    end

    def return_details
      return print "This vehicle is a #{color} #{make} #{model}"
    end
  end

=begin   vehicle = Vehicle.new("Honda", "Accord", "Yellow")

  vehicle.return_details =end
