$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  xsum = 0
  director_data[:movies].each do |x|
    xsum += x[:worldwide_gross]
  end
  xsum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
 hash = {} 

i = 0 
total = 0 
y = 0 
while i < nds.length do 
  while y < nds[i][:movies].length do 
    total += nds[i][:movies][y][:worldwide_gross]
    y += 1
  end 
  hash[nds[i][:name]] = total 
  total = 0 
  y = 0
  i += 1
end 
hash
end
