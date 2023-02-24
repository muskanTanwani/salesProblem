require_relative 'totaltax'
include Calculator
module Receipt
  final_receipt = Array.new()
  def out_string(productname,final_price)
    final_receipt.push(productname + ": " + final_price.to_s)
  end  
  totltx = 0.00
  fip = 0.00
  set(totltx,fip)
  final_receipt.push("Sales Taxes: " + totltx.to_s)
  final_receipt.push("Total: " + fip.to_s)
  
end
