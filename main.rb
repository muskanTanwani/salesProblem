load 'inp.rb'         
require_relative 'split'

class Sales
  include SplitArray        
  attr_accessor :productarr
  def initialize
    @productarr = []
  end

  def run 
    obj = User.new
    obj.takinginput
    @productarr = obj.get           # array in which product list is
    SplitingTheArray(@productarr)
  end 
end
Sales.new.run

