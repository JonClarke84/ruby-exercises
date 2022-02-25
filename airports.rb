class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    @hangar.push(plane.type)
  end

  def take_off(plane)
    if @hangar.length < 1
      return "Error: there are no planes to take off"
    end

    if @hangar.include?(plane)
      @hangar.delete(plane)
      return plane
    else
      return "Error: plane not in hangar"
    end
  end

  def hangar_report
    if @hangar.length == 1
      "There is 1 plane in the hangar"
    else
      "There are #{ @hangar.length } planes in the hangar"
    end
  end

  def hangar_list
    @hangar
  end

end

class Plane
  def initialize(airline, model)
    @airline = airline
    @model = model
  end

  def type
    "#{@airline} #{@model}"
  end
end

heathrow = Airport.new
ba200 = Plane.new("British Airways", "Boeing 747")
ezy50 = Plane.new("easyJet", "Airbus 300")

heathrow.land(ba200)
heathrow.land(ezy50)

puts heathrow.hangar_report
puts heathrow.hangar_list