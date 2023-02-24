module Calculator 
  tax_products = ["book","chocolate","pills"]
  salesTax = 0.00
  total = 0.00
  def calculate(productname,price)
    tax_percentage = 0.00
    product_last_name = productname[-1]
    if(productname.include? "imported")
      tax_percentage = 5.00
    end
    if !tax_products.include? product_last_name
      tax_percentage += 10.00
    end
    tax = (price * tax_percentage)/100.00
    tax = tax.round(1)
    salesTax += tax
    final_price = tax + price
    #final_price = final_price.round(1)
    out_string(productname,final_price)
    total += final_price
  end  
  def set(totl,fip)
    totl = salesTax
    fip = total
  end
end 
