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
  total = 0 
  new = 0 
  i = 0 
  while start < array.length do
    new = yield(array[start], total)
    total = new
    start += 1 
  end
  return total
end
