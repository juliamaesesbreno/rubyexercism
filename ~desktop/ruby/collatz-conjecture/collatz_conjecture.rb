# small recursive version
def collatzr(num,arr = [])   
  return arr if arr.unshift(num)[0] == 1
  num.even? ? collatzr(num / 2,arr) : collatzr(num * 3 + 1,arr)
end
# pretty looping version
def collatz(num,arr = [])
  while num != 1
    arr << num
    num = num.even? ? num / 2 : num * 3 + 1	  
  end
  arr.push(1)
end