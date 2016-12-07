def test1
  x = 0
  z = [1,2,3]
9.times do
  p "hello"
  x +=1
  z.each do |y|
    if x == 4
      return true
    end
  end
end
end
test1
