def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)
  str.split(" ").collect! do |element|
    if dictionary[element.downcase] == nil
      element
    else
      element = dictionary[element.downcase]
    end
  end.join(" ")
end

def bulk_tweet_shortener(array_str)
  array_str.each do |str|
    puts word_substituter(str)
  end
end

public 

def selective_tweet_shortener(str)
  if str.chars.count > 140
    word_substituter(str) 
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    word_substituter(str)[0..136] + "..."
  else
    str
  end
end
