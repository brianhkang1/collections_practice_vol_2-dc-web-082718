def begins_with_r(array)
  counter = 0
  array.each do |element|
    if element[0] == "r"
      counter += 1 
    end
  end
  if counter == array.length
    true 
  else 
    false 
  end 
end

def contain_a(array)
  ans = []
  array.each do |element|
    if element.include?("a")
      ans.push(element)
    end 
  end 
  ans
end

def first_wa(array)
  array.each do |element|
    if element[0..1] == "wa"
      return element
    end 
  end 
end 

def remove_non_strings(array)
  array.delete_if {|element| element.class != String } 
end 

def count_elements(array)
  array.group_by(&:itself)
 .collect{|key, value| key.merge(count: value.length)}
end 

def merge_data(keys, data)
  array1 = []
  array2 = []
  
  keys.each do |element|
    array1.push(element)
  end 
  
  data.each do |element|
    element.each do |name, name_info|
      array2.push(name_info)
    end
  end 
  
  array1[0].merge!(array2[0])
  array1[1].merge!(array2[1])
  array1
end 

def find_cool(array)
  arr = []
  array.each do |element|
    element.each do |key, value|
      if value == "cool" && value.length == 4
        arr.push(element)
      end 
    end
  end
  arr
end

def organize_schools(hash)
  hash.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end 