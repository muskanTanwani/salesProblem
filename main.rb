load 'inp.rb'         # for input
load 'out.rb'      # for final output
load 'split.rb'      # for spliting kind of working as mid process
load 'totaltax.rb'

class Sales
    include SplitArray   # methods of Split.rb Module
    include Receipt      # methods of out.rb Module
    include Calculator
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
