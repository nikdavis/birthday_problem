# Usage:
# ruby birthday_probability.rb <prob_of_collison> <#_possible_outcomes> <hash_limit(optional)>
# float float int

num = denom = ARGV[1].to_f
p_prime = 1 -ARGV[0].to_f
p = 1.0
i = 0
i_limit = ARGV.length == 3 ? ARGV[2].to_i : nil

while(p > p_prime) do
  p *= num/denom
  num -= 1
  i += 1
  if(i_limit != nil && i >= i_limit)
    break
  end
end

puts "#{1-p} chance of collision with #{i} hashes."