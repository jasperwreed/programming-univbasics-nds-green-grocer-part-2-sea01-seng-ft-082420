require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  while i < cart.length do 
    item = cart[i]
    if item[:clearance]
      item[:price] *= 0.8
    end
    i += 1
  end
  cart
  # binding.pry
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  
  new_cart = consolidate_cart(cart)
  new_cart = apply_coupons(new_cart, coupons)
  new_cart = apply_clearance(new_cart)
  
  cart_total = 0 
  new_cart.each do |item|
    cart_total += (item[:price] * item[:count])
  end
  
  if cart_total > 100 
    cart_total *= 0.9
  end
  return cart_total.round(2)
end