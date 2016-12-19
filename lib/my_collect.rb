def my_collect(collection)
  i=0
  returned_array=[]
  while i<collection.length
    returned_array.push(yield collection[i])
    i+=1
  end
  returned_array
end

my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) do |name|
  name.split(" ").first
end
