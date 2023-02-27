require_relative 'totaltax'

module SplitArray
  include Calculator 
  def SplitingTheArray(productarr)
    final_receipt = []
    finaltax = 0.00
    finalamt = 0.00
    productarr.each do |ele|
      each_order = ele.split(" at ")
      productname = each_order[0].to_s
      price = each_order[1].to_f
      tax,amount = calculate(productname,price.to_f)
      finaltax += tax.to_f
      finalamt += amount.to_f
      final_receipt.push(productname + ": " + amount.to_s)
    end 
    final_receipt.push("Sales Taxes: " + finaltax.to_s)
    final_receipt.push("Total: " + finalamt.to_s)

    puts final_receipt
  end 
end
