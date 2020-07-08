# @param {Integer} n
# @return {Integer}

def integer_break(n)  
  product = 1;
  if n == 3
      return 2
  elsif n == 2
      return 1
  end
  
  while n > 0 do
      if n > 4
          n -= 3
          product *= 3
      else
          product *= n
          n = 0
      end
  end
  product 
end