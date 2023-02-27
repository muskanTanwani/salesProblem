module Calculator
  def calculate(productname,price)
    @tax_products = ["book","chocolate","pills"]

    tax_percentage = 0.00

    tax = 0.00

    tax_percentage = 5.00 if productname.include?'imported'

    if !(@tax_products.any?{|word| productname.include?(word)})
      tax_percentage += 10.00
    end
    
    if(tax_percentage > 0.00)
      tax = (price * tax_percentage)/100.00
      tax = tax.round(2)
    end

    final_price = tax + price
    final_price = final_price.round(2)
    return tax, final_price
  end  
end 
