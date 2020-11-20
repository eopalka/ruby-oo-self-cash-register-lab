require 'pry'

class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(item, price, amount=1)
        self.total += price * amount
        amount.times do
        items.push(item)
        end
       self.last_transaction = price * amount
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        elsif 
           new_number = (discount.to_f/100)
            removed = @total * new_number
            @total -= removed.to_i
            return "After the discount, the total comes to $#{self.total}."
        end
    end

    # def apply_discount
    #     if discount != 0
    #         self.total = (total - (total * (@discount.to_f/100))).to_i
    #         "After the discount, the total comes to $#{self.total}."
    #     else
    #         "There is no discount to apply."
    #     end
    # end
    

   def void_last_transaction
       self.total -= self.last_transaction
   end
end