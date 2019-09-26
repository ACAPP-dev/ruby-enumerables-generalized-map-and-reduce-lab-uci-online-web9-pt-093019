# Your Code Here
def map (array)
  new = []
  i = 0 
  while i < array.length do
    new.push(yield(array[i]))
    i += 1 
  end
  
  return new
end

def reduce (array, start = 0)
  total = start 
  new = 0  
  i = 0 
  while i < array.length do
    new = yield(array[i], total)
    if new == false 
      return false
    end
    total = new
    i += 1 
  end
  return total
end
