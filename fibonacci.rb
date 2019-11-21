#def recursive_fib(n)
  #if n < 2
    #return n
  #else
    #recursive_fib(n-1) + recursive_fib(n - 2)
  #end
#end

#p recursive_fib(10)

def recursive_fib(n)
  n.times.each_with_object([0,1]) {
    |num, obj| obj << obj[-2] + obj[-1]

  }

end
puts recursive_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
 
end
