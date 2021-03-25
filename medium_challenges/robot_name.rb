class Robot
  attr_accessor :name

  @@previous_names = []

  def initialize
    @name = generate_name
  end

  def generate_name
    new_name = ''
    loop do
      2.times { new_name << ('A'..'Z').to_a.sample }
      3.times { new_name << rand(10).to_s }
      break unless @@previous_names.include?(new_name)
      new_name = ''
    end
    @@previous_names << new_name
    new_name
  end

  def reset
    @name = generate_name
  end
end
