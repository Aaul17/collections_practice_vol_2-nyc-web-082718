def begins_with_r(array)
  array.all? do |word|
    word.chr == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  new_hash = Hash.new(0)

  array.each do |x|
    new_hash[x] += 1
  end
  new_hash.each do |hash, num|
    hash[:count] = num
  end
  new_hash.keys
end

def merge_data(keys, data)
  keys.each do |a|
    data.each do |b|
      a.merge!(b[a[:first_name]])
    end
  end
end

def find_cool(cool)
  cool.select do |word|
    if word.has_value?("cool")
      word
    end
  end
end

def organize_schools(schools)
  hash = Hash.new

  schools.each do |school, location|
    location.each do |key, value|
      if hash[value] == nil
        hash[value] = [school]
      else
        hash[value] << school
      end
    end
  end
  return hash
end
