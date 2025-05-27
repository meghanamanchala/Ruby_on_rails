def generate_bill(amount:, discount: 0, tax: 0.18)
  discounted_amount = amount - (amount * discount)
  total = discounted_amount + (discounted_amount * tax)
  puts "Subtotal: ₹#{amount}"
  puts "Discount: ₹#{amount * discount}"
  puts "Tax (#{(tax * 100).to_i}%): ₹#{discounted_amount * tax}"
  puts "Total to pay: ₹#{total.round(2)}"
end

puts "Full Price Billing"
generate_bill(amount: 1000)

puts "\nWith 10% Discount"
generate_bill(amount: 1000, discount: 0.10)

puts "\nWith 15% Discount and Custom Tax"
generate_bill(amount: 1000, discount: 0.15, tax: 0.05)
