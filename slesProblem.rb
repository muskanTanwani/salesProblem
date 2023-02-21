puts "Total number of Purchases : "
n = gets
n = n.chomp
n = n.to_i
puts "Please enter your order list one by one : "
arr = Array.new()

for value in 1..n
  order = gets
  order = order.chomp
  arr.push(order)
end

ans = Array.new()

salesTax = 0.00

Total = 0.00

arr.each do |ele|
  tax = 0.00

  resstr = ""

  ansstr = ele.split(" ")

  if ele.include? "imported"
    tax += 5.00
  end
  if (ele.include? "music") || (ele.include? "perfume")
    tax += 10.00
  end
  
  len = ansstr.length()

  for ind in 0..len-3
    resstr += ansstr[ind].to_s
    resstr += " "
  end

  price = ansstr[len-1].to_f

  resstr += ": "

  if tax > 0.00
    tax = (tax * price) / 100.00
    tax = tax.round(2)
  end
  finPrice = price + tax           # to add the price and tax calaculated 

  finPrice = finPrice.round(2)     # to round of the final price of product 

  resstr += finPrice.to_s          # to push the final price into resstr string 

  ans.push(resstr)                 # to push the final resstr string of purchase into array

  salesTax += tax                  # to calculate final tax
  
  Total += finPrice.to_i           # to claculate final total

end

ans.push("Sales Tax: " + salesTax.to_s)
ans.push("Total: " + Total.to_s)

ans.each do |ele|
puts ele.to_s
end
