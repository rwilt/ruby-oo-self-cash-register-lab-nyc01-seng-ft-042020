
# class Person

#     attr_accessor :age
  
#     def initialize(age = 0)
#       @age = age 
#     end 
  
#     def birthday
#       self.age += 1
#     end
#   end

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
            @items.concat([name]*quantity)
            price = (price * quantity)
            @last_transaction = price
            @total += price
        else 
            @items.push(name)
           @last_transaction = price
          @total += price
        end 
    end


    def items 
        @items
    end

    def total
        @total
    end

    def apply_discount
        if @discount != 0
        @total = @total * (100 - @discount) / 100
        return  "After the discount, the total comes to $#{@total.to_i}."
        elsif @discount == 0
        return "There is no discount to apply."
        end
    end

#create last_transaction attr_accessor to track the last transaction
# this is done in the add_item method. each time i add an item,
#it becomes the last transaction

def void_last_transaction
@total = @total - @last_transaction

end

end
