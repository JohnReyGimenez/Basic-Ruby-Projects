


module Prints 
  def prints(sound)
    print sound
  end
end


class Object 
  include Prints
end

New_object = Object.new
New_object.prints("gay")