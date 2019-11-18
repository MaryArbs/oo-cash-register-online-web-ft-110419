require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :void_last_transaction, :price

  def initialize (discount=0)
    @total=0
    @discount=discount
    @void_last_transaction=void_last_transaction
    @items=[]
  end


  def add_item (title, price, quantity=1)
    @total += price * quantity
     quantity.times do
      @items << title
  end
    #adding an item to the instance variable @item array
    # @items << title
    # #changing our instance variable @total to a new total
    # @total = @total + (price*quantity)
    #whenever we set a variable, the right side of the equation always executes first, then saves the result to the left

    #@total += price
    #we can also use the += operator to add AND change a value at the same time
  end

  def apply_discount
    if @discount > 0
      @discount =  @discount/100
      @total= @total - (@total * (@discount))
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def item
    @items << item
  end

  # def void_last_transaction
  #   @total+=@void_last_transaction
  # end


  end
