array=[5,7,6,2,3,4,1,9,8,0]
def bubble_sort(array)
  for i in 0..array.size
    for j in 0...(array.size-i-1)
      if array[j]>array[j+1]
        temp=array[j]
        array[j]=array[j+1]
        array[j+1]=temp
      end
    end
  end
end
def insertion_sort(array)
  for i in 1..array.size
    
end
puts array.inspect
