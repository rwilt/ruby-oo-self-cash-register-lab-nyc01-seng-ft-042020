
#solved, then re-wrote because i didnt  use "self" at all at first. 

class CashRegister
    attr_accessor :total
    attr_accessor :discount
    attr_reader :items
    attr_accessor :last_transaction

    def initialize(discount = 0)
        @total = 0.00
        @discount = discount
        @items = []
      
    end

    def add_item(name, price, quantity = 1.00)
        
          if quantity
            #using concat adds the item n number of times
            self.items.concat([name]*quantity)
            price = (price * quantity)
            @last_transaction = price
            @total += price
        else 
            self.items.push(name)
           @last_transaction = price
           self.total += price
        end 
    end


    def items 
        @items
    end

    def total
        @total
    end

    def apply_discount
        if self.discount != 0
        self.total = @total * (100 - @discount) / 100
        return  "After the discount, the total comes to $#{self.total.to_i}."
        elsif self.discount == 0
        return "There is no discount to apply."
        end
    end

#create last_transaction attr_accessor to track the last transaction
# this is done in the add_item method. each time i add an item,
#it becomes the last transaction

def void_last_transaction
self.total = @total - @last_transaction

end

end
