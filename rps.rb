class String
  define_method(:beats?) do |ai|
      if (self.eql?("rock")).&(ai.eql?("scissors"))
        true
      elsif (self.eql?("paper")).&(ai.eql?("rock"))
        true
      elsif (self.eql?("scissors"))&(ai.eql?("paper"))
        true
      elsif (self.eql?(ai))
        puts "Draw"
      else
        false
    end
  end
end