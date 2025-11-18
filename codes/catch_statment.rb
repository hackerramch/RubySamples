class Student
  attr_accessor :name, :number
  def initialize(name = "", number = 1)
    @name = name
    @number = number
  end
end

stdent1 = Student.new("mito", 10)

#こんな使い方するか？引数で渡したほうが良いのでは？
catch stdent1 do
  1.upto(9) do |i|
    1.upto(9) do |j|
      result = i * j
      stdent1.number = result
      throw stdent1 if stdent1.number > 30
      print result
    end
    puts
  end
end
puts
p stdent1.number

stdent2 = Student.new("kaede", 2)

#こっちのほうがまだよいか？
stdent2.number = catch :find do
  1.upto(9) do |i|
    1.upto(9) do |j|
      result = i * j * 2
      throw :find, 20 if result > 30
      print result
    end
    puts
  end
end
puts
p stdent2.number