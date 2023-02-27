class User 
  
  def initialize
    @arr = []
  end
 
  def takinginput
    puts "Total number of Purchases : "
    n = gets
    n = n.chomp
    n = n.to_i
    puts "Please enter your order list one by one : "
    for value in 1..n
      order = gets
      order = order.chomp
      @arr.push(order)
    end
  end
  def get
    @arr
  end
end

