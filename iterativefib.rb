def iterative_fib(num)
  a = 0
  b = 1

  num.times do 
    temp = a
    a = b
    b = temp + b
  end

  return a

end


35.times do |num|
  result = iterative_fib(num)
    puts result
  end

  require 'benchmark'
num = 35
Benchmark.bm do |x|
 
  x.report("iterative_fib")  { iterative_fib(num)  }
end
