class CashRegister
<<<<<<< HEAD
  attr_accessor :total, :discount, :last, :last_cost
=======
  attr_accessor :total, :discount
>>>>>>> c99b39bda2815c299e2e66ae897d779c3bf67b4b
  attr_reader :list

  def initialize(disc = 0)
    @total = 0
    @discount = disc
    @list = []
<<<<<<< HEAD
    @last = []
  end

  def add_item(item, cost, qt = 1)
    qt.times do
      @list << item
      @last << item
    end
    cost *= qt
    @last_cost = cost
=======
  end

  def add_item(item, cost, qt = 0)
    @list << item
    if qt != 0
      cost *= qt
    end
>>>>>>> c99b39bda2815c299e2e66ae897d779c3bf67b4b
    @total += cost
  end

  def apply_discount
    @total *= 0.01*(100-@discount)
<<<<<<< HEAD
    if discount != 0
      return "After the discount, the total comes to $#{@total.truncate}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @list
  end

  def void_last_transaction
    @total -= @last_cost
    if @last.length == 1
      @list.delete(last)
    else
      @last.each {|x| @list.delete(x)}
    end
=======
>>>>>>> c99b39bda2815c299e2e66ae897d779c3bf67b4b
  end
end
