def substrings(substring, dictionary)
  substring = substring.downcase
  dictionary.reduce(Hash.new(0)) do |result, word|
    word = word.downcase
    result[word] += 1 if substring.include?(word)
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
result = substrings("Howdy partner, sit down! How's it going?", dictionary)

puts result