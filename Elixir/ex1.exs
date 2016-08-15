defmodule Geometry do 
    def  area({:rectangle,w,h}) do 
        w*h 
         end 
    
    def area({:triangle,b,h}) do 
        1/2*b*h
         end
    
    def area({:circle,r}) do 
        :math.pi*r*r
             end 
end

IO.puts Geometry.area({:rectangle,2,4})

defmodule Absolute do 
    def absolute(number) when number < 0 do
        -number 
    end 
    
    def absolute(number) when number == 0 do 
        0 
    end 
    
    def absolute(number) when number > 0 do 
        number 
    end 
end 
IO.puts Absolute.absolute(-2)
IO.puts Absolute.absolute(-100)

defmodule Axiom do 
    def axiom(:add,x,y) do 
        x + y 
    end
        
    def axiom(:subtract,x,y) do 
        x - y 
    end 
    
    def axiom(:multiply,x,y) do 
        x*y
    end
    
    def axiom(:divide, x,y) do 
        x/y 
    end 
end

IO.puts Axiom.axiom(:add,2,5)
IO.puts Axiom.axiom(:multiply,2,9)
IO.puts Axiom.axiom(:subtract,3,10)
IO.puts Axiom.axiom(:divide, 7,2) 

defmodule Even_Odd do 
    def even_odd(number) when rem(number,2) == 0 do 
        IO.puts "Even"
    end 
    
    def even_odd(number) when rem(number,2) == 1 do
        IO.puts "Odd"
    end
end

IO.puts Even_Odd.even_odd(3) 
IO.puts Even_Odd.even_odd(2)


defmodule List do 
    def list(number) do 
        [number | [] ]
    end
end 

IO.puts List.list(5)


defmodule Factorial do
    def fact(0), do: 1
    def fact(1), do: 1 
    def fact(n), do: n*fact(n-1)
end 

IO.puts Factorial.fact(10)


defmodule Fibonacci do 
    def fib(0), do: 1
    def fib(1), do: 1
    def fib(n), do: fib(n-1) + fib(n-2)
end 

IO.puts Fibonacci.fib(5)

defmodule Recursion do 
    def rec(1), do: -4 
    def rec(2), do: 1
    def rec(n), do: rec(n-1) + 5
end 

IO.puts Recursion.rec(4)

defmodule Even_Odd_Recursion do 
    def even_odd_recursion(1), do: 3
    def even_odd_recursion(2), do: 15
    def even_odd_recursion(n), do: :math.pow(-1,n)*5*even_odd_recursion(n-1)
end 

IO.puts Even_Odd_Recursion.even_odd_recursion(4)

defmodule Power_Three_Recursion do 
    def power_three_recursion(1), do: 3
    def power_three_recursion(2), do: 9
    def power_three_recursion(n), do: 3*:math.pow(3,n-1)
end

IO.puts Power_Three_Recursion.power_three_recursion(4)


