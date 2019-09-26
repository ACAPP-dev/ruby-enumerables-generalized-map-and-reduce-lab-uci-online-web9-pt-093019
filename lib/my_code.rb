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
  new = start 
  i = 0 
  while i < array.length do
    new = yield(array[i], total)
    total = new
    i += 1 
  end
  return total
end
