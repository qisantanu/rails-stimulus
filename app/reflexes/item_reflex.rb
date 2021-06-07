# frozen_string_literal: true

class ItemReflex < ApplicationReflex
  def increment(step = 1)
    #@count = element.dataset[:count].to_i + element.dataset[:step].to_i
    session[:count] = session[:count].to_i + step
  end

  def decrement(step = 1)
    session[:count] = session[:count].to_i - step
  end

  def create
    @item = Item.create(items_params)
    binding.pry
  end

  def delete
    id = element.dataset[:item_id]
    Item.find(id).destroy
  end

  def items_params
    params.require(:item).permit(:name)
  end
end
