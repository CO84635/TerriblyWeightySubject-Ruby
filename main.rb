class Converter
  def to_pounds(ounces)
    pounds = ounces / 16.0
    formatted_pounds = format("%.4f", pounds)

    if pounds == 1
      formatted_pounds + " lb"
    else
      formatted_pounds + " lbs"
    end
  end
  
  def to_pounds_and_ounces(ounces)
    pounds = ounces / 16
    remaining_ounces = ounces % 16

    pound_unit = pounds == 1 ? pounds.to_s + " lb" : pounds.to_s + " lbs"
    pound_unit + " " + remaining_ounces.to_s + " oz"
  end
end

converter = Converter.new
puts "Converting 0 ounces to pounds: " + converter.to_pounds(0)
puts "Converting 16 ounces to pounds: " + converter.to_pounds(16)
puts "Converting 18 ounces to pounds and ounces: " + converter.to_pounds_and_ounces(18)
puts "Converting 36 ounces to pounds and ounces: " + converter.to_pounds_and_ounces(36)
