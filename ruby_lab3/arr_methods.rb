#!/usr/bin/ruby
# Name: Johnathan Torres
# File: arr_methods.rb
# Desc: Problem set about Ruby Array methods

require "open-uri"

the_one_string = ""
the_url = "http://hills.ccsf.edu/~dputnam/the_one_string.cgi"

open(the_url) do |content|
    content.each_line {|line| the_one_string += line}
end

# create a variable and assign it every char of the_one_string as an array
an_array = the_one_string.scan(/./m)

# assigning an empty array to the variables arr1, and arr2.
arr1 = []
arr2 = []

# start from 0 and loop to 1/3 length of an_array and add all those elements into arr1 Array and add the remaining to the arr2 Array.
(0..an_array.length).each do |i|
    if i < an_array.length / 3
        arr1.push(an_array[i])
    elsif i >= (an_array.length / 3) && i < an_array.length
        arr2.push(an_array[i])
    end
end

puts "#1\tcontents of arr1\n\n#{arr1}\n--------------------------------"
puts
puts "#2\tcontents of arr2\n\n#{arr2}\n--------------------------------"
puts
puts "#3\tset of common elements\n\n#{arr1 & arr2}\n--------------------------------"
puts
puts "#4\tdifference between arr1 and arr2\n\n#{arr1 - arr2}\n--------------------------------"
puts
puts "#5\tdifference between arr2 and arr1\n\n#{arr2 - arr1}\n--------------------------------"
puts
puts "#6\telements at the end of arr1 and arr2\n\nlast element of arr1:\n#{arr1.at(-1).inspect}\nlast element of arr2:\n#{arr2.at(-1).inspect}\n--------------------------------"
puts
puts "#7\telements at the beginning of arr1 and arr2\n\nbeginning element of arr1:\n#{arr1.slice(0).inspect}\nbeginning element of arr2:\n#{arr2.slice(0).inspect}\n--------------------------------"
puts
new_arry = []
arr2.each do |i|
    if i == arr2.find {|i| /\s/ =~ i}
        next
    else
        new_arry.push(i.upcase)
    end
end
puts "#8\tarr2 upcased with white space characters removed, inserted into arr1 at index 100.\n\n#{arr1.insert(100,new_arry)}\n--------------------------------"
puts

# Destructively flatten arr1
arr1.flatten!
arr1.each do |i| 
    if arr1.find {|x| /\s/ =~ i}
        arr1.delete(i) 
    end
end
puts "#9\tFlatten arr1, then remove any white space characters\n\n#{arr1
}\n--------------------------------"
puts

# Destructively collect arr1 and add '!'
arr1.collect! {|i| i + "!"}
puts "#10\tadd an exclaimation point to each element to arr1\n\n#{arr1}\n--------------------------------"
puts
puts "#11\tremove the last element of an array, then print the removed element and then arr1\n\npoped last element\n\n\"#{poped_ele = arr1.pop}\"\n\nthe remains of arr1:\n\n#{arr1}\n--------------------------------"
puts
puts "#12\tInsert the element popped off in previous step into position 0 of the array:
\n#{arr1.unshift(poped_ele)}\n--------------------------------"
puts
arr1.select! do |i|
    if arr1.find {|x| /^[A-Z]!/ =~ i}
        i
    end
end
puts "#13\tremove all of the elements that do not contain uppercase letters.\n\n#{arr1}\n--------------------------------"
