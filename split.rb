require_relative totaltax.rb
include Calculator

module SplitArray
  def SplitingTheArray(productarr)
    productarr.each do |ele|
    each_order = ele.split("at")
    price = each_order[1]
    productname = each_order[0]
    calculate(productname,price)
    end 
  end 
end
