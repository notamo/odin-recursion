def fibs(n)
  return [0] if n == 0
  return [0, 1] if n == 1
  
  (2..n).reduce([0, 1]) do |acc, index|
    acc << (acc[index - 1] + acc[index - 2])
  end
end

def fibs_rec(n)
  return (0..n).to_a if n < 2
  
  prev_arr = fibs_rec(n - 1) 
  prev_arr + [prev_arr[-1] + prev_arr[-2]]
end

tc = [1, 2, 8, 24]
puts "iterative:"
tc.each { |n| puts "n=#{n}\t#{fibs(n)}" }
puts "recursive:"
tc.each { |n| puts "n=#{n}\t#{fibs_rec(n)}" }
