array = [1, 2, 3, 4, 5, 6]

arr[2]    #=> 3
arr[100]  #=> nil

# negative indices start counting from the end, with -1 being the last element
arr[-3]   #=> 4

# a pair of arguments (start and length)
arr[2, 3] #=> [3, 4, 5]

# range
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]

arr.first #=> 1
arr.last  #=> 6

# return the first n elements of an array, use take
arr.take(3) #=> [1, 2, 3]

# drop does the opposite of take, by returning the elements after n elements have been dropped
arr.drop(3) #=> [4, 5, 6]

################################################################################################

browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']

browsers.length #=> 5

browsers.empty? #=> false

browsers.include?('Konqueror') #=> false

################################## ADD ################################################

arr = [1, 2, 3, 4]

# add to end of array
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]

# add to beginning of array
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]

# add a new element to an array at any position
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

# also insert multiple values at once
arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]

################################ REMOVE ##############################################

arr = [1, 2, 3, 4, 5, 6]

# remove last value in array
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]

# remove first value in array
arr.shift #=> 1
arr #=> [2, 3, 4, 5]

# delete an element at a particular index
arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]


arr = [1, 2, 2, 3]

# delete a particular element anywhere in an array, use delete
arr.delete(2) #=> 2
arr #=> [1,3]

# remove nil values from an array with compact
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]

arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]

# methods that end in ! indicate that the method will modify the object it's called on
arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, 'bar', 7, 'baz']

# remove duplicate elements from an array
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq! #=> [2, 5, 6, 556, 8, 9, 0, 123]
arr = [2, 5, 6, 556, 8, 9, 0, 123]

########################### ITERATION #####################################################

# Array has an each method, which defines what elements should be iterated over and how
# this operation leaves the array unchanged

arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
# prints: -9 -8 -7 -6 -5
arr => [1, 2, 3, 4, 5]

# useful iterator is reverse_each which will iterate over the elements in the array in reverse order
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each { |word| str += "#{word} " }
p str #=> "sixth fifth fourth third second first "

# The map method can be used to create a new array based on the original array, 
# but with the values modified by the supplied block
arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
arr                   #=> [1, 2, 3, 4, 5]

arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
arr                   #=> [1, 4, 9, 16, 25]


##################### SELECTING ITEMS FROM ARRAY ##############################################

#non destructive 
arr = [1, 2, 3, 4, 5, 6]
arr.select { |a| a > 3 }     #=> [4, 5, 6]
arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]
arr.drop_while { |a| a < 4 } #=> [4, 5, 6]
arr                          #=> [1, 2, 3, 4, 5, 6]

# destructive
# select! and reject! are the corresponding destructive methods to select and reject
# Similar to select vs. reject, 
# delete_if and keep_if have the exact opposite result when supplied with the same block


arr.delete_if { |a| a < 4 } #=> [4, 5, 6]
arr                         #=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
arr.keep_if { |a| a < 4 } #=> [1, 2, 3]
arr                       #=> [1, 2, 3]





