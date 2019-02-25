require 'pry'

def my_find(collection)
if collection.class == Fixnum
  collection if collection % 3 == 0 && collection % 5 == 0
else
  i = 0
  arr = []
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end


my_find(1) { 1 % 3 == 0 && 1 % 5 == 0 }
